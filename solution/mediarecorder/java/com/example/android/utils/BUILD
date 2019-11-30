load("@io_bazel_rules_kotlin//kotlin:kotlin.bzl", "kt_android_library", "kt_jvm_library")

kt_jvm_library(
    name = "jvm_utils",
    srcs = glob([
        "jvm/*.kt",
    ]),
    deps = [
        "@maven//:io_reactivex_rxjava2_rxjava",
    ],
    visibility = ["//mediarecorder:__subpackages__"]
)

kt_android_library(
    name = "android_utils",
    srcs = glob([
        "android/*.kt"
    ]),
    visibility = ["//mediarecorder:__subpackages__"]
)
