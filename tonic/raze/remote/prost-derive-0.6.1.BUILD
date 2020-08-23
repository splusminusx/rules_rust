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
  "notice", # Apache-2.0 from expression "Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "prost_derive",
    crate_type = "proc-macro",
    deps = [
        "@tonic_deps__anyhow__1_0_32//:anyhow",
        "@tonic_deps__itertools__0_8_2//:itertools",
        "@tonic_deps__proc_macro2__1_0_19//:proc_macro2",
        "@tonic_deps__quote__1_0_7//:quote",
        "@tonic_deps__syn__1_0_39//:syn",
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

