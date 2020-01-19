load("@rules_kotlin//kotlin:kotlin.bzl", "kt_android_library", "kt_jvm_library")

kt_jvm_library(
    name = "jvm",
    srcs = glob([
        "jvm/*.kt",
    ]),
    visibility = ["//mediarecorder:__subpackages__"],
    deps = [
        "@maven//:io_reactivex_rxjava2_rxjava",
    ],
)

kt_android_library(
    name = "android",
    srcs = glob([
        "android/*.kt",
    ]),
    visibility = ["//mediarecorder:__subpackages__"],
)
