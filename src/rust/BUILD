package(default_visibility = ["//visibility:public"])

load("@rules_rust//rust:defs.bzl", "rust_shared_library")
load("@rules_rust//cargo:cargo_build_script.bzl", "cargo_build_script")

# This will run the build script from the root of the workspace, and
# collect the outputs.
cargo_build_script(
    name = "build_script",
    srcs = ["build.rs"],
    deps = ["@raze__bindgen__0_58_1//:bindgen"]
)

rust_shared_library(
    name = "ccx_rust",
    srcs = [
        "src/utils.rs",
        "src/lib.rs",
        "src/decoder/mod.rs",
        "src/decoder/commands.rs",
        "src/decoder/output.rs",
        "src/decoder/service_decoder.rs",
        "src/decoder/timing.rs",
        "src/decoder/tv_screen.rs",
        "src/decoder/window.rs",
    ],
    deps = [":build_script","//cargo:env_logger","//cargo:iconv","//cargo:log"],
    rustc_env = {"OUT_DIR":"./"}
)