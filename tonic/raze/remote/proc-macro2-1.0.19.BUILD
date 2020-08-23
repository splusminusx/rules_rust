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
  "notice", # MIT from expression "MIT OR Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)


# Unsupported target "build-script-build" with type "custom-build" omitted
# Unsupported target "comments" with type "test" omitted
# Unsupported target "features" with type "test" omitted
# Unsupported target "marker" with type "test" omitted

rust_library(
    name = "proc_macro2",
    crate_type = "lib",
    deps = [
        "@tonic_deps__unicode_xid__0_2_1//:unicode_xid",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    rustc_flags = [
        "--cap-lints=allow",
        "--cfg=u128",
        "--cfg=use_proc_macro",
        "--cfg=wrap_proc_macro",
    ],
    version = "1.0.19",
    tags = ["cargo-raze"],
    crate_features = [
        "default",
        "proc-macro",
    ],
)

# Unsupported target "test" with type "test" omitted
