package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
final class r implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain f168a;

    r(GLiveMain gLiveMain) {
        this.f168a = gLiveMain;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        this.f168a.a(view.getId());
    }
}
