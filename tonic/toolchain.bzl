"""Toolchain for compiling rust stubs from tonic gRPC."""

def generated_file_stem(f):
    basename = f.rsplit("/", 1)[-1]
    basename = basename.rsplit(".", 1)[0]
    return basename.replace("-", "_").replace(".", "_")

def rust_generate_proto(
        ctx,
        protos,
        sources,
        output_dir,
        tonic_toolchain,
        rust_toolchain):
    """Generate a proto compilation action.

    Args:
      ctx: rule context.
      protos: list of paths of protos to compile.
      sources: list of proto source Files.
      output_dir: directory, relative to the package, to output the list of
        stubs.
      tonic_toolchain: the toolchain for rust-tonic generation.
      rust_toolchain: the rust toolchain for rustfmt.

    Returns: the list of generate stubs ([File])
    """
    tools = [
        tonic_toolchain.protoc,
        tonic_toolchain.tonic_code_generator,
        rust_toolchain.rustfmt,
    ]
    executable = tonic_toolchain.tonic_code_generator
    args = ctx.actions.args()

    if not protos:
        fail("Protobuf compilation requested without inputs!")
    paths = ["%s/%s" % (output_dir, generated_file_stem(i)) for i in protos.to_list()]
    outs = [ctx.actions.declare_file(path + ".rs") for path in paths]
    output_directory = outs[0].dirname

    args.add("--source")
    args.add_all(protos)
    args.add("--include", "./")
    args.add("--output", output_directory)

    ctx.actions.run(
        inputs = depset(
            transitive = [
                sources,
            ],
        ),
        outputs = outs,
        tools = tools,
        progress_message = "Generating Rust tonic stubs",
        mnemonic = "GenerateTonicGrpcSources",
        executable = executable,
        arguments = [args],
        env = {
            "PROTOC": tonic_toolchain.protoc.path,
            "PROTOC_INCLUDE": "./",
            "PATH": rust_toolchain.rustfmt.dirname,
        },
    )
    return outs

def _rust_tonic_toolchain_impl(ctx):
    return platform_common.ToolchainInfo(
        protoc = ctx.executable.protoc,
        tonic_code_generator = ctx.executable.tonic_code_generator,
        edition = ctx.attr.edition,
    )

TONIC_COMPILE_DEPS = [
    "@io_bazel_rules_rust//tonic/raze:tonic",
    "@io_bazel_rules_rust//tonic/raze:prost",
]
TONIC_RUNTIME_DEPS = [
    "@io_bazel_rules_rust//tonic/raze:tokio",
]

rust_tonic_toolchain = rule(
    _rust_tonic_toolchain_impl,
    attrs = {
        "protoc": attr.label(
            doc = "The location of the `protoc` binary. It should be an executable target.",
            executable = True,
            cfg = "host",
            default = Label("@com_google_protobuf//:protoc"),
        ),
        "tonic_code_generator": attr.label(
            doc = "The location of the Tonic code generator used to generate rust sources.",
            executable = True,
            allow_single_file = True,
            cfg = "host",
            default = Label(
                "@io_bazel_rules_rust//tonic/generator:generator",
            ),
        ),
        "edition": attr.string(
            doc = "The edition used by the generated rust source.",
            default = "2018",
        ),
    },
)
