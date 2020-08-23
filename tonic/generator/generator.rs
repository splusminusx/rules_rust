use clap::{App, Arg};
use std::panic;

fn main() -> Result<(), Box<dyn std::error::Error>> {

    panic::set_hook(Box::new(|panic_info| {
        println!("panic hook");
        println!("panic occurred {:?}", panic_info);

        if let Some(s) = panic_info.payload().downcast_ref::<&str>() {
            println!("panic occurred: {:?}", s);
        } else {
            println!("panic occurred {:?}", panic_info);
        }
    }));

    
    let matches = App::new("Tonic code generator.")
        .version(option_env!("CARGO_PKG_VERSION").unwrap_or(""))
        .about("Generates tonic grpc stubs and clients.")
        .arg(
            Arg::with_name("source")
                .short("s")
                .long("source")
                .help("Path to .proto files.")
                .takes_value(true)
                .value_name("PATH")
                .required(true)
                .min_values(1),
        )
        .arg(
            Arg::with_name("include")
                .short("i")
                .long("include")
                .help("Path to .proto includes.")
                .takes_value(true)
                .value_name("PATH")
                .required(true)
                .min_values(1),
        )
        .arg(
            Arg::with_name("output")
                .short("o")
                .long("output")
                .help("Output path.")
                .takes_value(true)
                .value_name("PATH")
                .required(true),
        )
        .get_matches();

    let sources: Vec<_> = matches.values_of("source").unwrap().collect();
    let includes: Vec<_> = matches.values_of("include").unwrap().collect();
    let output = matches.value_of("output").unwrap();

    println!("Output: {}", output);

    let source_paths: Vec<_> = sources.iter().map(|src| {
        println!("Source: {}", src);
        std::path::Path::new(src)
    }).collect();
    let include_paths: Vec<_> = includes.iter().map(|src| {
        println!("Include: {}", src);
        std::path::Path::new(src)
    }).collect();
    let output_path = std::path::Path::new(&output);

    let builder = tonic_build::configure().out_dir(output_path);

    builder.compile(
        &source_paths,
        &include_paths,
    )?;

    Ok(())
}
