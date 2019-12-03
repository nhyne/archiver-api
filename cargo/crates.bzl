"""
cargo-raze crate workspace functions

DO NOT EDIT! Replaced on runs of cargo-raze
"""
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def _new_http_archive(name, **kwargs):
    if not native.existing_rule(name):
        http_archive(name=name, **kwargs)

def _new_git_repository(name, **kwargs):
    if not native.existing_rule(name):
        new_git_repository(name=name, **kwargs)

def raze_fetch_remote_crates():

    _new_http_archive(
        name = "raze__aho_corasick__0_6_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/aho-corasick/aho-corasick-0.6.10.crate",
        type = "tar.gz",
        sha256 = "81ce3d38065e618af2d7b77e10c5ad9a069859b4be3c2250f674af3840d9c8a5",
        strip_prefix = "aho-corasick-0.6.10",
        build_file = Label("//cargo/remote:aho-corasick-0.6.10.BUILD")
    )

    _new_http_archive(
        name = "raze__atty__0_2_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/atty/atty-0.2.13.crate",
        type = "tar.gz",
        sha256 = "1803c647a3ec87095e7ae7acfca019e98de5ec9a7d01343f611cf3152ed71a90",
        strip_prefix = "atty-0.2.13",
        build_file = Label("//cargo/remote:atty-0.2.13.BUILD")
    )

    _new_http_archive(
        name = "raze__autocfg__0_1_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/autocfg/autocfg-0.1.7.crate",
        type = "tar.gz",
        sha256 = "1d49d90015b3c36167a20fe2810c5cd875ad504b39cff3d4eae7977e6b7c1cb2",
        strip_prefix = "autocfg-0.1.7",
        build_file = Label("//cargo/remote:autocfg-0.1.7.BUILD")
    )

    _new_http_archive(
        name = "raze__base64__0_10_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/base64/base64-0.10.1.crate",
        type = "tar.gz",
        sha256 = "0b25d992356d2eb0ed82172f5248873db5560c4721f564b13cb5193bda5e668e",
        strip_prefix = "base64-0.10.1",
        build_file = Label("//cargo/remote:base64-0.10.1.BUILD")
    )

    _new_http_archive(
        name = "raze__base64__0_9_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/base64/base64-0.9.3.crate",
        type = "tar.gz",
        sha256 = "489d6c0ed21b11d038c31b6ceccca973e65d73ba3bd8ecb9a2babf5546164643",
        strip_prefix = "base64-0.9.3",
        build_file = Label("//cargo/remote:base64-0.9.3.BUILD")
    )

    _new_http_archive(
        name = "raze__bitflags__1_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bitflags/bitflags-1.2.1.crate",
        type = "tar.gz",
        sha256 = "cf1de2fe8c75bc145a2f577add951f8134889b4795d47466a54a5c846d691693",
        strip_prefix = "bitflags-1.2.1",
        build_file = Label("//cargo/remote:bitflags-1.2.1.BUILD")
    )

    _new_http_archive(
        name = "raze__byteorder__1_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/byteorder/byteorder-1.3.2.crate",
        type = "tar.gz",
        sha256 = "a7c3dd8985a7111efc5c80b44e23ecdd8c007de8ade3b96595387e812b957cf5",
        strip_prefix = "byteorder-1.3.2",
        build_file = Label("//cargo/remote:byteorder-1.3.2.BUILD")
    )

    _new_http_archive(
        name = "raze__cc__1_0_47",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cc/cc-1.0.47.crate",
        type = "tar.gz",
        sha256 = "aa87058dce70a3ff5621797f1506cb837edd02ac4c0ae642b4542dce802908b8",
        strip_prefix = "cc-1.0.47",
        build_file = Label("//cargo/remote:cc-1.0.47.BUILD")
    )

    _new_http_archive(
        name = "raze__cfg_if__0_1_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cfg-if/cfg-if-0.1.10.crate",
        type = "tar.gz",
        sha256 = "4785bdd1c96b2a846b2bd7cc02e86b6b3dbf14e7e53446c4f54c92a361040822",
        strip_prefix = "cfg-if-0.1.10",
        build_file = Label("//cargo/remote:cfg-if-0.1.10.BUILD")
    )

    _new_http_archive(
        name = "raze__chrono__0_4_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/chrono/chrono-0.4.9.crate",
        type = "tar.gz",
        sha256 = "e8493056968583b0193c1bb04d6f7684586f3726992d6c573261941a895dbd68",
        strip_prefix = "chrono-0.4.9",
        build_file = Label("//cargo/remote:chrono-0.4.9.BUILD")
    )

    _new_http_archive(
        name = "raze__cookie__0_11_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cookie/cookie-0.11.1.crate",
        type = "tar.gz",
        sha256 = "99be24cfcf40d56ed37fd11c2123be833959bbc5bddecb46e1c2e442e15fa3e0",
        strip_prefix = "cookie-0.11.1",
        build_file = Label("//cargo/remote:cookie-0.11.1.BUILD")
    )

    _new_http_archive(
        name = "raze__devise__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/devise/devise-0.2.0.crate",
        type = "tar.gz",
        sha256 = "74e04ba2d03c5fa0d954c061fc8c9c288badadffc272ebb87679a89846de3ed3",
        strip_prefix = "devise-0.2.0",
        build_file = Label("//cargo/remote:devise-0.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__devise_codegen__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/devise_codegen/devise_codegen-0.2.0.crate",
        type = "tar.gz",
        sha256 = "066ceb7928ca93a9bedc6d0e612a8a0424048b0ab1f75971b203d01420c055d7",
        strip_prefix = "devise_codegen-0.2.0",
        build_file = Label("//cargo/remote:devise_codegen-0.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__devise_core__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/devise_core/devise_core-0.2.0.crate",
        type = "tar.gz",
        sha256 = "cf41c59b22b5e3ec0ea55c7847e5f358d340f3a8d6d53a5cf4f1564967f96487",
        strip_prefix = "devise_core-0.2.0",
        build_file = Label("//cargo/remote:devise_core-0.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__diesel__1_4_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/diesel/diesel-1.4.3.crate",
        type = "tar.gz",
        sha256 = "9d7cc03b910de9935007861dce440881f69102aaaedfd4bc5a6f40340ca5840c",
        strip_prefix = "diesel-1.4.3",
        build_file = Label("//cargo/remote:diesel-1.4.3.BUILD")
    )

    _new_http_archive(
        name = "raze__diesel_derives__1_4_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/diesel_derives/diesel_derives-1.4.1.crate",
        type = "tar.gz",
        sha256 = "45f5098f628d02a7a0f68ddba586fb61e80edec3bdc1be3b921f4ceec60858d3",
        strip_prefix = "diesel_derives-1.4.1",
        build_file = Label("//cargo/remote:diesel_derives-1.4.1.BUILD")
    )

    _new_http_archive(
        name = "raze__dotenv__0_9_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/dotenv/dotenv-0.9.0.crate",
        type = "tar.gz",
        sha256 = "400b347fe65ccfbd8f545c9d9a75d04b0caf23fec49aaa838a9a05398f94c019",
        strip_prefix = "dotenv-0.9.0",
        build_file = Label("//cargo/remote:dotenv-0.9.0.BUILD")
    )

    _new_http_archive(
        name = "raze__filetime__0_2_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/filetime/filetime-0.2.8.crate",
        type = "tar.gz",
        sha256 = "1ff6d4dab0aa0c8e6346d46052e93b13a16cf847b54ed357087c35011048cc7d",
        strip_prefix = "filetime-0.2.8",
        build_file = Label("//cargo/remote:filetime-0.2.8.BUILD")
    )

    _new_http_archive(
        name = "raze__fsevent__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fsevent/fsevent-0.4.0.crate",
        type = "tar.gz",
        sha256 = "5ab7d1bd1bd33cc98b0889831b72da23c0aa4df9cec7e0702f46ecea04b35db6",
        strip_prefix = "fsevent-0.4.0",
        build_file = Label("//cargo/remote:fsevent-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__fsevent_sys__2_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fsevent-sys/fsevent-sys-2.0.1.crate",
        type = "tar.gz",
        sha256 = "f41b048a94555da0f42f1d632e2e19510084fb8e303b0daa2816e733fb3644a0",
        strip_prefix = "fsevent-sys-2.0.1",
        build_file = Label("//cargo/remote:fsevent-sys-2.0.1.BUILD")
    )

    _new_http_archive(
        name = "raze__fuchsia_cprng__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-cprng/fuchsia-cprng-0.1.1.crate",
        type = "tar.gz",
        sha256 = "a06f77d526c1a601b7c4cdd98f54b5eaabffc14d5f2f0296febdc7f357c6d3ba",
        strip_prefix = "fuchsia-cprng-0.1.1",
        build_file = Label("//cargo/remote:fuchsia-cprng-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__fuchsia_zircon__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-zircon/fuchsia-zircon-0.3.3.crate",
        type = "tar.gz",
        sha256 = "2e9763c69ebaae630ba35f74888db465e49e259ba1bc0eda7d06f4a067615d82",
        strip_prefix = "fuchsia-zircon-0.3.3",
        build_file = Label("//cargo/remote:fuchsia-zircon-0.3.3.BUILD")
    )

    _new_http_archive(
        name = "raze__fuchsia_zircon_sys__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-zircon-sys/fuchsia-zircon-sys-0.3.3.crate",
        type = "tar.gz",
        sha256 = "3dcaa9ae7725d12cdb85b3ad99a434db70b468c09ded17e012d86b5c1010f7a7",
        strip_prefix = "fuchsia-zircon-sys-0.3.3",
        build_file = Label("//cargo/remote:fuchsia-zircon-sys-0.3.3.BUILD")
    )

    _new_http_archive(
        name = "raze__hermit_abi__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hermit-abi/hermit-abi-0.1.3.crate",
        type = "tar.gz",
        sha256 = "307c3c9f937f38e3534b1d6447ecf090cafcc9744e4a6360e8b037b2cf5af120",
        strip_prefix = "hermit-abi-0.1.3",
        build_file = Label("//cargo/remote:hermit-abi-0.1.3.BUILD")
    )

    _new_http_archive(
        name = "raze__httparse__1_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/httparse/httparse-1.3.4.crate",
        type = "tar.gz",
        sha256 = "cd179ae861f0c2e53da70d892f5f3029f9594be0c41dc5269cd371691b1dc2f9",
        strip_prefix = "httparse-1.3.4",
        build_file = Label("//cargo/remote:httparse-1.3.4.BUILD")
    )

    _new_http_archive(
        name = "raze__hyper__0_10_16",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hyper/hyper-0.10.16.crate",
        type = "tar.gz",
        sha256 = "0a0652d9a2609a968c14be1a9ea00bf4b1d64e2e1f53a1b51b6fff3a6e829273",
        strip_prefix = "hyper-0.10.16",
        build_file = Label("//cargo/remote:hyper-0.10.16.BUILD")
    )

    _new_http_archive(
        name = "raze__idna__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/idna/idna-0.1.5.crate",
        type = "tar.gz",
        sha256 = "38f09e0f0b1fb55fdee1f17470ad800da77af5186a1a76c026b679358b7e844e",
        strip_prefix = "idna-0.1.5",
        build_file = Label("//cargo/remote:idna-0.1.5.BUILD")
    )

    _new_http_archive(
        name = "raze__indexmap__1_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/indexmap/indexmap-1.3.0.crate",
        type = "tar.gz",
        sha256 = "712d7b3ea5827fcb9d4fda14bf4da5f136f0db2ae9c8f4bd4e2d1c6fde4e6db2",
        strip_prefix = "indexmap-1.3.0",
        build_file = Label("//cargo/remote:indexmap-1.3.0.BUILD")
    )

    _new_http_archive(
        name = "raze__inotify__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/inotify/inotify-0.6.1.crate",
        type = "tar.gz",
        sha256 = "40b54539f3910d6f84fbf9a643efd6e3aa6e4f001426c0329576128255994718",
        strip_prefix = "inotify-0.6.1",
        build_file = Label("//cargo/remote:inotify-0.6.1.BUILD")
    )

    _new_http_archive(
        name = "raze__inotify_sys__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/inotify-sys/inotify-sys-0.1.3.crate",
        type = "tar.gz",
        sha256 = "e74a1aa87c59aeff6ef2cc2fa62d41bc43f54952f55652656b18a02fd5e356c0",
        strip_prefix = "inotify-sys-0.1.3",
        build_file = Label("//cargo/remote:inotify-sys-0.1.3.BUILD")
    )

    _new_http_archive(
        name = "raze__iovec__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/iovec/iovec-0.1.4.crate",
        type = "tar.gz",
        sha256 = "b2b3ea6ff95e175473f8ffe6a7eb7c00d054240321b84c57051175fe3c1e075e",
        strip_prefix = "iovec-0.1.4",
        build_file = Label("//cargo/remote:iovec-0.1.4.BUILD")
    )

    _new_http_archive(
        name = "raze__itoa__0_4_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/itoa/itoa-0.4.4.crate",
        type = "tar.gz",
        sha256 = "501266b7edd0174f8530248f87f99c88fbe60ca4ef3dd486835b8d8d53136f7f",
        strip_prefix = "itoa-0.4.4",
        build_file = Label("//cargo/remote:itoa-0.4.4.BUILD")
    )

    _new_http_archive(
        name = "raze__kernel32_sys__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/kernel32-sys/kernel32-sys-0.2.2.crate",
        type = "tar.gz",
        sha256 = "7507624b29483431c0ba2d82aece8ca6cdba9382bff4ddd0f7490560c056098d",
        strip_prefix = "kernel32-sys-0.2.2",
        build_file = Label("//cargo/remote:kernel32-sys-0.2.2.BUILD")
    )

    _new_http_archive(
        name = "raze__language_tags__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/language-tags/language-tags-0.2.2.crate",
        type = "tar.gz",
        sha256 = "a91d884b6667cd606bb5a69aa0c99ba811a115fc68915e7056ec08a46e93199a",
        strip_prefix = "language-tags-0.2.2",
        build_file = Label("//cargo/remote:language-tags-0.2.2.BUILD")
    )

    _new_http_archive(
        name = "raze__lazy_static__1_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lazy_static/lazy_static-1.4.0.crate",
        type = "tar.gz",
        sha256 = "e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646",
        strip_prefix = "lazy_static-1.4.0",
        build_file = Label("//cargo/remote:lazy_static-1.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__lazycell__1_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lazycell/lazycell-1.2.1.crate",
        type = "tar.gz",
        sha256 = "b294d6fa9ee409a054354afc4352b0b9ef7ca222c69b8812cbea9e7d2bf3783f",
        strip_prefix = "lazycell-1.2.1",
        build_file = Label("//cargo/remote:lazycell-1.2.1.BUILD")
    )

    _new_http_archive(
        name = "raze__libc__0_2_65",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/libc/libc-0.2.65.crate",
        type = "tar.gz",
        sha256 = "1a31a0627fdf1f6a39ec0dd577e101440b7db22672c0901fe00a9a6fbb5c24e8",
        strip_prefix = "libc-0.2.65",
        build_file = Label("//cargo/remote:libc-0.2.65.BUILD")
    )

    _new_http_archive(
        name = "raze__log__0_3_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log/log-0.3.9.crate",
        type = "tar.gz",
        sha256 = "e19e8d5c34a3e0e2223db8e060f9e8264aeeb5c5fc64a4ee9965c062211c024b",
        strip_prefix = "log-0.3.9",
        build_file = Label("//cargo/remote:log-0.3.9.BUILD")
    )

    _new_http_archive(
        name = "raze__log__0_4_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log/log-0.4.8.crate",
        type = "tar.gz",
        sha256 = "14b6052be84e6b71ab17edffc2eeabf5c2c3ae1fdb464aae35ac50c67a44e1f7",
        strip_prefix = "log-0.4.8",
        build_file = Label("//cargo/remote:log-0.4.8.BUILD")
    )

    _new_http_archive(
        name = "raze__matches__0_1_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/matches/matches-0.1.8.crate",
        type = "tar.gz",
        sha256 = "7ffc5c5338469d4d3ea17d269fa8ea3512ad247247c30bd2df69e68309ed0a08",
        strip_prefix = "matches-0.1.8",
        build_file = Label("//cargo/remote:matches-0.1.8.BUILD")
    )

    _new_http_archive(
        name = "raze__maybe_uninit__2_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/maybe-uninit/maybe-uninit-2.0.0.crate",
        type = "tar.gz",
        sha256 = "60302e4db3a61da70c0cb7991976248362f30319e88850c487b9b95bbf059e00",
        strip_prefix = "maybe-uninit-2.0.0",
        build_file = Label("//cargo/remote:maybe-uninit-2.0.0.BUILD")
    )

    _new_http_archive(
        name = "raze__memchr__2_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/memchr/memchr-2.2.1.crate",
        type = "tar.gz",
        sha256 = "88579771288728879b57485cc7d6b07d648c9f0141eb955f8ab7f9d45394468e",
        strip_prefix = "memchr-2.2.1",
        build_file = Label("//cargo/remote:memchr-2.2.1.BUILD")
    )

    _new_http_archive(
        name = "raze__mime__0_2_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mime/mime-0.2.6.crate",
        type = "tar.gz",
        sha256 = "ba626b8a6de5da682e1caa06bdb42a335aee5a84db8e5046a3e8ab17ba0a3ae0",
        strip_prefix = "mime-0.2.6",
        build_file = Label("//cargo/remote:mime-0.2.6.BUILD")
    )

    _new_http_archive(
        name = "raze__mio__0_6_19",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mio/mio-0.6.19.crate",
        type = "tar.gz",
        sha256 = "83f51996a3ed004ef184e16818edc51fadffe8e7ca68be67f9dee67d84d0ff23",
        strip_prefix = "mio-0.6.19",
        build_file = Label("//cargo/remote:mio-0.6.19.BUILD")
    )

    _new_http_archive(
        name = "raze__mio_extras__2_0_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mio-extras/mio-extras-2.0.5.crate",
        type = "tar.gz",
        sha256 = "46e73a04c2fa6250b8d802134d56d554a9ec2922bf977777c805ea5def61ce40",
        strip_prefix = "mio-extras-2.0.5",
        build_file = Label("//cargo/remote:mio-extras-2.0.5.BUILD")
    )

    _new_http_archive(
        name = "raze__miow__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/miow/miow-0.2.1.crate",
        type = "tar.gz",
        sha256 = "8c1f2f3b1cf331de6896aabf6e9d55dca90356cc9960cca7eaaf408a355ae919",
        strip_prefix = "miow-0.2.1",
        build_file = Label("//cargo/remote:miow-0.2.1.BUILD")
    )

    _new_http_archive(
        name = "raze__net2__0_2_33",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/net2/net2-0.2.33.crate",
        type = "tar.gz",
        sha256 = "42550d9fb7b6684a6d404d9fa7250c2eb2646df731d1c06afc06dcee9e1bcf88",
        strip_prefix = "net2-0.2.33",
        build_file = Label("//cargo/remote:net2-0.2.33.BUILD")
    )

    _new_http_archive(
        name = "raze__notify__4_0_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/notify/notify-4.0.14.crate",
        type = "tar.gz",
        sha256 = "199628fc33b21bc767baa057490b00b382ecbae030803a7b36292422d15b778b",
        strip_prefix = "notify-4.0.14",
        build_file = Label("//cargo/remote:notify-4.0.14.BUILD")
    )

    _new_http_archive(
        name = "raze__num_integer__0_1_41",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-integer/num-integer-0.1.41.crate",
        type = "tar.gz",
        sha256 = "b85e541ef8255f6cf42bbfe4ef361305c6c135d10919ecc26126c4e5ae94bc09",
        strip_prefix = "num-integer-0.1.41",
        build_file = Label("//cargo/remote:num-integer-0.1.41.BUILD")
    )

    _new_http_archive(
        name = "raze__num_traits__0_2_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-traits/num-traits-0.2.10.crate",
        type = "tar.gz",
        sha256 = "d4c81ffc11c212fa327657cb19dd85eb7419e163b5b076bede2bdb5c974c07e4",
        strip_prefix = "num-traits-0.2.10",
        build_file = Label("//cargo/remote:num-traits-0.2.10.BUILD")
    )

    _new_http_archive(
        name = "raze__num_cpus__1_11_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num_cpus/num_cpus-1.11.1.crate",
        type = "tar.gz",
        sha256 = "76dac5ed2a876980778b8b85f75a71b6cbf0db0b1232ee12f826bccb00d09d72",
        strip_prefix = "num_cpus-1.11.1",
        build_file = Label("//cargo/remote:num_cpus-1.11.1.BUILD")
    )

    _new_http_archive(
        name = "raze__pear__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pear/pear-0.1.2.crate",
        type = "tar.gz",
        sha256 = "c26d2b92e47063ffce70d3e3b1bd097af121a9e0db07ca38a6cc1cf0cc85ff25",
        strip_prefix = "pear-0.1.2",
        build_file = Label("//cargo/remote:pear-0.1.2.BUILD")
    )

    _new_http_archive(
        name = "raze__pear_codegen__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pear_codegen/pear_codegen-0.1.2.crate",
        type = "tar.gz",
        sha256 = "336db4a192cc7f54efeb0c4e11a9245394824cc3bcbd37ba3ff51240c35d7a6e",
        strip_prefix = "pear_codegen-0.1.2",
        build_file = Label("//cargo/remote:pear_codegen-0.1.2.BUILD")
    )

    _new_http_archive(
        name = "raze__percent_encoding__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/percent-encoding/percent-encoding-1.0.1.crate",
        type = "tar.gz",
        sha256 = "31010dd2e1ac33d5b46a5b413495239882813e0369f8ed8a5e266f173602f831",
        strip_prefix = "percent-encoding-1.0.1",
        build_file = Label("//cargo/remote:percent-encoding-1.0.1.BUILD")
    )

    _new_http_archive(
        name = "raze__pq_sys__0_4_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pq-sys/pq-sys-0.4.6.crate",
        type = "tar.gz",
        sha256 = "6ac25eee5a0582f45a67e837e350d784e7003bd29a5f460796772061ca49ffda",
        strip_prefix = "pq-sys-0.4.6",
        build_file = Label("//cargo/remote:pq-sys-0.4.6.BUILD")
    )

    _new_http_archive(
        name = "raze__proc_macro2__0_4_30",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro2/proc-macro2-0.4.30.crate",
        type = "tar.gz",
        sha256 = "cf3d2011ab5c909338f7887f4fc896d35932e29146c12c8d01da6b22a80ba759",
        strip_prefix = "proc-macro2-0.4.30",
        build_file = Label("//cargo/remote:proc-macro2-0.4.30.BUILD")
    )

    _new_http_archive(
        name = "raze__proc_macro2__1_0_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro2/proc-macro2-1.0.6.crate",
        type = "tar.gz",
        sha256 = "9c9e470a8dc4aeae2dee2f335e8f533e2d4b347e1434e5671afc49b054592f27",
        strip_prefix = "proc-macro2-1.0.6",
        build_file = Label("//cargo/remote:proc-macro2-1.0.6.BUILD")
    )

    _new_http_archive(
        name = "raze__quote__0_6_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/quote/quote-0.6.13.crate",
        type = "tar.gz",
        sha256 = "6ce23b6b870e8f94f81fb0a363d65d86675884b34a09043c81e5562f11c1f8e1",
        strip_prefix = "quote-0.6.13",
        build_file = Label("//cargo/remote:quote-0.6.13.BUILD")
    )

    _new_http_archive(
        name = "raze__quote__1_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/quote/quote-1.0.2.crate",
        type = "tar.gz",
        sha256 = "053a8c8bcc71fcce321828dc897a98ab9760bef03a4fc36693c231e5b3216cfe",
        strip_prefix = "quote-1.0.2",
        build_file = Label("//cargo/remote:quote-1.0.2.BUILD")
    )

    _new_http_archive(
        name = "raze__rand__0_4_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.4.6.crate",
        type = "tar.gz",
        sha256 = "552840b97013b1a26992c11eac34bdd778e464601a4c2054b5f0bff7c6761293",
        strip_prefix = "rand-0.4.6",
        build_file = Label("//cargo/remote:rand-0.4.6.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_core__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.3.1.crate",
        type = "tar.gz",
        sha256 = "7a6fdeb83b075e8266dcc8762c22776f6877a63111121f5f8c7411e5be7eed4b",
        strip_prefix = "rand_core-0.3.1",
        build_file = Label("//cargo/remote:rand_core-0.3.1.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_core__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.4.2.crate",
        type = "tar.gz",
        sha256 = "9c33a3c44ca05fa6f1807d8e6743f3824e8509beca625669633be0acbdf509dc",
        strip_prefix = "rand_core-0.4.2",
        build_file = Label("//cargo/remote:rand_core-0.4.2.BUILD")
    )

    _new_http_archive(
        name = "raze__rdrand__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rdrand/rdrand-0.4.0.crate",
        type = "tar.gz",
        sha256 = "678054eb77286b51581ba43620cc911abf02758c91f93f479767aed0f90458b2",
        strip_prefix = "rdrand-0.4.0",
        build_file = Label("//cargo/remote:rdrand-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__redox_syscall__0_1_56",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/redox_syscall/redox_syscall-0.1.56.crate",
        type = "tar.gz",
        sha256 = "2439c63f3f6139d1b57529d16bc3b8bb855230c8efcc5d3a896c8bea7c3b1e84",
        strip_prefix = "redox_syscall-0.1.56",
        build_file = Label("//cargo/remote:redox_syscall-0.1.56.BUILD")
    )

    _new_http_archive(
        name = "raze__regex__0_2_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/regex/regex-0.2.11.crate",
        type = "tar.gz",
        sha256 = "9329abc99e39129fcceabd24cf5d85b4671ef7c29c50e972bc5afe32438ec384",
        strip_prefix = "regex-0.2.11",
        build_file = Label("//cargo/remote:regex-0.2.11.BUILD")
    )

    _new_http_archive(
        name = "raze__regex_syntax__0_5_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/regex-syntax/regex-syntax-0.5.6.crate",
        type = "tar.gz",
        sha256 = "7d707a4fa2637f2dca2ef9fd02225ec7661fe01a53623c1e6515b6916511f7a7",
        strip_prefix = "regex-syntax-0.5.6",
        build_file = Label("//cargo/remote:regex-syntax-0.5.6.BUILD")
    )

    _new_http_archive(
        name = "raze__ring__0_13_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ring/ring-0.13.5.crate",
        type = "tar.gz",
        sha256 = "2c4db68a2e35f3497146b7e4563df7d4773a2433230c5e4b448328e31740458a",
        strip_prefix = "ring-0.13.5",
        build_file = Label("//cargo/remote:ring-0.13.5.BUILD")
    )

    _new_http_archive(
        name = "raze__rocket__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rocket/rocket-0.4.2.crate",
        type = "tar.gz",
        sha256 = "42c1e9deb3ef4fa430d307bfccd4231434b707ca1328fae339c43ad1201cc6f7",
        strip_prefix = "rocket-0.4.2",
        build_file = Label("//cargo/remote:rocket-0.4.2.BUILD")
    )

    _new_http_archive(
        name = "raze__rocket_codegen__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rocket_codegen/rocket_codegen-0.4.2.crate",
        type = "tar.gz",
        sha256 = "79aa1366f9b2eccddc05971e17c5de7bb75a5431eb12c2b5c66545fd348647f4",
        strip_prefix = "rocket_codegen-0.4.2",
        build_file = Label("//cargo/remote:rocket_codegen-0.4.2.BUILD")
    )

    _new_http_archive(
        name = "raze__rocket_contrib__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rocket_contrib/rocket_contrib-0.4.2.crate",
        type = "tar.gz",
        sha256 = "e0fa5c1392135adc0f96a02ba150ac4c765e27c58dbfd32aa40678e948f6e56f",
        strip_prefix = "rocket_contrib-0.4.2",
        build_file = Label("//cargo/remote:rocket_contrib-0.4.2.BUILD")
    )

    _new_http_archive(
        name = "raze__rocket_http__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rocket_http/rocket_http-0.4.2.crate",
        type = "tar.gz",
        sha256 = "b1391457ee4e80b40d4b57fa5765c0f2836b20d73bcbee4e3f35d93cf3b80817",
        strip_prefix = "rocket_http-0.4.2",
        build_file = Label("//cargo/remote:rocket_http-0.4.2.BUILD")
    )

    _new_http_archive(
        name = "raze__ryu__1_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ryu/ryu-1.0.2.crate",
        type = "tar.gz",
        sha256 = "bfa8506c1de11c9c4e4c38863ccbe02a305c8188e85a05a784c9e11e1c3910c8",
        strip_prefix = "ryu-1.0.2",
        build_file = Label("//cargo/remote:ryu-1.0.2.BUILD")
    )

    _new_http_archive(
        name = "raze__safemem__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/safemem/safemem-0.3.3.crate",
        type = "tar.gz",
        sha256 = "ef703b7cb59335eae2eb93ceb664c0eb7ea6bf567079d843e09420219668e072",
        strip_prefix = "safemem-0.3.3",
        build_file = Label("//cargo/remote:safemem-0.3.3.BUILD")
    )

    _new_http_archive(
        name = "raze__same_file__1_0_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/same-file/same-file-1.0.5.crate",
        type = "tar.gz",
        sha256 = "585e8ddcedc187886a30fa705c47985c3fa88d06624095856b36ca0b82ff4421",
        strip_prefix = "same-file-1.0.5",
        build_file = Label("//cargo/remote:same-file-1.0.5.BUILD")
    )

    _new_http_archive(
        name = "raze__serde__1_0_102",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde/serde-1.0.102.crate",
        type = "tar.gz",
        sha256 = "0c4b39bd9b0b087684013a792c59e3e07a46a01d2322518d8a1104641a0b1be0",
        strip_prefix = "serde-1.0.102",
        build_file = Label("//cargo/remote:serde-1.0.102.BUILD")
    )

    _new_http_archive(
        name = "raze__serde_derive__1_0_102",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_derive/serde_derive-1.0.102.crate",
        type = "tar.gz",
        sha256 = "ca13fc1a832f793322228923fbb3aba9f3f44444898f835d31ad1b74fa0a2bf8",
        strip_prefix = "serde_derive-1.0.102",
        build_file = Label("//cargo/remote:serde_derive-1.0.102.BUILD")
    )

    _new_http_archive(
        name = "raze__serde_json__1_0_41",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_json/serde_json-1.0.41.crate",
        type = "tar.gz",
        sha256 = "2f72eb2a68a7dc3f9a691bfda9305a1c017a6215e5a4545c258500d2099a37c2",
        strip_prefix = "serde_json-1.0.41",
        build_file = Label("//cargo/remote:serde_json-1.0.41.BUILD")
    )

    _new_http_archive(
        name = "raze__slab__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slab/slab-0.4.2.crate",
        type = "tar.gz",
        sha256 = "c111b5bd5695e56cffe5129854aa230b39c93a305372fdbb2668ca2394eea9f8",
        strip_prefix = "slab-0.4.2",
        build_file = Label("//cargo/remote:slab-0.4.2.BUILD")
    )

    _new_http_archive(
        name = "raze__smallvec__0_6_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/smallvec/smallvec-0.6.13.crate",
        type = "tar.gz",
        sha256 = "f7b0758c52e15a8b5e3691eae6cc559f08eee9406e548a4477ba4e67770a82b6",
        strip_prefix = "smallvec-0.6.13",
        build_file = Label("//cargo/remote:smallvec-0.6.13.BUILD")
    )

    _new_http_archive(
        name = "raze__smallvec__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/smallvec/smallvec-1.0.0.crate",
        type = "tar.gz",
        sha256 = "4ecf3b85f68e8abaa7555aa5abdb1153079387e60b718283d732f03897fcfc86",
        strip_prefix = "smallvec-1.0.0",
        build_file = Label("//cargo/remote:smallvec-1.0.0.BUILD")
    )

    _new_http_archive(
        name = "raze__state__0_4_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/state/state-0.4.1.crate",
        type = "tar.gz",
        sha256 = "7345c971d1ef21ffdbd103a75990a15eb03604fc8b8852ca8cb418ee1a099028",
        strip_prefix = "state-0.4.1",
        build_file = Label("//cargo/remote:state-0.4.1.BUILD")
    )

    _new_http_archive(
        name = "raze__syn__0_15_44",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/syn/syn-0.15.44.crate",
        type = "tar.gz",
        sha256 = "9ca4b3b69a77cbe1ffc9e198781b7acb0c7365a883670e8f1c1bc66fba79a5c5",
        strip_prefix = "syn-0.15.44",
        build_file = Label("//cargo/remote:syn-0.15.44.BUILD")
    )

    _new_http_archive(
        name = "raze__syn__1_0_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/syn/syn-1.0.8.crate",
        type = "tar.gz",
        sha256 = "661641ea2aa15845cddeb97dad000d22070bb5c1fb456b96c1cba883ec691e92",
        strip_prefix = "syn-1.0.8",
        build_file = Label("//cargo/remote:syn-1.0.8.BUILD")
    )

    _new_http_archive(
        name = "raze__thread_local__0_3_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/thread_local/thread_local-0.3.6.crate",
        type = "tar.gz",
        sha256 = "c6b53e329000edc2b34dbe8545fd20e55a333362d0a321909685a19bd28c3f1b",
        strip_prefix = "thread_local-0.3.6",
        build_file = Label("//cargo/remote:thread_local-0.3.6.BUILD")
    )

    _new_http_archive(
        name = "raze__time__0_1_42",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/time/time-0.1.42.crate",
        type = "tar.gz",
        sha256 = "db8dcfca086c1143c9270ac42a2bbd8a7ee477b78ac8e45b19abfb0cbede4b6f",
        strip_prefix = "time-0.1.42",
        build_file = Label("//cargo/remote:time-0.1.42.BUILD")
    )

    _new_http_archive(
        name = "raze__toml__0_4_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/toml/toml-0.4.10.crate",
        type = "tar.gz",
        sha256 = "758664fc71a3a69038656bee8b6be6477d2a6c315a6b81f7081f591bffa4111f",
        strip_prefix = "toml-0.4.10",
        build_file = Label("//cargo/remote:toml-0.4.10.BUILD")
    )

    _new_http_archive(
        name = "raze__traitobject__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/traitobject/traitobject-0.1.0.crate",
        type = "tar.gz",
        sha256 = "efd1f82c56340fdf16f2a953d7bda4f8fdffba13d93b00844c25572110b26079",
        strip_prefix = "traitobject-0.1.0",
        build_file = Label("//cargo/remote:traitobject-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__typeable__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/typeable/typeable-0.1.2.crate",
        type = "tar.gz",
        sha256 = "1410f6f91f21d1612654e7cc69193b0334f909dcf2c790c4826254fbb86f8887",
        strip_prefix = "typeable-0.1.2",
        build_file = Label("//cargo/remote:typeable-0.1.2.BUILD")
    )

    _new_http_archive(
        name = "raze__ucd_util__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ucd-util/ucd-util-0.1.5.crate",
        type = "tar.gz",
        sha256 = "fa9b3b49edd3468c0e6565d85783f51af95212b6fa3986a5500954f00b460874",
        strip_prefix = "ucd-util-0.1.5",
        build_file = Label("//cargo/remote:ucd-util-0.1.5.BUILD")
    )

    _new_http_archive(
        name = "raze__unicase__1_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicase/unicase-1.4.2.crate",
        type = "tar.gz",
        sha256 = "7f4765f83163b74f957c797ad9253caf97f103fb064d3999aea9568d09fc8a33",
        strip_prefix = "unicase-1.4.2",
        build_file = Label("//cargo/remote:unicase-1.4.2.BUILD")
    )

    _new_http_archive(
        name = "raze__unicode_bidi__0_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-bidi/unicode-bidi-0.3.4.crate",
        type = "tar.gz",
        sha256 = "49f2bd0c6468a8230e1db229cff8029217cf623c767ea5d60bfbd42729ea54d5",
        strip_prefix = "unicode-bidi-0.3.4",
        build_file = Label("//cargo/remote:unicode-bidi-0.3.4.BUILD")
    )

    _new_http_archive(
        name = "raze__unicode_normalization__0_1_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-normalization/unicode-normalization-0.1.11.crate",
        type = "tar.gz",
        sha256 = "b561e267b2326bb4cebfc0ef9e68355c7abe6c6f522aeac2f5bf95d56c59bdcf",
        strip_prefix = "unicode-normalization-0.1.11",
        build_file = Label("//cargo/remote:unicode-normalization-0.1.11.BUILD")
    )

    _new_http_archive(
        name = "raze__unicode_xid__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-xid/unicode-xid-0.1.0.crate",
        type = "tar.gz",
        sha256 = "fc72304796d0818e357ead4e000d19c9c174ab23dc11093ac919054d20a6a7fc",
        strip_prefix = "unicode-xid-0.1.0",
        build_file = Label("//cargo/remote:unicode-xid-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__unicode_xid__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-xid/unicode-xid-0.2.0.crate",
        type = "tar.gz",
        sha256 = "826e7639553986605ec5979c7dd957c7895e93eabed50ab2ffa7f6128a75097c",
        strip_prefix = "unicode-xid-0.2.0",
        build_file = Label("//cargo/remote:unicode-xid-0.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__untrusted__0_6_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/untrusted/untrusted-0.6.2.crate",
        type = "tar.gz",
        sha256 = "55cd1f4b4e96b46aeb8d4855db4a7a9bd96eeeb5c6a1ab54593328761642ce2f",
        strip_prefix = "untrusted-0.6.2",
        build_file = Label("//cargo/remote:untrusted-0.6.2.BUILD")
    )

    _new_http_archive(
        name = "raze__url__1_7_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/url/url-1.7.2.crate",
        type = "tar.gz",
        sha256 = "dd4e7c0d531266369519a4aa4f399d748bd37043b00bde1e4ff1f60a120b355a",
        strip_prefix = "url-1.7.2",
        build_file = Label("//cargo/remote:url-1.7.2.BUILD")
    )

    _new_http_archive(
        name = "raze__utf8_ranges__1_0_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/utf8-ranges/utf8-ranges-1.0.4.crate",
        type = "tar.gz",
        sha256 = "b4ae116fef2b7fea257ed6440d3cfcff7f190865f170cdad00bb6465bf18ecba",
        strip_prefix = "utf8-ranges-1.0.4",
        build_file = Label("//cargo/remote:utf8-ranges-1.0.4.BUILD")
    )

    _new_http_archive(
        name = "raze__uuid__0_6_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/uuid/uuid-0.6.5.crate",
        type = "tar.gz",
        sha256 = "e1436e58182935dcd9ce0add9ea0b558e8a87befe01c1a301e6020aeb0876363",
        strip_prefix = "uuid-0.6.5",
        build_file = Label("//cargo/remote:uuid-0.6.5.BUILD")
    )

    _new_http_archive(
        name = "raze__uuid__0_7_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/uuid/uuid-0.7.4.crate",
        type = "tar.gz",
        sha256 = "90dbc611eb48397705a6b0f6e917da23ae517e4d127123d2cf7674206627d32a",
        strip_prefix = "uuid-0.7.4",
        build_file = Label("//cargo/remote:uuid-0.7.4.BUILD")
    )

    _new_http_archive(
        name = "raze__vcpkg__0_2_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/vcpkg/vcpkg-0.2.7.crate",
        type = "tar.gz",
        sha256 = "33dd455d0f96e90a75803cfeb7f948768c08d70a6de9a8d2362461935698bf95",
        strip_prefix = "vcpkg-0.2.7",
        build_file = Label("//cargo/remote:vcpkg-0.2.7.BUILD")
    )

    _new_http_archive(
        name = "raze__version_check__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/version_check/version_check-0.1.5.crate",
        type = "tar.gz",
        sha256 = "914b1a6776c4c929a602fafd8bc742e06365d4bcbe48c30f9cca5824f70dc9dd",
        strip_prefix = "version_check-0.1.5",
        build_file = Label("//cargo/remote:version_check-0.1.5.BUILD")
    )

    _new_http_archive(
        name = "raze__version_check__0_9_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/version_check/version_check-0.9.1.crate",
        type = "tar.gz",
        sha256 = "078775d0255232fb988e6fccf26ddc9d1ac274299aaedcedce21c6f72cc533ce",
        strip_prefix = "version_check-0.9.1",
        build_file = Label("//cargo/remote:version_check-0.9.1.BUILD")
    )

    _new_http_archive(
        name = "raze__walkdir__2_2_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/walkdir/walkdir-2.2.9.crate",
        type = "tar.gz",
        sha256 = "9658c94fa8b940eab2250bd5a457f9c48b748420d71293b165c8cdbe2f55f71e",
        strip_prefix = "walkdir-2.2.9",
        build_file = Label("//cargo/remote:walkdir-2.2.9.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi__0_2_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi/winapi-0.2.8.crate",
        type = "tar.gz",
        sha256 = "167dc9d6949a9b857f3451275e911c3f44255842c1f7a76f33c55103a909087a",
        strip_prefix = "winapi-0.2.8",
        build_file = Label("//cargo/remote:winapi-0.2.8.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi__0_3_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi/winapi-0.3.8.crate",
        type = "tar.gz",
        sha256 = "8093091eeb260906a183e6ae1abdba2ef5ef2257a21801128899c3fc699229c6",
        strip_prefix = "winapi-0.3.8",
        build_file = Label("//cargo/remote:winapi-0.3.8.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi_build__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-build/winapi-build-0.1.1.crate",
        type = "tar.gz",
        sha256 = "2d315eee3b34aca4797b2da6b13ed88266e6d612562a0c46390af8299fc699bc",
        strip_prefix = "winapi-build-0.1.1",
        build_file = Label("//cargo/remote:winapi-build-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-i686-pc-windows-gnu/winapi-i686-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:winapi-i686-pc-windows-gnu-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi_util__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-util/winapi-util-0.1.2.crate",
        type = "tar.gz",
        sha256 = "7168bab6e1daee33b4557efd0e95d5ca70a03706d39fa5f3fe7a236f584b03c9",
        strip_prefix = "winapi-util-0.1.2",
        build_file = Label("//cargo/remote:winapi-util-0.1.2.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-x86_64-pc-windows-gnu/winapi-x86_64-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:winapi-x86_64-pc-windows-gnu-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__ws2_32_sys__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ws2_32-sys/ws2_32-sys-0.2.1.crate",
        type = "tar.gz",
        sha256 = "d59cefebd0c892fa2dd6de581e937301d8552cb44489cdff035c6187cb63fa5e",
        strip_prefix = "ws2_32-sys-0.2.1",
        build_file = Label("//cargo/remote:ws2_32-sys-0.2.1.BUILD")
    )

    _new_http_archive(
        name = "raze__yansi__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/yansi/yansi-0.4.0.crate",
        type = "tar.gz",
        sha256 = "d60c3b48c9cdec42fb06b3b84b5b087405e1fa1c644a1af3930e4dfafe93de48",
        strip_prefix = "yansi-0.4.0",
        build_file = Label("//cargo/remote:yansi-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__yansi__0_5_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/yansi/yansi-0.5.0.crate",
        type = "tar.gz",
        sha256 = "9fc79f4a1e39857fc00c3f662cbf2651c771f00e9c15fe2abc341806bd46bd71",
        strip_prefix = "yansi-0.5.0",
        build_file = Label("//cargo/remote:yansi-0.5.0.BUILD")
    )

