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


# Unsupported target "build-script-build" with type "custom-build" omitted
# Unsupported target "file" with type "bench" omitted
# Unsupported target "rust" with type "bench" omitted

rust_library(
    name = "syn",
    crate_type = "lib",
    deps = [
        "@tonic_code_generator__proc_macro2__1_0_19//:proc_macro2",
        "@tonic_code_generator__quote__1_0_7//:quote",
        "@tonic_code_generator__unicode_xid__0_2_1//:unicode_xid",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "1.0.38",
    tags = ["cargo-raze"],
    crate_features = [
        "clone-impls",
        "default",
        "derive",
        "extra-traits",
        "parsing",
        "printing",
        "proc-macro",
        "quote",
    ],
)

# Unsupported target "test_asyncness" with type "test" omitted
# Unsupported target "test_attribute" with type "test" omitted
# Unsupported target "test_derive_input" with type "test" omitted
# Unsupported target "test_expr" with type "test" omitted
# Unsupported target "test_generics" with type "test" omitted
# Unsupported target "test_grouping" with type "test" omitted
# Unsupported target "test_ident" with type "test" omitted
# Unsupported target "test_item" with type "test" omitted
# Unsupported target "test_iterators" with type "test" omitted
# Unsupported target "test_lit" with type "test" omitted
# Unsupported target "test_meta" with type "test" omitted
# Unsupported target "test_parse_buffer" with type "test" omitted
# Unsupported target "test_parse_stream" with type "test" omitted
# Unsupported target "test_pat" with type "test" omitted
# Unsupported target "test_path" with type "test" omitted
# Unsupported target "test_precedence" with type "test" omitted
# Unsupported target "test_receiver" with type "test" omitted
# Unsupported target "test_round_trip" with type "test" omitted
# Unsupported target "test_shebang" with type "test" omitted
# Unsupported target "test_should_parse" with type "test" omitted
# Unsupported target "test_size" with type "test" omitted
# Unsupported target "test_stmt" with type "test" omitted
# Unsupported target "test_token_trees" with type "test" omitted
# Unsupported target "test_ty" with type "test" omitted
# Unsupported target "test_visibility" with type "test" omitted
# Unsupported target "zzz_stable" with type "test" omitted
