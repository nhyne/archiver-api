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
    name = "fsevent",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__bitflags__1_2_1//:bitflags",
        "@raze__fsevent_sys__2_0_1//:fsevent_sys",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.4.0",
    crate_features = [
    ],
)

# Unsupported target "fsevent" with type "test" omitted
# Unsupported target "fsevent-async-demo" with type "example" omitted
# Unsupported target "fsevent-demo" with type "example" omitted
