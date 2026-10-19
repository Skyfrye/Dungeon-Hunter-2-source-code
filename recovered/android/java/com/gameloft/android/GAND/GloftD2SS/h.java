package com.gameloft.android.GAND.GloftD2SS;

import android.graphics.Typeface;
import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
final class h implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain f103a;

    h(GLiveMain gLiveMain) {
        this.f103a = gLiveMain;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        if (GLiveMain.bO) {
            GLiveMain.bN.setText("");
            GLiveMain.bN.setTextColor(-16777216);
            GLiveMain.bN.setTypeface(Typeface.defaultFromStyle(0));
        }
        GLiveMain.bO = false;
    }
}
