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
  "notice", # "MIT,Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "rocket_http",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__cookie__0_11_1//:cookie",
        "@raze__hyper__0_10_16//:hyper",
        "@raze__indexmap__1_0_2//:indexmap",
        "@raze__pear__0_1_2//:pear",
        "@raze__percent_encoding__1_0_1//:percent_encoding",
        "@raze__smallvec__0_6_10//:smallvec",
        "@raze__state__0_4_1//:state",
        "@raze__time__0_1_42//:time",
        "@raze__unicode_xid__0_1_0//:unicode_xid",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.4.2",
    crate_features = [
        "cookie",
        "default",
        "private-cookies",
    ],
)

