load("@io_bazel_rules_rust//tonic:tonic.bzl", "rust_tonic_library")
load("@io_bazel_rules_rust//rust:rust.bzl", "rust_library")
load("@io_bazel_rules_rust//rust:rust.bzl", "rust_binary")

package(default_visibility = ["//proto:__subpackages__"])

rust_tonic_library(
    name = "common_tonic_rust",
    deps = ["//tonic:common"],
)

rust_library(
    name = "common_lib",
    srcs = ["lib.rs"],
    deps = [":common_tonic_rust"],
)

rust_binary(
    name = "common_bin",
    srcs = ["main.rs"],
    deps = [
        ":common_lib",
        ":common_tonic_rust",
    ],
)
