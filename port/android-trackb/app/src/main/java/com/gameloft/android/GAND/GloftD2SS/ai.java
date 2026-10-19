package com.gameloft.android.GAND.GloftD2SS;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.AbsoluteLayout;

final class ai implements DialogInterface.OnClickListener {

    final /* synthetic */ ah f45a;

    ai(ah ahVar) {
        this.f45a = ahVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        GLiveMain.be = false;
        if (i == 0) {
            GLiveMain.f20a.loadUrl("http://livewebapp.gameloft.com/glive/challenges/create-challenge?challenged_user_id=" + GLiveMain.z);
        }
        if (i == 1) {
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
            AbsoluteLayout.LayoutParams layoutParams = new AbsoluteLayout.LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0);
            GLiveMain.bo.setText("");
            GLiveMain.m.clearFocus();
            GLiveMain.c.addView(GLiveMain.m, layoutParams);
            GLiveMain.m.requestFocus();
            this.f45a.f.a(GLiveMain.aM[GLiveMain.aO - 1]);
        }
        if (i == 2) {
            GLiveMain.f20a.loadUrl("http://livewebapp.gameloft.com/glive/games/compare/uid/" + GLiveMain.z);
        }
        if (i == 3) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f45a.f.aT);
            builder.setTitle(this.f45a.f.getString(GLiveMain.cK[GLiveMain.bQ], new Object[]{this}));
            builder.setItems(this.f45a.b[GLiveMain.bQ], new aj(this));
            AlertDialog alertDialogCreate = builder.create();
            GLiveMain.bK = alertDialogCreate;
            alertDialogCreate.show();
        }
        if (i == 4) {
            GLiveMain.f20a.loadUrl("http://livewebapp.gameloft.com/glive/friends/delete-friend/uid/" + GLiveMain.z);
        }
    }
}
