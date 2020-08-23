load("//rust:rust.bzl", "rust_binary")

rust_binary(
    name = "generator",
    srcs = [
        "generator.rs",
    ],
    edition = "2018",
    visibility = ["//visibility:public"],
    deps = [
        "//tonic/generator/raze:clap",
        "//tonic/generator/raze:tonic_build",
    ],
)
