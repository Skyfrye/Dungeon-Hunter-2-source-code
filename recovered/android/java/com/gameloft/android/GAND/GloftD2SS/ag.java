package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

/* JADX INFO: loaded from: classes.dex */
final class ag implements DialogInterface$OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ad f43a;

    ag(ad adVar) {
        this.f43a = adVar;
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        GLiveMain.bf = false;
    }
}
