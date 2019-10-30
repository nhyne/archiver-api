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
  "notice", # "ISC"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "inotify",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__bitflags__1_2_1//:bitflags",
        "@raze__inotify_sys__0_1_3//:inotify_sys",
        "@raze__libc__0_2_65//:libc",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.6.1",
    crate_features = [
    ],
)

# Unsupported target "main" with type "test" omitted
# Unsupported target "stream" with type "example" omitted
# Unsupported target "watch" with type "example" omitted
