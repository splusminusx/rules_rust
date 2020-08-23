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
  "notice", # MIT from expression "MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "clap",
    crate_type = "lib",
    deps = [
        "@tonic_code_generator__ansi_term__0_11_0//:ansi_term",
        "@tonic_code_generator__atty__0_2_14//:atty",
        "@tonic_code_generator__bitflags__1_2_1//:bitflags",
        "@tonic_code_generator__strsim__0_8_0//:strsim",
        "@tonic_code_generator__textwrap__0_11_0//:textwrap",
        "@tonic_code_generator__unicode_width__0_1_8//:unicode_width",
        "@tonic_code_generator__vec_map__0_8_2//:vec_map",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2015",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "2.33.3",
    tags = ["cargo-raze"],
    crate_features = [
        "ansi_term",
        "atty",
        "color",
        "default",
        "strsim",
        "suggestions",
        "vec_map",
    ],
)

