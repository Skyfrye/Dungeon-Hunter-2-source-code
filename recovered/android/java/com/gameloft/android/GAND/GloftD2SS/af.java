package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.graphics.Typeface;
import android.widget.AbsoluteLayout$LayoutParams;

/* JADX INFO: loaded from: classes.dex */
final class af implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ad f42a;

    af(ad adVar) {
        this.f42a = adVar;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        GLiveMain.bf = false;
        if (i == 0) {
            GLiveMain.c.removeView(GLiveMain.f);
            GLiveMain.c.removeView(GLiveMain.d);
            GLiveMain.c.removeView(GLiveMain.e);
            GLiveMain.c.removeView(GLiveMain.f20a);
            GLiveMain.c.addView(GLiveMain.n, new AbsoluteLayout$LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0));
            GLiveMain.bN.setText("john@example.com, alex@example.com");
            GLiveMain.bN.setTextColor(-8750470);
            GLiveMain.bN.setTypeface(Typeface.defaultFromStyle(2));
            GLiveMain.bL.loadUrl("http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id/" + GLiveMain.u);
            GLiveMain.bO = true;
            GLiveMain.bP = true;
        }
        if (i == 1) {
            GLiveMain.f20a.loadUrl(GLiveMain.am + GLiveMain.u);
        }
        if (i == 2) {
            GLiveMain.f20a.loadUrl(GLiveMain.an.replace("GAMEID", GLiveMain.u));
        }
    }
}
