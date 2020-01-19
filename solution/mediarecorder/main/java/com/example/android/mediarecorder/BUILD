load("@build_bazel_rules_android//android:rules.bzl", "android_binary", "android_library")

config_setting(
    name = "debug",
    values = {
        "compilation_mode": "dbg",
    },
)

config_setting(
    name = "release",
    values = {
        "compilation_mode": "opt",
    },
)

alias(
    name = "keys",
    actual = select({
        "debug": "//mediarecorder/main/kotlin/com/example/android/keys",
        "release": "//mediarecorder/release/kotlin/com/example/android/keys",
        "//conditions:default": "//mediarecorder/main/kotlin/com/example/android/keys"
    }),
    visibility = ["//visibility:public"]
)

android_library(
    name = "main",
    srcs = ["MainActivity.java"],
    manifest = "AndroidManifest.xml",
    resource_files = glob(["res/**"]),
    deps = [
        "//mediarecorder/main/java/com/example/android/common/media",
        "//mediarecorder/main/kotlin/com/example/android/utils:android",
        "//mediarecorder/main/kotlin/com/example/android/utils:jvm",
        "//mediarecorder/main/kotlin/com/example/android/dagger:info",
        ":keys",
        "@maven//:com_android_support_support_annotations",
        "@maven//:io_reactivex_rxjava2_rxjava",
    ],
)

android_binary(
    name = "mediarecorder_release",
    manifest = "AndroidManifest.xml",
    deps = [":main"],
    crunch_png = True,
    shrink_resources = 1,
    proguard_specs = [
        "proguard-rules.pro"
    ]
)

android_binary(
    name = "mediarecorder",
    manifest = "AndroidManifest.xml",
    deps = [":main"],
    crunch_png = False,
)
