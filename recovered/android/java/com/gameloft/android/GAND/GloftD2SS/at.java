package com.gameloft.android.GAND.GloftD2SS;

import android.widget.RelativeLayout$LayoutParams;

/* JADX INFO: loaded from: classes.dex */
final class at implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ar f56a;

    at(ar arVar) {
        this.f56a = arVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (GLiveMain.E * 122.0f), (int) (GLiveMain.F * 45.0f));
        relativeLayout$LayoutParams.addRule(15);
        relativeLayout$LayoutParams.addRule(11);
        GLiveMain.f.addView(GLiveMain.i, relativeLayout$LayoutParams);
        GLiveMain.f.addView(GLiveMain.j, relativeLayout$LayoutParams);
    }
}
