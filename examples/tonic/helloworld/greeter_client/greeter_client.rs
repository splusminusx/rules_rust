use std::env;
use std::str::FromStr;

use helloworld_proto::helloworld::greeter_client::GreeterClient;
use helloworld_proto::helloworld::HelloRequest;
use helloworld_proto::common::Config;

fn parse_args() -> (String, u16) {
    let mut name = "world".to_owned();
    let mut port = 50051;
    for arg in env::args().skip(1) {
        if arg.starts_with("-p=") {
            port = u16::from_str(&arg[3..]).unwrap()
        } else {
            name = arg.to_owned();
        }
    }
    (name, port)
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let (name, port) = parse_args();
    let mut client = GreeterClient::connect(format!("http://[::1]:{}", port)).await?;

    let request = tonic::Request::new(HelloRequest {
        name: name.into(),
        config: Some(Config::default()),
    });

    let response = client.say_hello(request).await?;

    println!("RESPONSE={:?}", response);

    Ok(())
}