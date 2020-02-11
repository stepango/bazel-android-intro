android_library(
    name = "view",
    manifest = "AndroidManifest.xml",
    resource_files = glob(["res/**"]),
    enable_data_binding = True,
    srcs = glob(["*.java"]),
    deps = [
        "//mediarecorder/main/java/com/example/android/vm",
        "@maven//:com_android_databinding_adapters",
        "@maven//:com_android_databinding_library",
        "@maven//:com_android_databinding_baseLibrary",
        "@maven//:com_android_support_support_annotations",
        "@maven//:javax_annotation_jsr250_api",
    ],
    visibility = ["//visibility:public"],
    custom_package = "com.example.android.view",
)