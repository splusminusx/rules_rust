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
  "notice", # Apache-2.0 from expression "Apache-2.0 OR MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "signal_hook_registry",
    crate_type = "lib",
    deps = [
        "@tonic_deps__arc_swap__0_4_7//:arc_swap",
        "@tonic_deps__libc__0_2_76//:libc",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2015",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "1.2.1",
    tags = ["cargo-raze"],
    crate_features = [
    ],
)

# Unsupported target "unregister_signal" with type "test" omitted
# Unsupported target "version" with type "test" omitted
