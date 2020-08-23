"""
cargo-raze crate workspace functions

DO NOT EDIT! Replaced on runs of cargo-raze
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def _new_http_archive(name, **kwargs):
    if not native.existing_rule(name):
        http_archive(name = name, **kwargs)

def _new_git_repository(name, **kwargs):
    if not native.existing_rule(name):
        new_git_repository(name = name, **kwargs)

def tonic_deps_fetch_remote_crates():
    _new_http_archive(
        name = "tonic_deps__anyhow__1_0_32",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/anyhow/anyhow-1.0.32.crate",
        type = "tar.gz",
        sha256 = "6b602bfe940d21c130f3895acd65221e8a61270debe89d628b9cb4e3ccb8569b",
        strip_prefix = "anyhow-1.0.32",
        build_file = Label("//tonic/raze/remote:anyhow-1.0.32.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__arc_swap__0_4_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/arc-swap/arc-swap-0.4.7.crate",
        type = "tar.gz",
        sha256 = "4d25d88fd6b8041580a654f9d0c581a047baee2b3efee13275f2fc392fc75034",
        strip_prefix = "arc-swap-0.4.7",
        build_file = Label("//tonic/raze/remote:arc-swap-0.4.7.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__async_stream__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/async-stream/async-stream-0.2.1.crate",
        type = "tar.gz",
        sha256 = "22068c0c19514942eefcfd4daf8976ef1aad84e61539f95cd200c35202f80af5",
        strip_prefix = "async-stream-0.2.1",
        build_file = Label("//tonic/raze/remote:async-stream-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__async_stream_impl__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/async-stream-impl/async-stream-impl-0.2.1.crate",
        type = "tar.gz",
        sha256 = "25f9db3b38af870bf7e5cc649167533b493928e50744e2c30ae350230b414670",
        strip_prefix = "async-stream-impl-0.2.1",
        build_file = Label("//tonic/raze/remote:async-stream-impl-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__async_trait__0_1_38",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/async-trait/async-trait-0.1.38.crate",
        type = "tar.gz",
        sha256 = "6e1a4a2f97ce50c9d0282c1468816208588441492b40d813b2e0419c22c05e7f",
        strip_prefix = "async-trait-0.1.38",
        build_file = Label("//tonic/raze/remote:async-trait-0.1.38.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__autocfg__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/autocfg/autocfg-1.0.1.crate",
        type = "tar.gz",
        sha256 = "cdb031dd78e28731d87d56cc8ffef4a8f36ca26c38fe2de700543e627f8a464a",
        strip_prefix = "autocfg-1.0.1",
        build_file = Label("//tonic/raze/remote:autocfg-1.0.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__base64__0_12_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/base64/base64-0.12.3.crate",
        type = "tar.gz",
        sha256 = "3441f0f7b02788e948e47f457ca01f1d7e6d92c693bc132c22b087d3141c03ff",
        strip_prefix = "base64-0.12.3",
        build_file = Label("//tonic/raze/remote:base64-0.12.3.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__bitflags__1_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bitflags/bitflags-1.2.1.crate",
        type = "tar.gz",
        sha256 = "cf1de2fe8c75bc145a2f577add951f8134889b4795d47466a54a5c846d691693",
        strip_prefix = "bitflags-1.2.1",
        build_file = Label("//tonic/raze/remote:bitflags-1.2.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__bytes__0_5_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bytes/bytes-0.5.6.crate",
        type = "tar.gz",
        sha256 = "0e4cec68f03f32e44924783795810fa50a7035d8c8ebe78580ad7e6c703fba38",
        strip_prefix = "bytes-0.5.6",
        build_file = Label("//tonic/raze/remote:bytes-0.5.6.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__cfg_if__0_1_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cfg-if/cfg-if-0.1.10.crate",
        type = "tar.gz",
        sha256 = "4785bdd1c96b2a846b2bd7cc02e86b6b3dbf14e7e53446c4f54c92a361040822",
        strip_prefix = "cfg-if-0.1.10",
        build_file = Label("//tonic/raze/remote:cfg-if-0.1.10.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__either__1_6_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/either/either-1.6.0.crate",
        type = "tar.gz",
        sha256 = "cd56b59865bce947ac5958779cfa508f6c3b9497cc762b7e24a12d11ccde2c4f",
        strip_prefix = "either-1.6.0",
        build_file = Label("//tonic/raze/remote:either-1.6.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__fnv__1_0_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fnv/fnv-1.0.7.crate",
        type = "tar.gz",
        sha256 = "3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1",
        strip_prefix = "fnv-1.0.7",
        build_file = Label("//tonic/raze/remote:fnv-1.0.7.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__fuchsia_zircon__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-zircon/fuchsia-zircon-0.3.3.crate",
        type = "tar.gz",
        sha256 = "2e9763c69ebaae630ba35f74888db465e49e259ba1bc0eda7d06f4a067615d82",
        strip_prefix = "fuchsia-zircon-0.3.3",
        build_file = Label("//tonic/raze/remote:fuchsia-zircon-0.3.3.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__fuchsia_zircon_sys__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-zircon-sys/fuchsia-zircon-sys-0.3.3.crate",
        type = "tar.gz",
        sha256 = "3dcaa9ae7725d12cdb85b3ad99a434db70b468c09ded17e012d86b5c1010f7a7",
        strip_prefix = "fuchsia-zircon-sys-0.3.3",
        build_file = Label("//tonic/raze/remote:fuchsia-zircon-sys-0.3.3.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__futures_channel__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-channel/futures-channel-0.3.5.crate",
        type = "tar.gz",
        sha256 = "f366ad74c28cca6ba456d95e6422883cfb4b252a83bed929c83abfdbbf2967d5",
        strip_prefix = "futures-channel-0.3.5",
        build_file = Label("//tonic/raze/remote:futures-channel-0.3.5.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__futures_core__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-core/futures-core-0.3.5.crate",
        type = "tar.gz",
        sha256 = "59f5fff90fd5d971f936ad674802482ba441b6f09ba5e15fd8b39145582ca399",
        strip_prefix = "futures-core-0.3.5",
        build_file = Label("//tonic/raze/remote:futures-core-0.3.5.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__futures_sink__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-sink/futures-sink-0.3.5.crate",
        type = "tar.gz",
        sha256 = "3f2032893cb734c7a05d85ce0cc8b8c4075278e93b24b66f9de99d6eb0fa8acc",
        strip_prefix = "futures-sink-0.3.5",
        build_file = Label("//tonic/raze/remote:futures-sink-0.3.5.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__futures_task__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-task/futures-task-0.3.5.crate",
        type = "tar.gz",
        sha256 = "bdb66b5f09e22019b1ab0830f7785bcea8e7a42148683f99214f73f8ec21a626",
        strip_prefix = "futures-task-0.3.5",
        build_file = Label("//tonic/raze/remote:futures-task-0.3.5.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__futures_util__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-util/futures-util-0.3.5.crate",
        type = "tar.gz",
        sha256 = "8764574ff08b701a084482c3c7031349104b07ac897393010494beaa18ce32c6",
        strip_prefix = "futures-util-0.3.5",
        build_file = Label("//tonic/raze/remote:futures-util-0.3.5.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__getrandom__0_1_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/getrandom/getrandom-0.1.14.crate",
        type = "tar.gz",
        sha256 = "7abc8dd8451921606d809ba32e95b6111925cd2906060d2dcc29c070220503eb",
        strip_prefix = "getrandom-0.1.14",
        build_file = Label("//tonic/raze/remote:getrandom-0.1.14.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__h2__0_2_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/h2/h2-0.2.6.crate",
        type = "tar.gz",
        sha256 = "993f9e0baeed60001cf565546b0d3dbe6a6ad23f2bd31644a133c641eccf6d53",
        strip_prefix = "h2-0.2.6",
        build_file = Label("//tonic/raze/remote:h2-0.2.6.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__hashbrown__0_8_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hashbrown/hashbrown-0.8.2.crate",
        type = "tar.gz",
        sha256 = "e91b62f79061a0bc2e046024cb7ba44b08419ed238ecbd9adbd787434b9e8c25",
        strip_prefix = "hashbrown-0.8.2",
        build_file = Label("//tonic/raze/remote:hashbrown-0.8.2.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__hermit_abi__0_1_15",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hermit-abi/hermit-abi-0.1.15.crate",
        type = "tar.gz",
        sha256 = "3deed196b6e7f9e44a2ae8d94225d80302d81208b1bb673fd21fe634645c85a9",
        strip_prefix = "hermit-abi-0.1.15",
        build_file = Label("//tonic/raze/remote:hermit-abi-0.1.15.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__http__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/http/http-0.2.1.crate",
        type = "tar.gz",
        sha256 = "28d569972648b2c512421b5f2a405ad6ac9666547189d0c5477a3f200f3e02f9",
        strip_prefix = "http-0.2.1",
        build_file = Label("//tonic/raze/remote:http-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__http_body__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/http-body/http-body-0.3.1.crate",
        type = "tar.gz",
        sha256 = "13d5ff830006f7646652e057693569bfe0d51760c0085a071769d142a205111b",
        strip_prefix = "http-body-0.3.1",
        build_file = Label("//tonic/raze/remote:http-body-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__httparse__1_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/httparse/httparse-1.3.4.crate",
        type = "tar.gz",
        sha256 = "cd179ae861f0c2e53da70d892f5f3029f9594be0c41dc5269cd371691b1dc2f9",
        strip_prefix = "httparse-1.3.4",
        build_file = Label("//tonic/raze/remote:httparse-1.3.4.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__hyper__0_13_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hyper/hyper-0.13.7.crate",
        type = "tar.gz",
        sha256 = "3e68a8dd9716185d9e64ea473ea6ef63529252e3e27623295a0378a19665d5eb",
        strip_prefix = "hyper-0.13.7",
        build_file = Label("//tonic/raze/remote:hyper-0.13.7.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__indexmap__1_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/indexmap/indexmap-1.5.1.crate",
        type = "tar.gz",
        sha256 = "86b45e59b16c76b11bf9738fd5d38879d3bd28ad292d7b313608becb17ae2df9",
        strip_prefix = "indexmap-1.5.1",
        build_file = Label("//tonic/raze/remote:indexmap-1.5.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__iovec__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/iovec/iovec-0.1.4.crate",
        type = "tar.gz",
        sha256 = "b2b3ea6ff95e175473f8ffe6a7eb7c00d054240321b84c57051175fe3c1e075e",
        strip_prefix = "iovec-0.1.4",
        build_file = Label("//tonic/raze/remote:iovec-0.1.4.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__itertools__0_8_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/itertools/itertools-0.8.2.crate",
        type = "tar.gz",
        sha256 = "f56a2d0bc861f9165be4eb3442afd3c236d8a98afd426f65d92324ae1091a484",
        strip_prefix = "itertools-0.8.2",
        build_file = Label("//tonic/raze/remote:itertools-0.8.2.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__itoa__0_4_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/itoa/itoa-0.4.6.crate",
        type = "tar.gz",
        sha256 = "dc6f3ad7b9d11a0c00842ff8de1b60ee58661048eb8049ed33c73594f359d7e6",
        strip_prefix = "itoa-0.4.6",
        build_file = Label("//tonic/raze/remote:itoa-0.4.6.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__kernel32_sys__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/kernel32-sys/kernel32-sys-0.2.2.crate",
        type = "tar.gz",
        sha256 = "7507624b29483431c0ba2d82aece8ca6cdba9382bff4ddd0f7490560c056098d",
        strip_prefix = "kernel32-sys-0.2.2",
        build_file = Label("//tonic/raze/remote:kernel32-sys-0.2.2.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__lazy_static__1_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lazy_static/lazy_static-1.4.0.crate",
        type = "tar.gz",
        sha256 = "e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646",
        strip_prefix = "lazy_static-1.4.0",
        build_file = Label("//tonic/raze/remote:lazy_static-1.4.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__libc__0_2_76",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/libc/libc-0.2.76.crate",
        type = "tar.gz",
        sha256 = "755456fae044e6fa1ebbbd1b3e902ae19e73097ed4ed87bb79934a867c007bc3",
        strip_prefix = "libc-0.2.76",
        build_file = Label("//tonic/raze/remote:libc-0.2.76.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__log__0_4_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log/log-0.4.11.crate",
        type = "tar.gz",
        sha256 = "4fabed175da42fed1fa0746b0ea71f412aa9d35e76e95e59b192c64b9dc2bf8b",
        strip_prefix = "log-0.4.11",
        build_file = Label("//tonic/raze/remote:log-0.4.11.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__memchr__2_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/memchr/memchr-2.3.3.crate",
        type = "tar.gz",
        sha256 = "3728d817d99e5ac407411fa471ff9800a778d88a24685968b36824eaf4bee400",
        strip_prefix = "memchr-2.3.3",
        build_file = Label("//tonic/raze/remote:memchr-2.3.3.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__mio__0_6_22",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mio/mio-0.6.22.crate",
        type = "tar.gz",
        sha256 = "fce347092656428bc8eaf6201042cb551b8d67855af7374542a92a0fbfcac430",
        strip_prefix = "mio-0.6.22",
        build_file = Label("//tonic/raze/remote:mio-0.6.22.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__mio_named_pipes__0_1_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mio-named-pipes/mio-named-pipes-0.1.7.crate",
        type = "tar.gz",
        sha256 = "0840c1c50fd55e521b247f949c241c9997709f23bd7f023b9762cd561e935656",
        strip_prefix = "mio-named-pipes-0.1.7",
        build_file = Label("//tonic/raze/remote:mio-named-pipes-0.1.7.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__mio_uds__0_6_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mio-uds/mio-uds-0.6.8.crate",
        type = "tar.gz",
        sha256 = "afcb699eb26d4332647cc848492bbc15eafb26f08d0304550d5aa1f612e066f0",
        strip_prefix = "mio-uds-0.6.8",
        build_file = Label("//tonic/raze/remote:mio-uds-0.6.8.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__miow__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/miow/miow-0.2.1.crate",
        type = "tar.gz",
        sha256 = "8c1f2f3b1cf331de6896aabf6e9d55dca90356cc9960cca7eaaf408a355ae919",
        strip_prefix = "miow-0.2.1",
        build_file = Label("//tonic/raze/remote:miow-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__miow__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/miow/miow-0.3.5.crate",
        type = "tar.gz",
        sha256 = "07b88fb9795d4d36d62a012dfbf49a8f5cf12751f36d31a9dbe66d528e58979e",
        strip_prefix = "miow-0.3.5",
        build_file = Label("//tonic/raze/remote:miow-0.3.5.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__net2__0_2_34",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/net2/net2-0.2.34.crate",
        type = "tar.gz",
        sha256 = "2ba7c918ac76704fb42afcbbb43891e72731f3dcca3bef2a19786297baf14af7",
        strip_prefix = "net2-0.2.34",
        build_file = Label("//tonic/raze/remote:net2-0.2.34.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__num_cpus__1_13_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num_cpus/num_cpus-1.13.0.crate",
        type = "tar.gz",
        sha256 = "05499f3756671c15885fee9034446956fff3f243d6077b91e5767df161f766b3",
        strip_prefix = "num_cpus-1.13.0",
        build_file = Label("//tonic/raze/remote:num_cpus-1.13.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__percent_encoding__2_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/percent-encoding/percent-encoding-2.1.0.crate",
        type = "tar.gz",
        sha256 = "d4fd5641d01c8f18a23da7b6fe29298ff4b55afcccdf78973b24cf3175fee32e",
        strip_prefix = "percent-encoding-2.1.0",
        build_file = Label("//tonic/raze/remote:percent-encoding-2.1.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__pin_project__0_4_23",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pin-project/pin-project-0.4.23.crate",
        type = "tar.gz",
        sha256 = "ca4433fff2ae79342e497d9f8ee990d174071408f28f726d6d83af93e58e48aa",
        strip_prefix = "pin-project-0.4.23",
        build_file = Label("//tonic/raze/remote:pin-project-0.4.23.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__pin_project_internal__0_4_23",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pin-project-internal/pin-project-internal-0.4.23.crate",
        type = "tar.gz",
        sha256 = "2c0e815c3ee9a031fdf5af21c10aa17c573c9c6a566328d99e3936c34e36461f",
        strip_prefix = "pin-project-internal-0.4.23",
        build_file = Label("//tonic/raze/remote:pin-project-internal-0.4.23.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__pin_project_lite__0_1_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pin-project-lite/pin-project-lite-0.1.7.crate",
        type = "tar.gz",
        sha256 = "282adbf10f2698a7a77f8e983a74b2d18176c19a7fd32a45446139ae7b02b715",
        strip_prefix = "pin-project-lite-0.1.7",
        build_file = Label("//tonic/raze/remote:pin-project-lite-0.1.7.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__pin_utils__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pin-utils/pin-utils-0.1.0.crate",
        type = "tar.gz",
        sha256 = "8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184",
        strip_prefix = "pin-utils-0.1.0",
        build_file = Label("//tonic/raze/remote:pin-utils-0.1.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__ppv_lite86__0_2_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ppv-lite86/ppv-lite86-0.2.9.crate",
        type = "tar.gz",
        sha256 = "c36fa947111f5c62a733b652544dd0016a43ce89619538a8ef92724a6f501a20",
        strip_prefix = "ppv-lite86-0.2.9",
        build_file = Label("//tonic/raze/remote:ppv-lite86-0.2.9.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__proc_macro2__1_0_19",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro2/proc-macro2-1.0.19.crate",
        type = "tar.gz",
        sha256 = "04f5f085b5d71e2188cb8271e5da0161ad52c3f227a661a3c135fdf28e258b12",
        strip_prefix = "proc-macro2-1.0.19",
        build_file = Label("//tonic/raze/remote:proc-macro2-1.0.19.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__prost__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/prost/prost-0.6.1.crate",
        type = "tar.gz",
        sha256 = "ce49aefe0a6144a45de32927c77bd2859a5f7677b55f220ae5b744e87389c212",
        strip_prefix = "prost-0.6.1",
        build_file = Label("//tonic/raze/remote:prost-0.6.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__prost_derive__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/prost-derive/prost-derive-0.6.1.crate",
        type = "tar.gz",
        sha256 = "537aa19b95acde10a12fec4301466386f757403de4cd4e5b4fa78fb5ecb18f72",
        strip_prefix = "prost-derive-0.6.1",
        build_file = Label("//tonic/raze/remote:prost-derive-0.6.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__quote__1_0_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/quote/quote-1.0.7.crate",
        type = "tar.gz",
        sha256 = "aa563d17ecb180e500da1cfd2b028310ac758de548efdd203e18f283af693f37",
        strip_prefix = "quote-1.0.7",
        build_file = Label("//tonic/raze/remote:quote-1.0.7.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__rand__0_7_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.7.3.crate",
        type = "tar.gz",
        sha256 = "6a6b1679d49b24bbfe0c803429aa1874472f50d9b363131f0e89fc356b544d03",
        strip_prefix = "rand-0.7.3",
        build_file = Label("//tonic/raze/remote:rand-0.7.3.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__rand_chacha__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_chacha/rand_chacha-0.2.2.crate",
        type = "tar.gz",
        sha256 = "f4c8ed856279c9737206bf725bf36935d8666ead7aa69b52be55af369d193402",
        strip_prefix = "rand_chacha-0.2.2",
        build_file = Label("//tonic/raze/remote:rand_chacha-0.2.2.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__rand_core__0_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.5.1.crate",
        type = "tar.gz",
        sha256 = "90bde5296fc891b0cef12a6d03ddccc162ce7b2aff54160af9338f8d40df6d19",
        strip_prefix = "rand_core-0.5.1",
        build_file = Label("//tonic/raze/remote:rand_core-0.5.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__rand_hc__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_hc/rand_hc-0.2.0.crate",
        type = "tar.gz",
        sha256 = "ca3129af7b92a17112d59ad498c6f81eaf463253766b90396d39ea7a39d6613c",
        strip_prefix = "rand_hc-0.2.0",
        build_file = Label("//tonic/raze/remote:rand_hc-0.2.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__rand_pcg__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_pcg/rand_pcg-0.2.1.crate",
        type = "tar.gz",
        sha256 = "16abd0c1b639e9eb4d7c50c0b8100b0d0f849be2349829c740fe8e6eb4816429",
        strip_prefix = "rand_pcg-0.2.1",
        build_file = Label("//tonic/raze/remote:rand_pcg-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__redox_syscall__0_1_57",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/redox_syscall/redox_syscall-0.1.57.crate",
        type = "tar.gz",
        sha256 = "41cc0f7e4d5d4544e8861606a285bb08d3e70712ccc7d2b84d7c0ccfaf4b05ce",
        strip_prefix = "redox_syscall-0.1.57",
        build_file = Label("//tonic/raze/remote:redox_syscall-0.1.57.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__signal_hook_registry__1_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/signal-hook-registry/signal-hook-registry-1.2.1.crate",
        type = "tar.gz",
        sha256 = "a3e12110bc539e657a646068aaf5eb5b63af9d0c1f7b29c97113fad80e15f035",
        strip_prefix = "signal-hook-registry-1.2.1",
        build_file = Label("//tonic/raze/remote:signal-hook-registry-1.2.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__slab__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slab/slab-0.4.2.crate",
        type = "tar.gz",
        sha256 = "c111b5bd5695e56cffe5129854aa230b39c93a305372fdbb2668ca2394eea9f8",
        strip_prefix = "slab-0.4.2",
        build_file = Label("//tonic/raze/remote:slab-0.4.2.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__socket2__0_3_12",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/socket2/socket2-0.3.12.crate",
        type = "tar.gz",
        sha256 = "03088793f677dce356f3ccc2edb1b314ad191ab702a5de3faf49304f7e104918",
        strip_prefix = "socket2-0.3.12",
        build_file = Label("//tonic/raze/remote:socket2-0.3.12.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__syn__1_0_39",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/syn/syn-1.0.39.crate",
        type = "tar.gz",
        sha256 = "891d8d6567fe7c7f8835a3a98af4208f3846fba258c1bc3c31d6e506239f11f9",
        strip_prefix = "syn-1.0.39",
        build_file = Label("//tonic/raze/remote:syn-1.0.39.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__time__0_1_43",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/time/time-0.1.43.crate",
        type = "tar.gz",
        sha256 = "ca8a50ef2360fbd1eeb0ecd46795a87a19024eb4b53c5dc916ca1fd95fe62438",
        strip_prefix = "time-0.1.43",
        build_file = Label("//tonic/raze/remote:time-0.1.43.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tokio__0_2_22",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio/tokio-0.2.22.crate",
        type = "tar.gz",
        sha256 = "5d34ca54d84bf2b5b4d7d31e901a8464f7b60ac145a284fba25ceb801f2ddccd",
        strip_prefix = "tokio-0.2.22",
        build_file = Label("//tonic/raze/remote:tokio-0.2.22.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tokio_macros__0_2_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-macros/tokio-macros-0.2.5.crate",
        type = "tar.gz",
        sha256 = "f0c3acc6aa564495a0f2e1d59fab677cd7f81a19994cfc7f3ad0e64301560389",
        strip_prefix = "tokio-macros-0.2.5",
        build_file = Label("//tonic/raze/remote:tokio-macros-0.2.5.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tokio_util__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-util/tokio-util-0.3.1.crate",
        type = "tar.gz",
        sha256 = "be8242891f2b6cbef26a2d7e8605133c2c554cd35b3e4948ea892d6d68436499",
        strip_prefix = "tokio-util-0.3.1",
        build_file = Label("//tonic/raze/remote:tokio-util-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tonic__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tonic/tonic-0.3.1.crate",
        type = "tar.gz",
        sha256 = "74a5d6e7439ecf910463667080de772a9c7ddf26bc9fb4f3252ac3862e43337d",
        strip_prefix = "tonic-0.3.1",
        build_file = Label("//tonic/raze/remote:tonic-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower/tower-0.3.1.crate",
        type = "tar.gz",
        sha256 = "fd3169017c090b7a28fce80abaad0ab4f5566423677c9331bb320af7e49cfe62",
        strip_prefix = "tower-0.3.1",
        build_file = Label("//tonic/raze/remote:tower-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_balance__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-balance/tower-balance-0.3.0.crate",
        type = "tar.gz",
        sha256 = "a792277613b7052448851efcf98a2c433e6f1d01460832dc60bef676bc275d4c",
        strip_prefix = "tower-balance-0.3.0",
        build_file = Label("//tonic/raze/remote:tower-balance-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_buffer__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-buffer/tower-buffer-0.3.0.crate",
        type = "tar.gz",
        sha256 = "c4887dc2a65d464c8b9b66e0e4d51c2fd6cf5b3373afc72805b0a60bce00446a",
        strip_prefix = "tower-buffer-0.3.0",
        build_file = Label("//tonic/raze/remote:tower-buffer-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_discover__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-discover/tower-discover-0.3.0.crate",
        type = "tar.gz",
        sha256 = "0f6b5000c3c54d269cc695dff28136bb33d08cbf1df2c48129e143ab65bf3c2a",
        strip_prefix = "tower-discover-0.3.0",
        build_file = Label("//tonic/raze/remote:tower-discover-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_layer__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-layer/tower-layer-0.3.0.crate",
        type = "tar.gz",
        sha256 = "a35d656f2638b288b33495d1053ea74c40dc05ec0b92084dd71ca5566c4ed1dc",
        strip_prefix = "tower-layer-0.3.0",
        build_file = Label("//tonic/raze/remote:tower-layer-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_limit__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-limit/tower-limit-0.3.1.crate",
        type = "tar.gz",
        sha256 = "92c3040c5dbed68abffaa0d4517ac1a454cd741044f33ab0eefab6b8d1361404",
        strip_prefix = "tower-limit-0.3.1",
        build_file = Label("//tonic/raze/remote:tower-limit-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_load__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-load/tower-load-0.3.0.crate",
        type = "tar.gz",
        sha256 = "8cc79fc3afd07492b7966d7efa7c6c50f8ed58d768a6075dd7ae6591c5d2017b",
        strip_prefix = "tower-load-0.3.0",
        build_file = Label("//tonic/raze/remote:tower-load-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_load_shed__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-load-shed/tower-load-shed-0.3.0.crate",
        type = "tar.gz",
        sha256 = "9f021e23900173dc315feb4b6922510dae3e79c689b74c089112066c11f0ae4e",
        strip_prefix = "tower-load-shed-0.3.0",
        build_file = Label("//tonic/raze/remote:tower-load-shed-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_make__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-make/tower-make-0.3.0.crate",
        type = "tar.gz",
        sha256 = "ce50370d644a0364bf4877ffd4f76404156a248d104e2cc234cd391ea5cdc965",
        strip_prefix = "tower-make-0.3.0",
        build_file = Label("//tonic/raze/remote:tower-make-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_ready_cache__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-ready-cache/tower-ready-cache-0.3.1.crate",
        type = "tar.gz",
        sha256 = "4eabb6620e5481267e2ec832c780b31cad0c15dcb14ed825df5076b26b591e1f",
        strip_prefix = "tower-ready-cache-0.3.1",
        build_file = Label("//tonic/raze/remote:tower-ready-cache-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_retry__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-retry/tower-retry-0.3.0.crate",
        type = "tar.gz",
        sha256 = "e6727956aaa2f8957d4d9232b308fe8e4e65d99db30f42b225646e86c9b6a952",
        strip_prefix = "tower-retry-0.3.0",
        build_file = Label("//tonic/raze/remote:tower-retry-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_service__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-service/tower-service-0.3.0.crate",
        type = "tar.gz",
        sha256 = "e987b6bf443f4b5b3b6f38704195592cca41c5bb7aedd3c3693c7081f8289860",
        strip_prefix = "tower-service-0.3.0",
        build_file = Label("//tonic/raze/remote:tower-service-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_timeout__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-timeout/tower-timeout-0.3.0.crate",
        type = "tar.gz",
        sha256 = "127b8924b357be938823eaaec0608c482d40add25609481027b96198b2e4b31e",
        strip_prefix = "tower-timeout-0.3.0",
        build_file = Label("//tonic/raze/remote:tower-timeout-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tower_util__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-util/tower-util-0.3.1.crate",
        type = "tar.gz",
        sha256 = "d1093c19826d33807c72511e68f73b4a0469a3f22c2bd5f7d5212178b4b89674",
        strip_prefix = "tower-util-0.3.1",
        build_file = Label("//tonic/raze/remote:tower-util-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tracing__0_1_19",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tracing/tracing-0.1.19.crate",
        type = "tar.gz",
        sha256 = "6d79ca061b032d6ce30c660fded31189ca0b9922bf483cd70759f13a2d86786c",
        strip_prefix = "tracing-0.1.19",
        build_file = Label("//tonic/raze/remote:tracing-0.1.19.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tracing_attributes__0_1_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tracing-attributes/tracing-attributes-0.1.11.crate",
        type = "tar.gz",
        sha256 = "80e0ccfc3378da0cce270c946b676a376943f5cd16aeba64568e7939806f4ada",
        strip_prefix = "tracing-attributes-0.1.11",
        build_file = Label("//tonic/raze/remote:tracing-attributes-0.1.11.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tracing_core__0_1_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tracing-core/tracing-core-0.1.14.crate",
        type = "tar.gz",
        sha256 = "db63662723c316b43ca36d833707cc93dff82a02ba3d7e354f342682cc8b3545",
        strip_prefix = "tracing-core-0.1.14",
        build_file = Label("//tonic/raze/remote:tracing-core-0.1.14.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__tracing_futures__0_2_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tracing-futures/tracing-futures-0.2.4.crate",
        type = "tar.gz",
        sha256 = "ab7bb6f14721aa00656086e9335d363c5c8747bae02ebe32ea2c7dece5689b4c",
        strip_prefix = "tracing-futures-0.2.4",
        build_file = Label("//tonic/raze/remote:tracing-futures-0.2.4.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__try_lock__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/try-lock/try-lock-0.2.3.crate",
        type = "tar.gz",
        sha256 = "59547bce71d9c38b83d9c0e92b6066c4253371f15005def0c30d9657f50c7642",
        strip_prefix = "try-lock-0.2.3",
        build_file = Label("//tonic/raze/remote:try-lock-0.2.3.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__unicode_xid__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-xid/unicode-xid-0.2.1.crate",
        type = "tar.gz",
        sha256 = "f7fe0bb3479651439c9112f72b6c505038574c9fbb575ed1bf3b797fa39dd564",
        strip_prefix = "unicode-xid-0.2.1",
        build_file = Label("//tonic/raze/remote:unicode-xid-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__want__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/want/want-0.3.0.crate",
        type = "tar.gz",
        sha256 = "1ce8a968cb1cd110d136ff8b819a556d6fb6d919363c61534f6860c7eb172ba0",
        strip_prefix = "want-0.3.0",
        build_file = Label("//tonic/raze/remote:want-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__wasi__0_9_0_wasi_snapshot_preview1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/wasi/wasi-0.9.0+wasi-snapshot-preview1.crate",
        type = "tar.gz",
        sha256 = "cccddf32554fecc6acb585f82a32a72e28b48f8c4c1883ddfeeeaa96f7d8e519",
        strip_prefix = "wasi-0.9.0+wasi-snapshot-preview1",
        build_file = Label("//tonic/raze/remote:wasi-0.9.0+wasi-snapshot-preview1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__winapi__0_2_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi/winapi-0.2.8.crate",
        type = "tar.gz",
        sha256 = "167dc9d6949a9b857f3451275e911c3f44255842c1f7a76f33c55103a909087a",
        strip_prefix = "winapi-0.2.8",
        build_file = Label("//tonic/raze/remote:winapi-0.2.8.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__winapi__0_3_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi/winapi-0.3.9.crate",
        type = "tar.gz",
        sha256 = "5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//tonic/raze/remote:winapi-0.3.9.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__winapi_build__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-build/winapi-build-0.1.1.crate",
        type = "tar.gz",
        sha256 = "2d315eee3b34aca4797b2da6b13ed88266e6d612562a0c46390af8299fc699bc",
        strip_prefix = "winapi-build-0.1.1",
        build_file = Label("//tonic/raze/remote:winapi-build-0.1.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-i686-pc-windows-gnu/winapi-i686-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//tonic/raze/remote:winapi-i686-pc-windows-gnu-0.4.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-x86_64-pc-windows-gnu/winapi-x86_64-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//tonic/raze/remote:winapi-x86_64-pc-windows-gnu-0.4.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_deps__ws2_32_sys__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ws2_32-sys/ws2_32-sys-0.2.1.crate",
        type = "tar.gz",
        sha256 = "d59cefebd0c892fa2dd6de581e937301d8552cb44489cdff035c6187cb63fa5e",
        strip_prefix = "ws2_32-sys-0.2.1",
        build_file = Label("//tonic/raze/remote:ws2_32-sys-0.2.1.BUILD"),
    )
