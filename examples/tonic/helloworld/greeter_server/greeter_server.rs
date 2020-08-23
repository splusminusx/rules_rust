// Copyright 2018 The Bazel Authors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

  
use tonic::{transport::Server, Request, Response, Status};

use std::env;
use std::str::FromStr;

use helloworld_proto::helloworld::greeter_server::{Greeter, GreeterServer};
use helloworld_proto::helloworld::{HelloReply, HelloRequest};

#[derive(Default)]
pub struct MyGreeter {}

#[tonic::async_trait]
impl Greeter for MyGreeter {
    async fn say_hello(
        &self,
        request: Request<HelloRequest>,
    ) -> Result<Response<HelloReply>, Status> {
        let name =  request.into_inner().name;
        println!("greeting request from {}", name);

        let reply = HelloReply {
            message: format!("Hello {}!", name),
        };
        Ok(Response::new(reply))
    }
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let port = u16::from_str(&env::args().nth(1).unwrap_or_else(|| "50051".to_owned())).unwrap();
    let addr = format!("[::1]:{}", port).parse().unwrap();
    let greeter = MyGreeter::default();

    //println!("greeter server started on port {}", port);

    Server::builder()
        .add_service(GreeterServer::new(greeter))
        .serve(addr)
        .await?;

    Ok(())
}