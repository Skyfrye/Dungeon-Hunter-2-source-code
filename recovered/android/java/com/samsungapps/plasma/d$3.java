package com.samsungapps.plasma;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;

/* JADX INFO: loaded from: classes.dex */
class d$3 implements DialogInterface$OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f283a;

    d$3(d dVar) {
        this.f283a = dVar;
    }

    @Override // android.content.DialogInterface$OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        d.b(this.f283a, (Dialog) null);
    }
}
