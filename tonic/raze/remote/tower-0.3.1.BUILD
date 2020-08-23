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


# Unsupported target "builder" with type "test" omitted

rust_library(
    name = "tower",
    crate_type = "lib",
    deps = [
        "@tonic_deps__futures_core__0_3_5//:futures_core",
        "@tonic_deps__tower_buffer__0_3_0//:tower_buffer",
        "@tonic_deps__tower_discover__0_3_0//:tower_discover",
        "@tonic_deps__tower_layer__0_3_0//:tower_layer",
        "@tonic_deps__tower_limit__0_3_1//:tower_limit",
        "@tonic_deps__tower_load_shed__0_3_0//:tower_load_shed",
        "@tonic_deps__tower_retry__0_3_0//:tower_retry",
        "@tonic_deps__tower_service__0_3_0//:tower_service",
        "@tonic_deps__tower_timeout__0_3_0//:tower_timeout",
        "@tonic_deps__tower_util__0_3_1//:tower_util",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.3.1",
    tags = ["cargo-raze"],
    crate_features = [
        "default",
        "full",
        "log",
    ],
)
