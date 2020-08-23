load("//tonic/generator/raze:crates.bzl", _generator_deps = "tonic_code_generator_fetch_remote_crates")
load("//tonic/raze:crates.bzl", _library_deps = "tonic_deps_fetch_remote_crates")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rust_tonic_repositories():
    """Declare dependencies needed for proto compilation."""
    maybe(
        http_archive,
        name = "com_google_protobuf",
        sha256 = "758249b537abba2f21ebc2d02555bf080917f0f2f88f4cbe2903e0e28c4187ed",
        strip_prefix = "protobuf-3.10.0",
        urls = [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v3.10.0.tar.gz",
            "https://github.com/protocolbuffers/protobuf/archive/v3.10.0.tar.gz",
        ],
    )

    maybe(
        http_archive,
        name = "rules_python",
        strip_prefix = "rules_python-0.0.1",
        type = "zip",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_python/archive/0.0.1.zip",
            "https://github.com/bazelbuild/rules_python/archive/0.0.1.zip",
        ],
        sha256 = "f73c0cf51c32c7aaeaf02669ed03b32d12f2d92e1b05699eb938a75f35a210f4",
    )

    _generator_deps()
    _library_deps()

    # Register toolchains
    native.register_toolchains(
        "@io_bazel_rules_rust//tonic:default-tonic-toolchain",
    )
