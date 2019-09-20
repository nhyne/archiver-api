"""
cargo-raze crate build file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""
package(default_visibility = [
  # Public for visibility by "@raze__crate__version//" targets.
  #
  # Prefer access through "//cargo", which limits external
  # visibility to explicit Cargo.toml dependencies.
  "//visibility:public",
])

licenses([
  "restricted", # "MIT OR Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "diesel",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__bitflags__1_1_0//:bitflags",
        "@raze__byteorder__1_3_2//:byteorder",
        "@raze__chrono__0_4_7//:chrono",
        "@raze__diesel_derives__1_4_0//:diesel_derives",
        "@raze__pq_sys__0_4_6//:pq_sys",
        "@raze__uuid__0_6_5//:uuid",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "1.4.2",
    crate_features = [
        "32-column-tables",
        "bitflags",
        "chrono",
        "default",
        "diesel_derives",
        "postgres",
        "pq-sys",
        "uuid",
        "with-deprecated",
    ],
)

