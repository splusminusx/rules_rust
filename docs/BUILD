package(default_visibility = ["//visibility:private"])

load("@io_bazel_stardoc//stardoc:stardoc.bzl", "stardoc")
load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

bzl_library(
    name = "all_deps",
    srcs = [
        "@bazel_tools//tools:bzl_srcs",
        "@bazel_version//:def.bzl",
    ],
    deps = [
        "@bazel_skylib//lib:versions",
        "@io_bazel_rules_rust//bindgen:rules",
        "@io_bazel_rules_rust//cargo:rules",
        "@io_bazel_rules_rust//proto:rules",
        "@io_bazel_rules_rust//rust:rules",
        "@io_bazel_rules_rust//wasm_bindgen:rules",
        "@rules_proto//proto:rules",
    ],
)

PAGES = {
    "rust": ["rust_library", "rust_binary", "rust_benchmark", "rust_test"],
    "rust_doc": ["rust_doc", "rust_doc_test"],
    "rust_proto": ["rust_proto_toolchain","rust_proto_library", "rust_grpc_library"],
    "rust_bindgen": ["rust_bindgen_toolchain","rust_bindgen_library", "rust_bindgen"],
    "rust_wasm_bindgen": ["rust_wasm_bindgen_toolchain","rust_wasm_bindgen"],
    "cargo_build_script": ["cargo_build_script"],
}

[
    genrule(
        name = "%s_header_vm" % k,
        outs = ["%s_header.vm" % k],
        cmd = ">$@ echo '# Rust rules\n%s'" % "\n".join(
            ["* [{rule}](#{rule})".format(rule=v) for v in PAGES[k]]),
        output_to_bindir = True,
    )
    for k in PAGES.keys()
]

[
    stardoc(
        name = "%s_md" % k,
        out = "%s.md" % k,
        input = ":all.bzl",
        symbol_names = PAGES[k],
        header_template = ":%s_header_vm" % k,
        deps = [":all_deps"],
    )
    for k in PAGES.keys()
]
genrule(
        name = "flatten_header_vm",
        outs = ["flatten_header.vm"],
        cmd = ">$@ echo '# Rust rules\n\n%s\n'" % "\n".join(
            ["* [{rule}](#{rule})".format(rule=v) for k in PAGES.keys() for v in PAGES[k]]),
        output_to_bindir = True,
)
stardoc(
    name = "flatten_md",
    out  = "flatten.md",
    header_template = ":flatten_header_vm",
    input = ":all.bzl",
    symbol_names = [symbol for k in PAGES.keys() for symbol in PAGES[k]],
    deps = [":all_deps"],
)