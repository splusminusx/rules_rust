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


# Unsupported target "body" with type "bench" omitted
# Unsupported target "client" with type "example" omitted
# Unsupported target "client" with type "test" omitted
# Unsupported target "client_json" with type "example" omitted
# Unsupported target "connect" with type "bench" omitted
# Unsupported target "echo" with type "example" omitted
# Unsupported target "end_to_end" with type "bench" omitted
# Unsupported target "gateway" with type "example" omitted
# Unsupported target "hello" with type "example" omitted
# Unsupported target "http_proxy" with type "example" omitted

rust_library(
    name = "hyper",
    crate_type = "lib",
    deps = [
        "@tonic_deps__bytes__0_5_6//:bytes",
        "@tonic_deps__futures_channel__0_3_5//:futures_channel",
        "@tonic_deps__futures_core__0_3_5//:futures_core",
        "@tonic_deps__futures_util__0_3_5//:futures_util",
        "@tonic_deps__h2__0_2_6//:h2",
        "@tonic_deps__http__0_2_1//:http",
        "@tonic_deps__http_body__0_3_1//:http_body",
        "@tonic_deps__httparse__1_3_4//:httparse",
        "@tonic_deps__itoa__0_4_6//:itoa",
        "@tonic_deps__pin_project__0_4_23//:pin_project",
        "@tonic_deps__socket2__0_3_12//:socket2",
        "@tonic_deps__time__0_1_43//:time",
        "@tonic_deps__tokio__0_2_22//:tokio",
        "@tonic_deps__tower_service__0_3_0//:tower_service",
        "@tonic_deps__tracing__0_1_19//:tracing",
        "@tonic_deps__want__0_3_0//:want",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.13.7",
    tags = ["cargo-raze"],
    crate_features = [
        "default",
        "runtime",
        "socket2",
        "stream",
        "tcp",
    ],
)

# Unsupported target "integration" with type "test" omitted
# Unsupported target "multi_server" with type "example" omitted
# Unsupported target "params" with type "example" omitted
# Unsupported target "pipeline" with type "bench" omitted
# Unsupported target "send_file" with type "example" omitted
# Unsupported target "server" with type "bench" omitted
# Unsupported target "server" with type "test" omitted
# Unsupported target "single_threaded" with type "example" omitted
# Unsupported target "state" with type "example" omitted
# Unsupported target "tower_client" with type "example" omitted
# Unsupported target "tower_server" with type "example" omitted
# Unsupported target "upgrades" with type "example" omitted
# Unsupported target "web_api" with type "example" omitted