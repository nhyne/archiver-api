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
  "notice", # "MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "mio_extras",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__lazycell__1_2_1//:lazycell",
        "@raze__log__0_4_8//:log",
        "@raze__mio__0_6_19//:mio",
        "@raze__slab__0_4_2//:slab",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "2.0.5",
    crate_features = [
    ],
)

# Unsupported target "test" with type "test" omitted
