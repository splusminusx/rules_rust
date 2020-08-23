"""
cargo-raze crate build file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""
package(default_visibility = [
  # Public for visibility by "@raze__crate__version//" targets.
  #
  # Prefer access through "//tonic/raze", which limits external
  # visibility to explicit Cargo.toml dependencies.
  "//visibility:public",
])

licenses([
  "notice", # MIT from expression "MIT OR Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "miow",
    crate_type = "lib",
    deps = [
        "@tonic_deps__kernel32_sys__0_2_2//:kernel32_sys",
        "@tonic_deps__net2__0_2_34//:net2",
        "@tonic_deps__winapi__0_2_8//:winapi",
        "@tonic_deps__ws2_32_sys__0_2_1//:ws2_32_sys",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2015",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.2.1",
    tags = ["cargo-raze"],
    crate_features = [
    ],
)
