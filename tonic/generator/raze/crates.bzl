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

def tonic_code_generator_fetch_remote_crates():
    _new_http_archive(
        name = "tonic_code_generator__ansi_term__0_11_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ansi_term/ansi_term-0.11.0.crate",
        type = "tar.gz",
        sha256 = "ee49baf6cb617b853aa8d93bf420db2383fab46d314482ca2803b40d5fde979b",
        strip_prefix = "ansi_term-0.11.0",
        build_file = Label("//tonic/generator/raze/remote:ansi_term-0.11.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__anyhow__1_0_32",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/anyhow/anyhow-1.0.32.crate",
        type = "tar.gz",
        sha256 = "6b602bfe940d21c130f3895acd65221e8a61270debe89d628b9cb4e3ccb8569b",
        strip_prefix = "anyhow-1.0.32",
        build_file = Label("//tonic/generator/raze/remote:anyhow-1.0.32.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__atty__0_2_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/atty/atty-0.2.14.crate",
        type = "tar.gz",
        sha256 = "d9b39be18770d11421cdb1b9947a45dd3f37e93092cbf377614828a319d5fee8",
        strip_prefix = "atty-0.2.14",
        build_file = Label("//tonic/generator/raze/remote:atty-0.2.14.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__autocfg__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/autocfg/autocfg-1.0.0.crate",
        type = "tar.gz",
        sha256 = "f8aac770f1885fd7e387acedd76065302551364496e46b3dd00860b2f8359b9d",
        strip_prefix = "autocfg-1.0.0",
        build_file = Label("//tonic/generator/raze/remote:autocfg-1.0.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__bitflags__1_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bitflags/bitflags-1.2.1.crate",
        type = "tar.gz",
        sha256 = "cf1de2fe8c75bc145a2f577add951f8134889b4795d47466a54a5c846d691693",
        strip_prefix = "bitflags-1.2.1",
        build_file = Label("//tonic/generator/raze/remote:bitflags-1.2.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__bytes__0_5_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bytes/bytes-0.5.6.crate",
        type = "tar.gz",
        sha256 = "0e4cec68f03f32e44924783795810fa50a7035d8c8ebe78580ad7e6c703fba38",
        strip_prefix = "bytes-0.5.6",
        build_file = Label("//tonic/generator/raze/remote:bytes-0.5.6.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__cfg_if__0_1_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cfg-if/cfg-if-0.1.10.crate",
        type = "tar.gz",
        sha256 = "4785bdd1c96b2a846b2bd7cc02e86b6b3dbf14e7e53446c4f54c92a361040822",
        strip_prefix = "cfg-if-0.1.10",
        build_file = Label("//tonic/generator/raze/remote:cfg-if-0.1.10.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__clap__2_33_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/clap/clap-2.33.3.crate",
        type = "tar.gz",
        sha256 = "37e58ac78573c40708d45522f0d80fa2f01cc4f9b4e2bf749807255454312002",
        strip_prefix = "clap-2.33.3",
        build_file = Label("//tonic/generator/raze/remote:clap-2.33.3.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__either__1_6_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/either/either-1.6.0.crate",
        type = "tar.gz",
        sha256 = "cd56b59865bce947ac5958779cfa508f6c3b9497cc762b7e24a12d11ccde2c4f",
        strip_prefix = "either-1.6.0",
        build_file = Label("//tonic/generator/raze/remote:either-1.6.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__fixedbitset__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fixedbitset/fixedbitset-0.2.0.crate",
        type = "tar.gz",
        sha256 = "37ab347416e802de484e4d03c7316c48f1ecb56574dfd4a46a80f173ce1de04d",
        strip_prefix = "fixedbitset-0.2.0",
        build_file = Label("//tonic/generator/raze/remote:fixedbitset-0.2.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__getrandom__0_1_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/getrandom/getrandom-0.1.14.crate",
        type = "tar.gz",
        sha256 = "7abc8dd8451921606d809ba32e95b6111925cd2906060d2dcc29c070220503eb",
        strip_prefix = "getrandom-0.1.14",
        build_file = Label("//tonic/generator/raze/remote:getrandom-0.1.14.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__hashbrown__0_8_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hashbrown/hashbrown-0.8.2.crate",
        type = "tar.gz",
        sha256 = "e91b62f79061a0bc2e046024cb7ba44b08419ed238ecbd9adbd787434b9e8c25",
        strip_prefix = "hashbrown-0.8.2",
        build_file = Label("//tonic/generator/raze/remote:hashbrown-0.8.2.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__heck__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/heck/heck-0.3.1.crate",
        type = "tar.gz",
        sha256 = "20564e78d53d2bb135c343b3f47714a56af2061f1c928fdb541dc7b9fdd94205",
        strip_prefix = "heck-0.3.1",
        build_file = Label("//tonic/generator/raze/remote:heck-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__hermit_abi__0_1_15",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hermit-abi/hermit-abi-0.1.15.crate",
        type = "tar.gz",
        sha256 = "3deed196b6e7f9e44a2ae8d94225d80302d81208b1bb673fd21fe634645c85a9",
        strip_prefix = "hermit-abi-0.1.15",
        build_file = Label("//tonic/generator/raze/remote:hermit-abi-0.1.15.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__indexmap__1_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/indexmap/indexmap-1.5.1.crate",
        type = "tar.gz",
        sha256 = "86b45e59b16c76b11bf9738fd5d38879d3bd28ad292d7b313608becb17ae2df9",
        strip_prefix = "indexmap-1.5.1",
        build_file = Label("//tonic/generator/raze/remote:indexmap-1.5.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__itertools__0_8_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/itertools/itertools-0.8.2.crate",
        type = "tar.gz",
        sha256 = "f56a2d0bc861f9165be4eb3442afd3c236d8a98afd426f65d92324ae1091a484",
        strip_prefix = "itertools-0.8.2",
        build_file = Label("//tonic/generator/raze/remote:itertools-0.8.2.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__libc__0_2_74",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/libc/libc-0.2.74.crate",
        type = "tar.gz",
        sha256 = "a2f02823cf78b754822df5f7f268fb59822e7296276d3e069d8e8cb26a14bd10",
        strip_prefix = "libc-0.2.74",
        build_file = Label("//tonic/generator/raze/remote:libc-0.2.74.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__log__0_4_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log/log-0.4.11.crate",
        type = "tar.gz",
        sha256 = "4fabed175da42fed1fa0746b0ea71f412aa9d35e76e95e59b192c64b9dc2bf8b",
        strip_prefix = "log-0.4.11",
        build_file = Label("//tonic/generator/raze/remote:log-0.4.11.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__multimap__0_8_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/multimap/multimap-0.8.1.crate",
        type = "tar.gz",
        sha256 = "d8883adfde9756c1d30b0f519c9b8c502a94b41ac62f696453c37c7fc0a958ce",
        strip_prefix = "multimap-0.8.1",
        build_file = Label("//tonic/generator/raze/remote:multimap-0.8.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__petgraph__0_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/petgraph/petgraph-0.5.1.crate",
        type = "tar.gz",
        sha256 = "467d164a6de56270bd7c4d070df81d07beace25012d5103ced4e9ff08d6afdb7",
        strip_prefix = "petgraph-0.5.1",
        build_file = Label("//tonic/generator/raze/remote:petgraph-0.5.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__ppv_lite86__0_2_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ppv-lite86/ppv-lite86-0.2.8.crate",
        type = "tar.gz",
        sha256 = "237a5ed80e274dbc66f86bd59c1e25edc039660be53194b5fe0a482e0f2612ea",
        strip_prefix = "ppv-lite86-0.2.8",
        build_file = Label("//tonic/generator/raze/remote:ppv-lite86-0.2.8.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__proc_macro2__1_0_19",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro2/proc-macro2-1.0.19.crate",
        type = "tar.gz",
        sha256 = "04f5f085b5d71e2188cb8271e5da0161ad52c3f227a661a3c135fdf28e258b12",
        strip_prefix = "proc-macro2-1.0.19",
        build_file = Label("//tonic/generator/raze/remote:proc-macro2-1.0.19.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__prost__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/prost/prost-0.6.1.crate",
        type = "tar.gz",
        sha256 = "ce49aefe0a6144a45de32927c77bd2859a5f7677b55f220ae5b744e87389c212",
        strip_prefix = "prost-0.6.1",
        build_file = Label("//tonic/generator/raze/remote:prost-0.6.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__prost_build__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/prost-build/prost-build-0.6.1.crate",
        type = "tar.gz",
        sha256 = "02b10678c913ecbd69350e8535c3aef91a8676c0773fc1d7b95cdd196d7f2f26",
        strip_prefix = "prost-build-0.6.1",
        patches = [
            "@io_bazel_rules_rust//tonic/generator/raze/patches:prost-build-0.6.1.patch",
        ],
        build_file = Label("//tonic/generator/raze/remote:prost-build-0.6.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__prost_derive__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/prost-derive/prost-derive-0.6.1.crate",
        type = "tar.gz",
        sha256 = "537aa19b95acde10a12fec4301466386f757403de4cd4e5b4fa78fb5ecb18f72",
        strip_prefix = "prost-derive-0.6.1",
        build_file = Label("//tonic/generator/raze/remote:prost-derive-0.6.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__prost_types__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/prost-types/prost-types-0.6.1.crate",
        type = "tar.gz",
        sha256 = "1834f67c0697c001304b75be76f67add9c89742eda3a085ad8ee0bb38c3417aa",
        strip_prefix = "prost-types-0.6.1",
        build_file = Label("//tonic/generator/raze/remote:prost-types-0.6.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__quote__1_0_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/quote/quote-1.0.7.crate",
        type = "tar.gz",
        sha256 = "aa563d17ecb180e500da1cfd2b028310ac758de548efdd203e18f283af693f37",
        strip_prefix = "quote-1.0.7",
        build_file = Label("//tonic/generator/raze/remote:quote-1.0.7.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__rand__0_7_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.7.3.crate",
        type = "tar.gz",
        sha256 = "6a6b1679d49b24bbfe0c803429aa1874472f50d9b363131f0e89fc356b544d03",
        strip_prefix = "rand-0.7.3",
        build_file = Label("//tonic/generator/raze/remote:rand-0.7.3.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__rand_chacha__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_chacha/rand_chacha-0.2.2.crate",
        type = "tar.gz",
        sha256 = "f4c8ed856279c9737206bf725bf36935d8666ead7aa69b52be55af369d193402",
        strip_prefix = "rand_chacha-0.2.2",
        build_file = Label("//tonic/generator/raze/remote:rand_chacha-0.2.2.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__rand_core__0_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.5.1.crate",
        type = "tar.gz",
        sha256 = "90bde5296fc891b0cef12a6d03ddccc162ce7b2aff54160af9338f8d40df6d19",
        strip_prefix = "rand_core-0.5.1",
        build_file = Label("//tonic/generator/raze/remote:rand_core-0.5.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__rand_hc__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_hc/rand_hc-0.2.0.crate",
        type = "tar.gz",
        sha256 = "ca3129af7b92a17112d59ad498c6f81eaf463253766b90396d39ea7a39d6613c",
        strip_prefix = "rand_hc-0.2.0",
        build_file = Label("//tonic/generator/raze/remote:rand_hc-0.2.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__redox_syscall__0_1_57",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/redox_syscall/redox_syscall-0.1.57.crate",
        type = "tar.gz",
        sha256 = "41cc0f7e4d5d4544e8861606a285bb08d3e70712ccc7d2b84d7c0ccfaf4b05ce",
        strip_prefix = "redox_syscall-0.1.57",
        build_file = Label("//tonic/generator/raze/remote:redox_syscall-0.1.57.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__remove_dir_all__0_5_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/remove_dir_all/remove_dir_all-0.5.3.crate",
        type = "tar.gz",
        sha256 = "3acd125665422973a33ac9d3dd2df85edad0f4ae9b00dafb1a05e43a9f5ef8e7",
        strip_prefix = "remove_dir_all-0.5.3",
        build_file = Label("//tonic/generator/raze/remote:remove_dir_all-0.5.3.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__strsim__0_8_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/strsim/strsim-0.8.0.crate",
        type = "tar.gz",
        sha256 = "8ea5119cdb4c55b55d432abb513a0429384878c15dde60cc77b1c99de1a95a6a",
        strip_prefix = "strsim-0.8.0",
        build_file = Label("//tonic/generator/raze/remote:strsim-0.8.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__syn__1_0_38",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/syn/syn-1.0.38.crate",
        type = "tar.gz",
        sha256 = "e69abc24912995b3038597a7a593be5053eb0fb44f3cc5beec0deb421790c1f4",
        strip_prefix = "syn-1.0.38",
        build_file = Label("//tonic/generator/raze/remote:syn-1.0.38.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__tempfile__3_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tempfile/tempfile-3.1.0.crate",
        type = "tar.gz",
        sha256 = "7a6e24d9338a0a5be79593e2fa15a648add6138caa803e2d5bc782c371732ca9",
        strip_prefix = "tempfile-3.1.0",
        build_file = Label("//tonic/generator/raze/remote:tempfile-3.1.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__textwrap__0_11_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/textwrap/textwrap-0.11.0.crate",
        type = "tar.gz",
        sha256 = "d326610f408c7a4eb6f51c37c330e496b08506c9457c9d34287ecc38809fb060",
        strip_prefix = "textwrap-0.11.0",
        build_file = Label("//tonic/generator/raze/remote:textwrap-0.11.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__tonic_build__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tonic-build/tonic-build-0.3.0.crate",
        type = "tar.gz",
        sha256 = "daec8b14e55497072204b53d5c0b1eb0a6ad1cd8301d6d4c079d4aeec35b21e9",
        strip_prefix = "tonic-build-0.3.0",
        build_file = Label("//tonic/generator/raze/remote:tonic-build-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__unicode_segmentation__1_6_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-segmentation/unicode-segmentation-1.6.0.crate",
        type = "tar.gz",
        sha256 = "e83e153d1053cbb5a118eeff7fd5be06ed99153f00dbcd8ae310c5fb2b22edc0",
        strip_prefix = "unicode-segmentation-1.6.0",
        build_file = Label("//tonic/generator/raze/remote:unicode-segmentation-1.6.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__unicode_width__0_1_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-width/unicode-width-0.1.8.crate",
        type = "tar.gz",
        sha256 = "9337591893a19b88d8d87f2cec1e73fad5cdfd10e5a6f349f498ad6ea2ffb1e3",
        strip_prefix = "unicode-width-0.1.8",
        build_file = Label("//tonic/generator/raze/remote:unicode-width-0.1.8.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__unicode_xid__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-xid/unicode-xid-0.2.1.crate",
        type = "tar.gz",
        sha256 = "f7fe0bb3479651439c9112f72b6c505038574c9fbb575ed1bf3b797fa39dd564",
        strip_prefix = "unicode-xid-0.2.1",
        build_file = Label("//tonic/generator/raze/remote:unicode-xid-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__vec_map__0_8_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/vec_map/vec_map-0.8.2.crate",
        type = "tar.gz",
        sha256 = "f1bddf1187be692e79c5ffeab891132dfb0f236ed36a43c7ed39f1165ee20191",
        strip_prefix = "vec_map-0.8.2",
        build_file = Label("//tonic/generator/raze/remote:vec_map-0.8.2.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__wasi__0_9_0_wasi_snapshot_preview1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/wasi/wasi-0.9.0+wasi-snapshot-preview1.crate",
        type = "tar.gz",
        sha256 = "cccddf32554fecc6acb585f82a32a72e28b48f8c4c1883ddfeeeaa96f7d8e519",
        strip_prefix = "wasi-0.9.0+wasi-snapshot-preview1",
        build_file = Label("//tonic/generator/raze/remote:wasi-0.9.0+wasi-snapshot-preview1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__which__3_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/which/which-3.1.1.crate",
        type = "tar.gz",
        sha256 = "d011071ae14a2f6671d0b74080ae0cd8ebf3a6f8c9589a2cd45f23126fe29724",
        strip_prefix = "which-3.1.1",
        build_file = Label("//tonic/generator/raze/remote:which-3.1.1.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__winapi__0_3_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi/winapi-0.3.9.crate",
        type = "tar.gz",
        sha256 = "5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//tonic/generator/raze/remote:winapi-0.3.9.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-i686-pc-windows-gnu/winapi-i686-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//tonic/generator/raze/remote:winapi-i686-pc-windows-gnu-0.4.0.BUILD"),
    )

    _new_http_archive(
        name = "tonic_code_generator__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-x86_64-pc-windows-gnu/winapi-x86_64-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//tonic/generator/raze/remote:winapi-x86_64-pc-windows-gnu-0.4.0.BUILD"),
    )
