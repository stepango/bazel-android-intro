# Load the Android build rules
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

RULES_JVM_EXTERNAL_TAG = "3.0"

RULES_JVM_EXTERNAL_SHA = "62133c125bf4109dfd9d2af64830208356ce4ef8b165a6ef15bbff7460b35c3a"

http_archive(
    name = "rules_jvm_external",
    sha256 = RULES_JVM_EXTERNAL_SHA,
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@rules_jvm_external//:specs.bzl", "maven")

DAGGER_VERSION = "2.26"

maven_install(
    artifacts = [
        "com.android.databinding:adapters:3.4.2",
        "com.android.databinding:library:3.4.2",
        "com.android.databinding:baseLibrary:3.4.2",
        "com.android.support:support-annotations:28.0.0",
        "io.reactivex.rxjava2:rxjava:2.2.15",
        "com.google.dagger:dagger:" + DAGGER_VERSION,
        "javax.inject:javax.inject:1",
        "javax.annotation:jsr250-api:1.0",
        maven.artifact(
            "com.google.dagger",
            "dagger-compiler",
            DAGGER_VERSION,
            neverlink = True,
        ),
    ],
    repositories = [
        "https://jcenter.bintray.com/",
        "https://maven.google.com",
        "https://repo1.maven.org/maven2",
    ],
    strict_visibility = True,
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

RULES_KOTLIN_VERSION = "legacy-1.3.0-rc4"

RULES_KOTLIN_SHA = "fe32ced5273bcc2f9e41cea65a28a9184a77f3bc30fea8a5c47b3d3bfc801dff"

http_archive(
    name = "io_bazel_rules_kotlin",
    sha256 = RULES_KOTLIN_SHA,
    strip_prefix = "rules_kotlin-%s" % RULES_KOTLIN_VERSION,
    type = "zip",
    urls = ["https://github.com/bazelbuild/rules_kotlin/archive/%s.zip" % RULES_KOTLIN_VERSION],
)

load("@io_bazel_rules_kotlin//kotlin:kotlin.bzl", "kotlin_repositories", "kt_register_toolchains")

KOTLIN_VERSION = "1.3.61"

KOTLINC_RELEASE_SHA = "3901151ad5d94798a268d1771c6c0b7e305a608c2889fc98a674802500597b1c"

KOTLINC_RELEASE = {
    "urls": [
        "https://github.com/JetBrains/kotlin/releases/download/v{v}/kotlin-compiler-{v}.zip".format(v = KOTLIN_VERSION),
    ],
    "sha256": KOTLINC_RELEASE_SHA,
}

kotlin_repositories(compiler_release = KOTLINC_RELEASE)

kt_register_toolchains()  # to use the default toolchain, otherwise see toolchains below

#databindings

bind(
    name = "databinding_annotation_processor",
    actual = "//tools/android:compiler_annotation_processor",
)

android_sdk_repository(
    name = "androidsdk",
)
