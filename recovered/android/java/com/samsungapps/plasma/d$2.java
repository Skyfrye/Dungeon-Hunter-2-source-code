package com.samsungapps.plasma;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

/* JADX INFO: loaded from: classes.dex */
class d$2 implements DialogInterface$OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f282a;
    final /* synthetic */ d b;

    d$2(d dVar, int i) {
        this.b = dVar;
        this.f282a = i;
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (((Integer) d.j(this.b).get(Integer.valueOf(this.f282a))).intValue() != 103) {
            d.a(this.b, this.f282a, 100);
            return;
        }
        d.d(this.b).remove(Integer.valueOf(this.f282a));
        if (d.k(this.b) != null) {
            d.k(this.b).dismiss();
            d.b(this.b, (Dialog) null);
        }
    }
}
