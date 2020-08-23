load("@rules_proto//proto:defs.bzl", "proto_library")
load("@io_bazel_rules_rust//tonic:tonic.bzl", "rust_tonic_library")
load("@io_bazel_rules_rust//rust:rust.bzl", "rust_test")

proto_library(
    name = "helloworld",
    srcs = ["helloworld.proto"],
    deps = ["//tonic:common"],
)

rust_tonic_library(
    name = "helloworld_proto",
    visibility = ["//tonic/helloworld:__subpackages__"],
    deps = [":helloworld"],
)

rust_test(
    name = "helloworld_test",
    srcs = ["helloworld_test.rs"],
    data = [
        "//tonic/helloworld/greeter_client",
        "//tonic/helloworld/greeter_server",
    ],
    edition = "2018",
    deps = ["@io_bazel_rules_rust//tools/runfiles"],
)
