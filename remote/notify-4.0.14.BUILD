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
  "unencumbered", # "CC0-1.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)


# Unsupported target "debounce" with type "test" omitted
# Unsupported target "event_path" with type "test" omitted
# Unsupported target "fsevents" with type "test" omitted
# Unsupported target "monitor_debounced" with type "example" omitted
# Unsupported target "monitor_raw" with type "example" omitted

rust_library(
    name = "notify",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__bitflags__1_2_1//:bitflags",
        "@raze__filetime__0_2_7//:filetime",
        "@raze__inotify__0_6_1//:inotify",
        "@raze__libc__0_2_65//:libc",
        "@raze__mio__0_6_19//:mio",
        "@raze__mio_extras__2_0_5//:mio_extras",
        "@raze__walkdir__2_2_9//:walkdir",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "4.0.14",
    crate_features = [
    ],
)

# Unsupported target "notify" with type "test" omitted
# Unsupported target "watcher" with type "test" omitted
# Unsupported target "windows" with type "test" omitted
