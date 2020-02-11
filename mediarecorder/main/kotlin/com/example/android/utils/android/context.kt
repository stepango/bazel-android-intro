package com.example.android.utils.android

import android.content.Context

typealias Localization = (Int) -> String

fun Context.localization(): Localization  = this::getString
