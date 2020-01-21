load("@rules_android//android:rules.bzl", "android_binary", "android_library")

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
        "//conditions:default": "//mediarecorder/main/kotlin/com/example/android/keys",
    }),
    visibility = ["//visibility:public"],
)

android_library(
    name = "main",
    srcs = ["MainActivity.java"],
    manifest = "AndroidManifest.xml",
    resource_files = glob(["res/**"]),
    deps = [
        ":keys",
        "//mediarecorder/main/java/com/example/android/common/media",
        "//mediarecorder/main/kotlin/com/example/android/dagger:info",
        "//mediarecorder/main/kotlin/com/example/android/utils:android",
        "//mediarecorder/main/kotlin/com/example/android/utils:jvm",
        "@maven//:com_android_support_support_annotations",
        "@maven//:io_reactivex_rxjava2_rxjava",
    ],
)

MANIFEST_VALUES = {
    "versionCode" : "1",
    "versionName" : "1.0",
    "minSdkVersion" : "21",
    "targetSdkVersion" : "29",
}

android_binary(
    name = "mediarecorder_release",
    crunch_png = True,
    manifest = "AndroidManifest.xml",
    proguard_specs = [
        "proguard-rules.pro",
    ],
    shrink_resources = 1,
    deps = [":main"],
    manifest_values = MANIFEST_VALUES,
)

android_binary(
    name = "mediarecorder",
    crunch_png = False,
    manifest = "AndroidManifest.xml",
    deps = [":main"],
    manifest_values = MANIFEST_VALUES,
)
