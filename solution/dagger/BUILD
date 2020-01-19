alias(
    name = "javax_inject",
    actual = "@maven//:javax_inject_javax_inject",
    visibility = ["//visibility:public"],
)

java_plugin(
    name = "plugin",
    processor_class = "dagger.internal.codegen.ComponentProcessor",
    deps = [
        ":javax_inject",
        "@maven//:com_google_dagger_dagger",
        "@maven//:com_google_dagger_dagger_compiler",
    ],
)

java_library(
    name = "lib",
    exported_plugins = ["plugin"],
    visibility = ["//visibility:public"],
    exports = [
        ":javax_inject",
        "@maven//:com_google_dagger_dagger",
        "@maven//:com_google_dagger_dagger_compiler",
    ],
)
