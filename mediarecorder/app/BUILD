MANIFEST_VALUES = {
    "versionCode": "1",
    "versionName": "1.0",
    "minSdkVersion": "21",
    "targetSdkVersion": "29",
}

APP_DEPS = [
    "//mediarecorder/main/java/com/example/android/mediarecorder:main",
    "//mediarecorder/main/java/com/example/android/view",
    "@maven//:com_android_support_support_annotations",
    "@maven//:javax_annotation_jsr250_api",
]

android_binary(
    name = "app_release",
    crunch_png = True,
    manifest = "AndroidManifest.xml",
    manifest_values = MANIFEST_VALUES,
    proguard_specs = [
        "proguard-rules.pro",
    ],
    shrink_resources = 1,
    deps = APP_DEPS,
    custom_package = "com.example.android.mediarecorder.launcher",
)

android_binary(
    name = "app",
    crunch_png = False,
    manifest = "AndroidManifest.xml",
    manifest_values = MANIFEST_VALUES,
    deps = APP_DEPS,
    custom_package = "com.example.android.mediarecorder.launcher",
)
