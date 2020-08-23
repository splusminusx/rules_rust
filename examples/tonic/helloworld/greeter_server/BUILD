load("@io_bazel_rules_rust//rust:rust.bzl", "rust_binary")
load("@io_bazel_rules_rust//tonic:toolchain.bzl", "TONIC_COMPILE_DEPS", "TONIC_RUNTIME_DEPS")

rust_binary(
    name = "greeter_server",
    srcs = ["greeter_server.rs"],
    edition = "2018",
    visibility = ["//tonic/helloworld:__subpackages__"],
    deps = [
        "//tonic/helloworld:helloworld_proto",
    ] + TONIC_COMPILE_DEPS + TONIC_RUNTIME_DEPS,
)
