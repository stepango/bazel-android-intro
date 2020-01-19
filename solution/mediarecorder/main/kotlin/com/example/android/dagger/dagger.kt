package com.example.android.dagger

import dagger.Component
import javax.inject.Inject

class InfoHolder {
    @Inject lateinit var info: Info
}

class Info @Inject constructor() {
    val name = "Hello"
}

@Component
interface AppComponent {

    fun inject(activity: InfoHolder)

    @Component.Factory
    interface Factory {
        fun create() : AppComponent
    }
}