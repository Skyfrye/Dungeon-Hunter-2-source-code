package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.os.Process;

/* JADX INFO: loaded from: classes.dex */
final class cb implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Zirconia_DRM f96a;

    cb(Zirconia_DRM zirconia_DRM) {
        this.f96a = zirconia_DRM;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f96a.finish();
        Process.killProcess(Process.myPid());
    }
}
