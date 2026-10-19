package com.gameloft.android.GAND.GloftD2SS;

import android.widget.RelativeLayout;

final class at implements Runnable {

    final /* synthetic */ ar f56a;

    at(ar arVar) {
        this.f56a = arVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (GLiveMain.E * 122.0f), (int) (GLiveMain.F * 45.0f));
        layoutParams.addRule(15);
        layoutParams.addRule(11);
        GLiveMain.f.addView(GLiveMain.i, layoutParams);
        GLiveMain.f.addView(GLiveMain.j, layoutParams);
    }
}
