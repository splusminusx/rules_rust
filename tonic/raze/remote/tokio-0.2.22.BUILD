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


# Unsupported target "_require_full" with type "test" omitted
# Unsupported target "async_send_sync" with type "test" omitted
# Unsupported target "buffered" with type "test" omitted
# Unsupported target "fs" with type "test" omitted
# Unsupported target "fs_copy" with type "test" omitted
# Unsupported target "fs_dir" with type "test" omitted
# Unsupported target "fs_file" with type "test" omitted
# Unsupported target "fs_file_mocked" with type "test" omitted
# Unsupported target "fs_link" with type "test" omitted
# Unsupported target "io_async_read" with type "test" omitted
# Unsupported target "io_chain" with type "test" omitted
# Unsupported target "io_copy" with type "test" omitted
# Unsupported target "io_driver" with type "test" omitted
# Unsupported target "io_driver_drop" with type "test" omitted
# Unsupported target "io_lines" with type "test" omitted
# Unsupported target "io_read" with type "test" omitted
# Unsupported target "io_read_exact" with type "test" omitted
# Unsupported target "io_read_line" with type "test" omitted
# Unsupported target "io_read_to_end" with type "test" omitted
# Unsupported target "io_read_to_string" with type "test" omitted
# Unsupported target "io_read_until" with type "test" omitted
# Unsupported target "io_split" with type "test" omitted
# Unsupported target "io_take" with type "test" omitted
# Unsupported target "io_write" with type "test" omitted
# Unsupported target "io_write_all" with type "test" omitted
# Unsupported target "io_write_int" with type "test" omitted
# Unsupported target "macros_join" with type "test" omitted
# Unsupported target "macros_pin" with type "test" omitted
# Unsupported target "macros_select" with type "test" omitted
# Unsupported target "macros_test" with type "test" omitted
# Unsupported target "macros_try_join" with type "test" omitted
# Unsupported target "net_bind_resource" with type "test" omitted
# Unsupported target "net_lookup_host" with type "test" omitted
# Unsupported target "no_rt" with type "test" omitted
# Unsupported target "process_issue_2174" with type "test" omitted
# Unsupported target "process_issue_42" with type "test" omitted
# Unsupported target "process_kill_on_drop" with type "test" omitted
# Unsupported target "process_smoke" with type "test" omitted
# Unsupported target "read_to_string" with type "test" omitted
# Unsupported target "rt_basic" with type "test" omitted
# Unsupported target "rt_common" with type "test" omitted
# Unsupported target "rt_threaded" with type "test" omitted
# Unsupported target "signal_ctrl_c" with type "test" omitted
# Unsupported target "signal_drop_recv" with type "test" omitted
# Unsupported target "signal_drop_rt" with type "test" omitted
# Unsupported target "signal_drop_signal" with type "test" omitted
# Unsupported target "signal_multi_rt" with type "test" omitted
# Unsupported target "signal_no_rt" with type "test" omitted
# Unsupported target "signal_notify_both" with type "test" omitted
# Unsupported target "signal_twice" with type "test" omitted
# Unsupported target "signal_usr1" with type "test" omitted
# Unsupported target "stream_chain" with type "test" omitted
# Unsupported target "stream_collect" with type "test" omitted
# Unsupported target "stream_empty" with type "test" omitted
# Unsupported target "stream_fuse" with type "test" omitted
# Unsupported target "stream_iter" with type "test" omitted
# Unsupported target "stream_merge" with type "test" omitted
# Unsupported target "stream_once" with type "test" omitted
# Unsupported target "stream_pending" with type "test" omitted
# Unsupported target "stream_reader" with type "test" omitted
# Unsupported target "stream_stream_map" with type "test" omitted
# Unsupported target "stream_timeout" with type "test" omitted
# Unsupported target "sync_barrier" with type "test" omitted
# Unsupported target "sync_broadcast" with type "test" omitted
# Unsupported target "sync_cancellation_token" with type "test" omitted
# Unsupported target "sync_errors" with type "test" omitted
# Unsupported target "sync_mpsc" with type "test" omitted
# Unsupported target "sync_mutex" with type "test" omitted
# Unsupported target "sync_mutex_owned" with type "test" omitted
# Unsupported target "sync_notify" with type "test" omitted
# Unsupported target "sync_oneshot" with type "test" omitted
# Unsupported target "sync_rwlock" with type "test" omitted
# Unsupported target "sync_semaphore" with type "test" omitted
# Unsupported target "sync_semaphore_owned" with type "test" omitted
# Unsupported target "sync_watch" with type "test" omitted
# Unsupported target "task_blocking" with type "test" omitted
# Unsupported target "task_local" with type "test" omitted
# Unsupported target "task_local_set" with type "test" omitted
# Unsupported target "tcp_accept" with type "test" omitted
# Unsupported target "tcp_connect" with type "test" omitted
# Unsupported target "tcp_echo" with type "test" omitted
# Unsupported target "tcp_into_split" with type "test" omitted
# Unsupported target "tcp_peek" with type "test" omitted
# Unsupported target "tcp_shutdown" with type "test" omitted
# Unsupported target "tcp_split" with type "test" omitted
# Unsupported target "test_clock" with type "test" omitted
# Unsupported target "time_delay" with type "test" omitted
# Unsupported target "time_delay_queue" with type "test" omitted
# Unsupported target "time_interval" with type "test" omitted
# Unsupported target "time_rt" with type "test" omitted
# Unsupported target "time_throttle" with type "test" omitted
# Unsupported target "time_timeout" with type "test" omitted

rust_library(
    name = "tokio",
    crate_type = "lib",
    deps = [
        "@tonic_deps__bytes__0_5_6//:bytes",
        "@tonic_deps__fnv__1_0_7//:fnv",
        "@tonic_deps__futures_core__0_3_5//:futures_core",
        "@tonic_deps__iovec__0_1_4//:iovec",
        "@tonic_deps__lazy_static__1_4_0//:lazy_static",
        "@tonic_deps__libc__0_2_76//:libc",
        "@tonic_deps__memchr__2_3_3//:memchr",
        "@tonic_deps__mio__0_6_22//:mio",
        "@tonic_deps__mio_uds__0_6_8//:mio_uds",
        "@tonic_deps__num_cpus__1_13_0//:num_cpus",
        "@tonic_deps__pin_project_lite__0_1_7//:pin_project_lite",
        "@tonic_deps__signal_hook_registry__1_2_1//:signal_hook_registry",
        "@tonic_deps__slab__0_4_2//:slab",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    proc_macro_deps = [
        "@tonic_deps__tokio_macros__0_2_5//:tokio_macros",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.2.22",
    tags = ["cargo-raze"],
    crate_features = [
        "blocking",
        "default",
        "dns",
        "fnv",
        "fs",
        "full",
        "futures-core",
        "io-driver",
        "io-std",
        "io-util",
        "iovec",
        "lazy_static",
        "libc",
        "macros",
        "memchr",
        "mio",
        "mio-named-pipes",
        "mio-uds",
        "net",
        "num_cpus",
        "process",
        "rt-core",
        "rt-threaded",
        "rt-util",
        "signal",
        "signal-hook-registry",
        "slab",
        "stream",
        "sync",
        "tcp",
        "time",
        "tokio-macros",
        "udp",
        "uds",
        "winapi",
    ],
)

# Unsupported target "udp" with type "test" omitted
# Unsupported target "uds_cred" with type "test" omitted
# Unsupported target "uds_datagram" with type "test" omitted
# Unsupported target "uds_split" with type "test" omitted
# Unsupported target "uds_stream" with type "test" omitted
