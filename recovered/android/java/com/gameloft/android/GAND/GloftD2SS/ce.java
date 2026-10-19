package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
final class ce implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Zirconia_DRM f99a;

    ce(Zirconia_DRM zirconia_DRM) {
        this.f99a = zirconia_DRM;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f99a.finish();
    }
}
