load("@bazel_skylib//:bzl_library.bzl", "bzl_library")
load("//rust:rust.bzl", "rust_binary")
load(":toolchain.bzl", "rust_tonic_toolchain")

package(default_visibility = ["//visibility:public"])

toolchain_type(
    name = "toolchain",
)

toolchain(
    name = "default-tonic-toolchain",
    toolchain = ":default-tonic-toolchain-impl",
    toolchain_type = "@io_bazel_rules_rust//tonic:toolchain",
)

rust_tonic_toolchain(
    name = "default-tonic-toolchain-impl",
)

bzl_library(
    name = "rules",
    srcs = glob(["**/*.bzl"]),
)
