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
    name = "chrono",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__libc__0_2_65//:libc",
        "@raze__num_integer__0_1_41//:num_integer",
        "@raze__num_traits__0_2_8//:num_traits",
        "@raze__serde__1_0_102//:serde",
        "@raze__time__0_1_42//:time",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.4.9",
    crate_features = [
        "clock",
        "default",
        "serde",
        "time",
    ],
)

# Unsupported target "wasm" with type "test" omitted
