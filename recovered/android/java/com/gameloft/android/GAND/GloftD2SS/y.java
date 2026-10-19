package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;
import android.view.View$OnClickListener;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: loaded from: classes.dex */
final class y implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain f175a;

    y(GLiveMain gLiveMain) {
        this.f175a = gLiveMain;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        GLiveMain.bo.setText("");
        GLiveMain.c.addView(GLiveMain.f20a);
        GLiveMain.c.addView(GLiveMain.f);
        GLiveMain.c.addView(GLiveMain.d);
        GLiveMain.c.addView(GLiveMain.e);
        ((InputMethodManager) this.f175a.getSystemService("input_method")).hideSoftInputFromWindow(GLiveMain.bo.getWindowToken(), 0);
        ((InputMethodManager) this.f175a.getSystemService("input_method")).hideSoftInputFromWindow(GLiveMain.bN.getWindowToken(), 0);
        GLiveMain.c.removeView(GLiveMain.m);
        GLiveMain.k.removeViews(2, GLiveMain.aO);
        GLiveMain.f20a.requestFocus();
        GLiveMain.aP = 1;
    }
}
