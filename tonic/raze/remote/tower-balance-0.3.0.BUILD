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


# Unsupported target "demo" with type "example" omitted

rust_library(
    name = "tower_balance",
    crate_type = "lib",
    deps = [
        "@tonic_deps__futures_core__0_3_5//:futures_core",
        "@tonic_deps__futures_util__0_3_5//:futures_util",
        "@tonic_deps__indexmap__1_5_1//:indexmap",
        "@tonic_deps__pin_project__0_4_23//:pin_project",
        "@tonic_deps__rand__0_7_3//:rand",
        "@tonic_deps__slab__0_4_2//:slab",
        "@tonic_deps__tokio__0_2_22//:tokio",
        "@tonic_deps__tower_discover__0_3_0//:tower_discover",
        "@tonic_deps__tower_layer__0_3_0//:tower_layer",
        "@tonic_deps__tower_load__0_3_0//:tower_load",
        "@tonic_deps__tower_make__0_3_0//:tower_make",
        "@tonic_deps__tower_ready_cache__0_3_1//:tower_ready_cache",
        "@tonic_deps__tower_service__0_3_0//:tower_service",
        "@tonic_deps__tracing__0_1_19//:tracing",
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
        "log",
    ],
)

