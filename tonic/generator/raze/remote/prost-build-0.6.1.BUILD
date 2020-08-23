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
  "notice", # Apache-2.0 from expression "Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)


# Unsupported target "build-script-build" with type "custom-build" omitted

rust_library(
    name = "prost_build",
    crate_type = "lib",
    deps = [
        "@tonic_code_generator__bytes__0_5_6//:bytes",
        "@tonic_code_generator__heck__0_3_1//:heck",
        "@tonic_code_generator__itertools__0_8_2//:itertools",
        "@tonic_code_generator__log__0_4_11//:log",
        "@tonic_code_generator__multimap__0_8_1//:multimap",
        "@tonic_code_generator__petgraph__0_5_1//:petgraph",
        "@tonic_code_generator__prost__0_6_1//:prost",
        "@tonic_code_generator__prost_types__0_6_1//:prost_types",
        "@tonic_code_generator__tempfile__3_1_0//:tempfile",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.6.1",
    tags = ["cargo-raze"],
    crate_features = [
    ],
)

