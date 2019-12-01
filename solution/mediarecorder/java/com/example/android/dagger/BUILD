load("@io_bazel_rules_kotlin//kotlin:kotlin.bzl", "kt_jvm_library")

kt_jvm_library(
    name = "kotlin_dagger_lib",
    srcs = glob(["*.kt"]),
    deps = [
        "@maven//:com_google_dagger_dagger",
        "//dagger:lib",
    ],
    visibility = ["//mediarecorder:__subpackages__"]
)