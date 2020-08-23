"""
cargo-raze crate build file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""
package(default_visibility = [
  # Public for visibility by "@raze__crate__version//" targets.
  #
  # Prefer access through "//tonic/generator/raze", which limits external
  # visibility to explicit Cargo.toml dependencies.
  "//visibility:public",
])

licenses([
  "notice", # MIT from expression "MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "tonic_build",
    crate_type = "lib",
    deps = [
        "@tonic_code_generator__proc_macro2__1_0_19//:proc_macro2",
        "@tonic_code_generator__prost_build__0_6_1//:prost_build",
        "@tonic_code_generator__quote__1_0_7//:quote",
        "@tonic_code_generator__syn__1_0_38//:syn",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.3.0",
    tags = ["cargo-raze"],
    crate_features = [
        "default",
        "prost",
        "prost-build",
        "rustfmt",
        "transport",
    ],
)

