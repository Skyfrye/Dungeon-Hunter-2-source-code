package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;
import android.view.View$OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsoluteLayout$LayoutParams;

/* JADX INFO: loaded from: classes.dex */
final class x implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain f174a;

    x(GLiveMain gLiveMain) {
        this.f174a = gLiveMain;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        ((InputMethodManager) this.f174a.getSystemService("input_method")).hideSoftInputFromWindow(GLiveMain.bo.getWindowToken(), 0);
        GLiveMain.c.removeView(GLiveMain.m);
        GLiveMain.c.addView(GLiveMain.b, new AbsoluteLayout$LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0));
        GLiveMain.b.requestFocus();
        GLiveMain.b.loadUrl("http://livewebapp.gameloft.com/glive/friends/?select=yes");
        GLiveMain.ck = true;
    }
}
