Still having issues with getting bazel to build. Figured out the rust version issue finally though!

The log crate and openssl crate are having issues compiling. I believe that they need some additional configuration to get them working. [This section](https://github.com/google/cargo-raze#handling-unconventional-crates) of the cargo-raze readme discusses how some crates can have weird behavior and may require some extra steps to get them working. I'm not sure where to find the proper flags/features/etc. in order to get them to build. I'm guessing it's going to be a lot of manual debugging, guessing, and investigating options for the crates that have these issues.

12/2/19
Really a lot of crates just need to run their build.rs files. There are a few that are still having issues. Specifcally:
1. openssl and openssl-sys
    * openssl-sys fails on the build script with missing environment variables. I think I need to pull in openssl as an explicit dependency like [here](https://github.com/google/cargo-raze#crates-that-need-system-libraries).
    * openssl and openssl-sys are commented out in the cargo.toml file and the BUILD file at the root of the project. I figured it would be easiest to solve those last.
1. syn
    * syn is having an issue with some missing trait implementation. I found [this issue](https://github.com/google/cargo-raze/issues/64#issuecomment-425685911) where someone else had something similar with a different version. Removing the proc-macro feature in the generated file seems to fix it but I'm not 100% sure.
1. ring
    * started panicking during build script with the following error:
    ```
    ERROR: /private/var/tmp/_bazel_adamjohnson/74c31fb54c3f230dc3c7dd53fde8bb83/external/raze__ring__0_13_5/BUILD.bazel:46:1: Executing genrule @raze__ring__0_13_5//:ring_build_script_executor failed (Exit 101)
    thread 'main' panicked at 'called `Result::unwrap()` on an `Err` value: Os { code: 17, kind: AlreadyExists, message: "File exists" }', src/libcore/result.rs:1165:5
    stack backtrace:
       0: std::panicking::default_hook::{{closure}}
       1: std::panicking::default_hook
       2: std::panicking::rust_panic_with_hook
       3: std::panicking::continue_panic_fmt
       4: rust_begin_unwind
       5: core::panicking::panic_fmt
       6: core::result::unwrap_failed
       7: ring_build_script::main
       8: std::rt::lang_start::{{closure}}
       9: std::panicking::try::do_call
      10: __rust_maybe_catch_panic
      11: std::rt::lang_start_internal
      12: main
    INFO: Elapsed time: 84.245s, Critical Path: 24.13s
    INFO: 68 processes: 65 darwin-sandbox, 3 local.
    FAILED: Build did NOT complete successfully
    ```
