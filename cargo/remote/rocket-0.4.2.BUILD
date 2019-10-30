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


# Unsupported target "absolute-uris-okay-issue-443" with type "test" omitted
# Unsupported target "build-script-build" with type "custom-build" omitted
# Unsupported target "conditionally-set-server-header-996" with type "test" omitted
# Unsupported target "derive-reexports" with type "test" omitted
# Unsupported target "fairing_before_head_strip-issue-546" with type "test" omitted
# Unsupported target "flash-lazy-removes-issue-466" with type "test" omitted
# Unsupported target "form_method-issue-45" with type "test" omitted
# Unsupported target "form_value_decoding-issue-82" with type "test" omitted
# Unsupported target "format-routing" with type "bench" omitted
# Unsupported target "head_handling" with type "test" omitted
# Unsupported target "limits" with type "test" omitted
# Unsupported target "local-request-content-type-issue-505" with type "test" omitted
# Unsupported target "local_request_private_cookie-issue-368" with type "test" omitted
# Unsupported target "mount_point" with type "test" omitted
# Unsupported target "nested-fairing-attaches" with type "test" omitted
# Unsupported target "precise-content-type-matching" with type "test" omitted
# Unsupported target "ranked-routing" with type "bench" omitted
# Unsupported target "redirect_from_catcher-issue-113" with type "test" omitted
# Unsupported target "responder_lifetime-issue-345" with type "test" omitted

rust_library(
    name = "rocket",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__atty__0_2_13//:atty",
        "@raze__base64__0_10_1//:base64",
        "@raze__log__0_4_8//:log",
        "@raze__memchr__2_2_1//:memchr",
        "@raze__num_cpus__1_10_1//:num_cpus",
        "@raze__pear__0_1_2//:pear",
        "@raze__rocket_codegen__0_4_2//:rocket_codegen",
        "@raze__rocket_http__0_4_2//:rocket_http",
        "@raze__state__0_4_1//:state",
        "@raze__time__0_1_42//:time",
        "@raze__toml__0_4_10//:toml",
        "@raze__yansi__0_5_0//:yansi",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.4.2",
    crate_features = [
        "default",
        "private-cookies",
        "rocket_http",
    ],
)

# Unsupported target "route_guard" with type "test" omitted
# Unsupported target "segments-issues-41-86" with type "test" omitted
# Unsupported target "simple-routing" with type "bench" omitted
# Unsupported target "strict_and_lenient_forms" with type "test" omitted
# Unsupported target "uri-percent-encoding-issue-808" with type "test" omitted
