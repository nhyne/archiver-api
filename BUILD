load("@io_bazel_rules_rust//rust:rust.bzl", "rust_binary")

rust_binary(
    name = "archiver-api",
    srcs = ["src/main.rs", "src/archive.rs", "src/schema.rs"],
    deps = [
        "//cargo:chrono",
        "//cargo:diesel",
        "//cargo:dotenv",
        "//cargo:openssl",
        "//cargo:rocket",
        "//cargo:rocket_contrib",
        "//cargo:serde",
        "//cargo:serde_json",
        "//cargo:uuid",
    ],
)
