-keep class kotlin.** { *; }
-keep class kotlin.Metadata { *; }

-dontwarn kotlin.**
-dontwarn java.**
-dontwarn android.**
-dontwarn org.jetbrains.**
-dontwarn com.google.errorprone.**

-dontnote kotlin.**
-dontnote java.**
-dontnote javax.**
-dontnote android.**
-dontnote org.jetbrains.**
-dontnote com.google.errorprone.**
-dontnote com.google.devtools.**

-keepclassmembers class **$WhenMappings {
    <fields>;
}
-keepclassmembers class kotlin.Metadata {
    public <methods>;
}
-assumenosideeffects class kotlin.jvm.internal.Intrinsics {
    static void checkParameterIsNotNull(java.lang.Object, java.lang.String);
}