load("@io_bazel_rules_kotlin//kotlin:kotlin.bzl", "kt_jvm_library")

kt_jvm_library(
    name = "info",
    srcs = glob(["*.kt"]),
    deps = [
        "//dagger:lib",
    ],
    visibility = ["//mediarecorder:__subpackages__"]
)