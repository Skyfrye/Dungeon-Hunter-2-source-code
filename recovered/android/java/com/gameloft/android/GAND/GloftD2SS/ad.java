package com.gameloft.android.GAND.GloftD2SS;

import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.widget.ImageButton;

/* JADX INFO: loaded from: classes.dex */
final class ad implements View$OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ CharSequence[][] f40a;
    final /* synthetic */ CharSequence[][] b;
    final /* synthetic */ GLiveMain c;

    ad(GLiveMain gLiveMain, CharSequence[][] charSequenceArr, CharSequence[][] charSequenceArr2) {
        this.c = gLiveMain;
        this.f40a = charSequenceArr;
        this.b = charSequenceArr2;
    }

    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                ((ImageButton) view).setBackgroundResource(2130837581);
                return true;
            case 1:
                ((ImageButton) view).setBackgroundResource(2130837580);
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight() || GLiveMain.bf) {
                    return true;
                }
                GLiveMain.bf = true;
                AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this.c.aT);
                alertDialog$Builder.setTitle(this.c.getString(GLiveMain.cC[GLiveMain.bQ], new Object[]{this}));
                if (GLiveMain.needToRemoveFacebook()) {
                    alertDialog$Builder.setItems(this.f40a[GLiveMain.bQ], new ae(this));
                } else {
                    alertDialog$Builder.setItems(this.b[GLiveMain.bQ], new af(this));
                }
                alertDialog$Builder.setOnCancelListener(new ag(this));
                AlertDialog alertDialogCreate = alertDialog$Builder.create();
                GLiveMain.bK = alertDialogCreate;
                alertDialogCreate.show();
                return true;
            case 2:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    ((ImageButton) view).setBackgroundResource(2130837580);
                } else {
                    ((ImageButton) view).setBackgroundResource(2130837581);
                }
                return true;
            default:
                return false;
        }
    }
}
