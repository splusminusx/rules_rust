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
  "notice", # MIT from expression "MIT OR Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)


# Unsupported target "dijkstra" with type "bench" omitted
# Unsupported target "graph" with type "test" omitted
# Unsupported target "graphmap" with type "test" omitted
# Unsupported target "iso" with type "bench" omitted
# Unsupported target "iso" with type "test" omitted
# Unsupported target "matrix_graph" with type "bench" omitted
# Unsupported target "ograph" with type "bench" omitted

rust_library(
    name = "petgraph",
    crate_type = "lib",
    deps = [
        "@tonic_code_generator__fixedbitset__0_2_0//:fixedbitset",
        "@tonic_code_generator__indexmap__1_5_1//:indexmap",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.5.1",
    tags = ["cargo-raze"],
    crate_features = [
    ],
)

# Unsupported target "quickcheck" with type "test" omitted
# Unsupported target "stable_graph" with type "bench" omitted
# Unsupported target "stable_graph" with type "test" omitted
# Unsupported target "unionfind" with type "bench" omitted
# Unsupported target "unionfind" with type "test" omitted