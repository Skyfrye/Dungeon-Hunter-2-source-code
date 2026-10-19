package com.samsungapps.plasma;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

/* JADX INFO: loaded from: classes.dex */
class d$7 implements DialogInterface$OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f288a;
    final /* synthetic */ d b;

    d$7(d dVar, int i) {
        this.b = dVar;
        this.f288a = i;
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        a.a("onCancel");
        d.a(this.b, this.f288a, 100);
    }
}
