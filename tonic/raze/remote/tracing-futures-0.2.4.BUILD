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


# Unsupported target "std_future" with type "test" omitted
# Unsupported target "support" with type "test" omitted

rust_library(
    name = "tracing_futures",
    crate_type = "lib",
    deps = [
        "@tonic_deps__pin_project__0_4_23//:pin_project",
        "@tonic_deps__tracing__0_1_19//:tracing",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.2.4",
    tags = ["cargo-raze"],
    crate_features = [
        "default",
        "pin-project",
        "std",
        "std-future",
    ],
)
