package com.gameloft.android.GAND.GloftD2SS;

import android.widget.RelativeLayout$LayoutParams;

/* JADX INFO: loaded from: classes.dex */
final class as implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ar f55a;

    as(ar arVar) {
        this.f55a = arVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (GLiveMain.E * 45.0f), (int) (GLiveMain.F * 40.0f));
        relativeLayout$LayoutParams.addRule(15);
        relativeLayout$LayoutParams.addRule(11);
        GLiveMain.f.addView(GLiveMain.bd, relativeLayout$LayoutParams);
    }
}
