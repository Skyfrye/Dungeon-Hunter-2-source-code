package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.os.Process;

/* JADX INFO: loaded from: classes.dex */
final class by implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Zirconia_DRM f92a;

    by(Zirconia_DRM zirconia_DRM) {
        this.f92a = zirconia_DRM;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f92a.finish();
        Process.killProcess(Process.myPid());
    }
}
