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
    name = "base64",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__byteorder__1_3_2//:byteorder",
        "@raze__safemem__0_3_3//:safemem",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.9.3",
    crate_features = [
    ],
)

# Unsupported target "benchmarks" with type "bench" omitted
# Unsupported target "decode" with type "test" omitted
# Unsupported target "encode" with type "test" omitted
# Unsupported target "helpers" with type "test" omitted
# Unsupported target "make_tables" with type "example" omitted
# Unsupported target "tests" with type "test" omitted
