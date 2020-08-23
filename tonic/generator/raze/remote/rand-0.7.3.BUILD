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


# Unsupported target "generators" with type "bench" omitted
# Unsupported target "misc" with type "bench" omitted
# Unsupported target "monte-carlo" with type "example" omitted
# Unsupported target "monty-hall" with type "example" omitted

rust_library(
    name = "rand",
    crate_type = "lib",
    deps = [
        "@tonic_code_generator__getrandom__0_1_14//:getrandom",
        "@tonic_code_generator__libc__0_2_74//:libc",
        "@tonic_code_generator__rand_chacha__0_2_2//:rand_chacha",
        "@tonic_code_generator__rand_core__0_5_1//:rand_core",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.7.3",
    tags = ["cargo-raze"],
    crate_features = [
        "alloc",
        "default",
        "getrandom",
        "getrandom_package",
        "libc",
        "std",
    ],
    aliases = {
        "@tonic_code_generator__getrandom__0_1_14//:getrandom": "getrandom_package",
    },
)

# Unsupported target "seq" with type "bench" omitted
# Unsupported target "weighted" with type "bench" omitted
