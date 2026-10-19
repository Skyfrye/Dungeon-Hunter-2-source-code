package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;
import android.view.View$OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.RelativeLayout$LayoutParams;

/* JADX INFO: loaded from: classes.dex */
final class s implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain f169a;

    s(GLiveMain gLiveMain) {
        this.f169a = gLiveMain;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        GLiveMain.c.addView(GLiveMain.f20a);
        GLiveMain.c.addView(GLiveMain.f);
        GLiveMain.c.addView(GLiveMain.d);
        ((InputMethodManager) this.f169a.getSystemService("input_method")).hideSoftInputFromWindow(GLiveMain.bN.getWindowToken(), 0);
        GLiveMain.c.removeView(GLiveMain.n);
        GLiveMain.f20a.requestFocus();
        if (!GLiveMain.bi && GLiveMain.bP) {
            GLiveMain.bi = true;
            RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (GLiveMain.E * 45.0f), (int) (GLiveMain.F * 40.0f));
            relativeLayout$LayoutParams.addRule(15);
            relativeLayout$LayoutParams.addRule(11);
            GLiveMain.f.addView(GLiveMain.aZ, relativeLayout$LayoutParams);
        }
        GLiveMain.bh = false;
    }
}
