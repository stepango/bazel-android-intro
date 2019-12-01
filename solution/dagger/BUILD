java_library(
    name = "compiler",
    exports = [
        "@maven//:com_google_dagger_dagger_compiler",
    ],
    neverlink = True, # We have to prevent compiler to be linked to final APK
    visibility = ["//visibility:private"]
)

java_plugin(
    name = "plugin",
    processor_class = "dagger.internal.codegen.ComponentProcessor",
    deps = [
        ":compiler",
        "@maven//:com_google_dagger_dagger",
        "@maven//:javax_inject_javax_inject",
    ],
    visibility = ["//visibility:private"]
)

java_library(
    name = "lib",
    exported_plugins = ["plugin"],
    exports = [
        ":compiler",
        "@maven//:com_google_dagger_dagger",
        "@maven//:javax_inject_javax_inject",
    ],
    visibility = ["//visibility:public"]
)