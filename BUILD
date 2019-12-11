load("@io_bazel_rules_rust//rust:rust.bzl", "rust_binary")

rust_binary(
    name = "archiver-api",
    srcs = glob(["src/**/*.rs", "src/*.rs"]),
    edition = "2018",
    crate_root = "src/main.rs",
    deps = [
        "//cargo:chrono",
        "//cargo:diesel",
        "//cargo:dotenv",
#        "//cargo:openssl",
#        "//cargo:openssl_sys",
        "//cargo:rocket",
        "//cargo:rocket_contrib",
        "//cargo:serde",
        "//cargo:serde_json",
        "//cargo:uuid",
    ],

)
