package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
final class t implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain f170a;

    t(GLiveMain gLiveMain) {
        this.f170a = gLiveMain;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        this.f170a.a(view.getId());
    }
}
