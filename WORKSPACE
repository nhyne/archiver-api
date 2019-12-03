workspace(name = "archiver_api")


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "io_bazel_rules_rust",
    sha256 = "06c32fde6db017ac60af099fa17d4dd10ee13811db3f13dad847f7c21a93276f",
    strip_prefix = "rules_rust-3251240a915875fc1bb396a4c818472c46e52368",
    urls = [
        # Master branch as of 2019-12-03
        "https://github.com/bazelbuild/rules_rust/archive/3251240a915875fc1bb396a4c818472c46e52368.tar.gz",
    ],
)

http_archive(
    name = "bazel_skylib",
    sha256 = "9a737999532daca978a158f94e77e9af6a6a169709c0cee274f0a4c3359519bd",
    strip_prefix = "bazel-skylib-1.0.0",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/1.0.0.tar.gz",
)

load("@io_bazel_rules_rust//rust:repositories.bzl", "rust_repository_set")

load("@io_bazel_rules_rust//:workspace.bzl", "bazel_version")
bazel_version(name = "bazel_version")

load("//cargo:crates.bzl", "raze_fetch_remote_crates")

raze_fetch_remote_crates()

rust_repository_set(
    name = "rust_darwin_x86_64",
    exec_triple = "x86_64-apple-darwin",
    extra_target_triples = [],
    version = "nightly",
    iso_date = "2019-09-05",
)
