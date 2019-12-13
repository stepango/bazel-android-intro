load("@build_bazel_rules_android//android:rules.bzl", "android_binary", "android_library")

android_library(
    name = "main",
    srcs = ["MainActivity.java"],
    manifest = "AndroidManifest.xml",
    resource_files = glob(["res/**"]),
    deps = [
        "//mediarecorder/java/com/example/android/common/media",
        "//mediarecorder/java/com/example/android/utils:android",
        "//mediarecorder/java/com/example/android/utils:jvm",
        "//mediarecorder/java/com/example/android/dagger:info",
        "@maven//:com_android_support_support_annotations",
        "@maven//:io_reactivex_rxjava2_rxjava",
    ],
)

android_binary(
    name = "mediarecorder",
    manifest = "AndroidManifest.xml",
    deps = [":main"],
    crunch_png = False,
    shrink_resources = 1,
    proguard_specs = [
        "proguard-rules.pro"
    ]
)
