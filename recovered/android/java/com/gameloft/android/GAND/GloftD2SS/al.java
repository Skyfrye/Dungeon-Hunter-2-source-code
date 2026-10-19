package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.widget.AbsoluteLayout$LayoutParams;

/* JADX INFO: loaded from: classes.dex */
final class al implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f48a;

    al(ah ahVar) {
        this.f48a = ahVar;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        GLiveMain.be = false;
        if (i == 0) {
            GLiveMain.c.removeView(GLiveMain.f);
            GLiveMain.c.removeView(GLiveMain.d);
            GLiveMain.c.removeView(GLiveMain.e);
            GLiveMain.c.removeView(GLiveMain.f20a);
            GLiveMain.by = 40;
            GLiveMain.bz = 8;
            GLiveMain.aO = 0;
            GLiveMain.aM[GLiveMain.aO] = GLiveMain.A;
            GLiveMain.aN[GLiveMain.aO] = GLiveMain.z;
            GLiveMain.aO++;
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams = new AbsoluteLayout$LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0);
            GLiveMain.m.clearFocus();
            GLiveMain.c.addView(GLiveMain.m, absoluteLayout$LayoutParams);
            GLiveMain.m.requestFocus();
            this.f48a.f.a(GLiveMain.aM[GLiveMain.aO - 1]);
        }
        if (i == 1) {
            GLiveMain.f20a.loadUrl("http://livewebapp.gameloft.com/glive/games/compare/uid/" + GLiveMain.z);
        }
        if (i == 2) {
            GLiveMain.f20a.loadUrl("http://livewebapp.gameloft.com/glive/account/add-friend/uid/" + GLiveMain.z);
        }
    }
}
