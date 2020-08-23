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


# Unsupported target "decode" with type "bench" omitted

rust_library(
    name = "tonic",
    crate_type = "lib",
    deps = [
        "@tonic_deps__async_stream__0_2_1//:async_stream",
        "@tonic_deps__base64__0_12_3//:base64",
        "@tonic_deps__bytes__0_5_6//:bytes",
        "@tonic_deps__futures_core__0_3_5//:futures_core",
        "@tonic_deps__futures_util__0_3_5//:futures_util",
        "@tonic_deps__http__0_2_1//:http",
        "@tonic_deps__http_body__0_3_1//:http_body",
        "@tonic_deps__hyper__0_13_7//:hyper",
        "@tonic_deps__percent_encoding__2_1_0//:percent_encoding",
        "@tonic_deps__pin_project__0_4_23//:pin_project",
        "@tonic_deps__prost__0_6_1//:prost",
        "@tonic_deps__tokio__0_2_22//:tokio",
        "@tonic_deps__tokio_util__0_3_1//:tokio_util",
        "@tonic_deps__tower__0_3_1//:tower",
        "@tonic_deps__tower_balance__0_3_0//:tower_balance",
        "@tonic_deps__tower_load__0_3_0//:tower_load",
        "@tonic_deps__tower_make__0_3_0//:tower_make",
        "@tonic_deps__tower_service__0_3_0//:tower_service",
        "@tonic_deps__tracing__0_1_19//:tracing",
        "@tonic_deps__tracing_futures__0_2_4//:tracing_futures",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    proc_macro_deps = [
        "@tonic_deps__async_trait__0_1_38//:async_trait",
        "@tonic_deps__prost_derive__0_6_1//:prost_derive",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.3.1",
    tags = ["cargo-raze"],
    crate_features = [
        "async-trait",
        "codegen",
        "default",
        "hyper",
        "prost",
        "prost-derive",
        "prost1",
        "tokio",
        "tower",
        "tower-balance",
        "tower-load",
        "tracing-futures",
        "transport",
    ],
    aliases = {
        "@tonic_deps__prost__0_6_1//:prost": "prost1",
    },
)

