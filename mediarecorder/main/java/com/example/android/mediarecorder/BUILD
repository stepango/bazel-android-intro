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
    visibility = ["//mediarecorder:__subpackages__"],
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
        "//mediarecorder/main/java/com/example/android/view",
        "//mediarecorder/main/java/com/example/android/vm",
        "@maven//:javax_annotation_jsr250_api",
        "@maven//:com_android_support_support_annotations",
        "@maven//:io_reactivex_rxjava2_rxjava",
    ],
    visibility = ["//mediarecorder:__subpackages__"],
    custom_package = "com.example.android.mediarecorder",
)
