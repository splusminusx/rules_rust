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
  "notice", # MIT from expression "MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "mio",
    crate_type = "lib",
    deps = [
        "@tonic_deps__cfg_if__0_1_10//:cfg_if",
        "@tonic_deps__iovec__0_1_4//:iovec",
        "@tonic_deps__libc__0_2_76//:libc",
        "@tonic_deps__log__0_4_11//:log",
        "@tonic_deps__net2__0_2_34//:net2",
        "@tonic_deps__slab__0_4_2//:slab",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2015",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.6.22",
    tags = ["cargo-raze"],
    crate_features = [
        "default",
        "with-deprecated",
    ],
)

# Unsupported target "test" with type "test" omitted
