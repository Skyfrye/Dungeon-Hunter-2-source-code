package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
final class bz implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Zirconia_DRM f93a;

    bz(Zirconia_DRM zirconia_DRM) {
        this.f93a = zirconia_DRM;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (this.f93a.b()) {
            this.f93a.b(false);
        } else {
            Zirconia_DRM.access$002(this.f93a, true);
            this.f93a.d();
        }
    }
}
