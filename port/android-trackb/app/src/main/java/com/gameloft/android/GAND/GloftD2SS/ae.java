package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.graphics.Typeface;
import android.widget.AbsoluteLayout;

final class ae implements DialogInterface.OnClickListener {

    final /* synthetic */ ad f41a;

    ae(ad adVar) {
        this.f41a = adVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        GLiveMain.bf = false;
        if (i == 0) {
            GLiveMain.c.removeView(GLiveMain.f);
            GLiveMain.c.removeView(GLiveMain.d);
            GLiveMain.c.removeView(GLiveMain.e);
            GLiveMain.c.removeView(GLiveMain.f20a);
            GLiveMain.c.addView(GLiveMain.n, new AbsoluteLayout.LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0));
            GLiveMain.bh = true;
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
    }
}
