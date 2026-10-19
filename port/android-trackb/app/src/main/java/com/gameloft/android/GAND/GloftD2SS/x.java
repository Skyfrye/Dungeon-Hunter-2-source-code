package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsoluteLayout;

final class x implements View.OnClickListener {

    final /* synthetic */ GLiveMain f174a;

    x(GLiveMain gLiveMain) {
        this.f174a = gLiveMain;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ((InputMethodManager) this.f174a.getSystemService("input_method")).hideSoftInputFromWindow(GLiveMain.bo.getWindowToken(), 0);
        GLiveMain.c.removeView(GLiveMain.m);
        GLiveMain.c.addView(GLiveMain.b, new AbsoluteLayout.LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0));
        GLiveMain.b.requestFocus();
        GLiveMain.b.loadUrl("http://livewebapp.gameloft.com/glive/friends/?select=yes");
        GLiveMain.ck = true;
    }
}
