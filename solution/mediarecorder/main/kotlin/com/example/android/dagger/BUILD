load("@rules_kotlin//kotlin:kotlin.bzl", "kt_jvm_library")

kt_jvm_library(
    name = "info",
    srcs = glob(["*.kt"]),
    visibility = ["//mediarecorder:__subpackages__"],
    deps = [
        "//dagger:lib",
    ],
)
