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


# Unsupported target "databases" with type "test" omitted
# Unsupported target "helmet" with type "test" omitted

rust_library(
    name = "rocket_contrib",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__log__0_4_8//:log",
        "@raze__notify__4_0_12//:notify",
        "@raze__rocket__0_4_2//:rocket",
        "@raze__serde__1_0_98//:serde",
        "@raze__serde_json__1_0_40//:serde_json",
        "@raze__uuid__0_7_4//:uuid",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.4.2",
    crate_features = [
        "json",
        "serde",
        "serde_json",
        "uuid",
    ],
)

# Unsupported target "static_files" with type "test" omitted
# Unsupported target "templates" with type "test" omitted
