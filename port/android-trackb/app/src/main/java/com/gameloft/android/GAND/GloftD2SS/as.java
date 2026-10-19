package com.gameloft.android.GAND.GloftD2SS;

import android.widget.RelativeLayout;

final class as implements Runnable {

    final /* synthetic */ ar f55a;

    as(ar arVar) {
        this.f55a = arVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (GLiveMain.E * 45.0f), (int) (GLiveMain.F * 40.0f));
        layoutParams.addRule(15);
        layoutParams.addRule(11);
        GLiveMain.f.addView(GLiveMain.bd, layoutParams);
    }
}
