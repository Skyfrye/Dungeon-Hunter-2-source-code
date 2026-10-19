package com.gameloft.android.GAND.GloftD2SS;

import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.widget.AbsoluteLayout$LayoutParams;

/* JADX INFO: loaded from: classes.dex */
final class ai implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f45a;

    ai(ah ahVar) {
        this.f45a = ahVar;
    }

    @Override // android.content.DialogInterface$OnClickListener
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
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams = new AbsoluteLayout$LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0);
            GLiveMain.bo.setText("");
            GLiveMain.m.clearFocus();
            GLiveMain.c.addView(GLiveMain.m, absoluteLayout$LayoutParams);
            GLiveMain.m.requestFocus();
            this.f45a.f.a(GLiveMain.aM[GLiveMain.aO - 1]);
        }
        if (i == 2) {
            GLiveMain.f20a.loadUrl("http://livewebapp.gameloft.com/glive/games/compare/uid/" + GLiveMain.z);
        }
        if (i == 3) {
            AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this.f45a.f.aT);
            alertDialog$Builder.setTitle(this.f45a.f.getString(GLiveMain.cK[GLiveMain.bQ], new Object[]{this}));
            alertDialog$Builder.setItems(this.f45a.b[GLiveMain.bQ], new aj(this));
            AlertDialog alertDialogCreate = alertDialog$Builder.create();
            GLiveMain.bK = alertDialogCreate;
            alertDialogCreate.show();
        }
        if (i == 4) {
            GLiveMain.f20a.loadUrl("http://livewebapp.gameloft.com/glive/friends/delete-friend/uid/" + GLiveMain.z);
        }
    }
}
