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


# Unsupported target "bench" with type "bench" omitted
# Unsupported target "build-script-build" with type "custom-build" omitted
# Unsupported target "equivalent_trait" with type "test" omitted
# Unsupported target "faststring" with type "bench" omitted

rust_library(
    name = "indexmap",
    crate_type = "lib",
    deps = [
        "@tonic_deps__hashbrown__0_8_2//:hashbrown",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    rustc_flags = [
        "--cap-lints=allow",
        "--cfg=has_std",
    ],
    version = "1.5.1",
    tags = ["cargo-raze"],
    crate_features = [
    ],
)

# Unsupported target "macros_full_path" with type "test" omitted
# Unsupported target "quick" with type "test" omitted
# Unsupported target "tests" with type "test" omitted
