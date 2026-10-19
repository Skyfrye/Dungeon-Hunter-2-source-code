package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

/* JADX INFO: loaded from: classes.dex */
final class an implements DialogInterface$OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f50a;

    an(ah ahVar) {
        this.f50a = ahVar;
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        GLiveMain.be = false;
    }
}
