package com.example.android.utils.jvm

import io.reactivex.disposables.CompositeDisposable
import io.reactivex.disposables.Disposable

infix fun CompositeDisposable.plus(disposable: Disposable) = add(disposable)

