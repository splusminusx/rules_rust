extern crate runfiles;

use std::io::BufRead;
use std::io::BufReader;
use std::process::{Child, Command, Stdio};

use runfiles::Runfiles;

struct ServerInfo {
    process: Child,
    port: u16,
}

macro_rules! assert_contains {
    ($s: expr, $e: expr) => {
        assert!(
            $s.find($e).is_some(),
            format!("'{}' not found in '{}'", $e, $s)
        );
    };
}

impl ServerInfo {
    fn new() -> ServerInfo {
        let r = Runfiles::create().unwrap();
        let port: u16 = 50052;
        let c =
            Command::new(r.rlocation("examples/tonic/helloworld/greeter_server/greeter_server"))
                .arg(format!("{}", port))
                .stdout(Stdio::piped())
                .spawn()
                .expect("Unable to start server");
        
        println!("Started server on port {}", port);
        ServerInfo {
            process: c,
            port,
        }
    }

    fn run_client_impl(&self, arg: Option<String>) -> String {
        let r = Runfiles::create().unwrap();

        let mut cmd0 =
            Command::new(r.rlocation("examples/tonic/helloworld/greeter_client/greeter_client"));
        let cmd = cmd0.arg(format!("-p={}", self.port));

        let output = if let Some(s) = arg { cmd.arg(s) } else { cmd }
            .output()
            .expect("Unable to start client");
        assert!(output.status.success());
        String::from_utf8(output.stdout).expect("Non UTF-8 output from the client")
    }

    fn run_client(&self) -> String {
        self.run_client_impl(None)
    }
    fn run_client_with_arg(&self, arg: &str) -> String {
        self.run_client_impl(Some(arg.to_owned()))
    }

    fn expect_log(&mut self, log: &str) {
        let mut reader =
            BufReader::new(self.process.stdout.as_mut().expect("Failed to open stdout"));
        let mut line = String::new();
        reader
            .read_line(&mut line)
            .expect("Failed to read line from the server");
        assert_contains!(line, log);
    }

    fn destroy(&mut self) {
        self.process.kill().unwrap();
    }
}

#[test]
fn test_client_server() {
    let mut s = ServerInfo::new();
    assert_contains!(s.run_client(), "message: \"Hello world!\"");
    s.expect_log("greeting request from world");
    assert_contains!(s.run_client_with_arg("thou"), "message: \"Hello thou!\"");
    s.expect_log("greeting request from thou");
    s.destroy();
}
