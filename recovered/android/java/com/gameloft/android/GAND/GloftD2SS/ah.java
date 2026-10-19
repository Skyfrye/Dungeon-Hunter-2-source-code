package com.gameloft.android.GAND.GloftD2SS;

import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.widget.ImageButton;

/* JADX INFO: loaded from: classes.dex */
final class ah implements View$OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ CharSequence[][] f44a;
    final /* synthetic */ CharSequence[][] b;
    final /* synthetic */ CharSequence[][] c;
    final /* synthetic */ CharSequence[][] d;
    final /* synthetic */ CharSequence[][] e;
    final /* synthetic */ GLiveMain f;

    ah(GLiveMain gLiveMain, CharSequence[][] charSequenceArr, CharSequence[][] charSequenceArr2, CharSequence[][] charSequenceArr3, CharSequence[][] charSequenceArr4, CharSequence[][] charSequenceArr5) {
        this.f = gLiveMain;
        this.f44a = charSequenceArr;
        this.b = charSequenceArr2;
        this.c = charSequenceArr3;
        this.d = charSequenceArr4;
        this.e = charSequenceArr5;
    }

    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                ((ImageButton) view).setBackgroundResource(2130837564);
                return true;
            case 1:
                ((ImageButton) view).setBackgroundResource(2130837563);
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight() || GLiveMain.be) {
                    return true;
                }
                GLiveMain.be = true;
                AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this.f.aT);
                alertDialog$Builder.setTitle(this.f.getString(GLiveMain.cz[GLiveMain.bQ], new Object[]{this}));
                if (GLiveMain.v.compareTo("1") == 0) {
                    if (GLiveMain.x.compareTo("1") == 0) {
                        alertDialog$Builder.setItems(this.f44a[GLiveMain.bQ], new ai(this));
                    } else {
                        alertDialog$Builder.setItems(this.c[GLiveMain.bQ], new ak(this));
                    }
                } else if (GLiveMain.w.compareTo("1") == 0) {
                    alertDialog$Builder.setItems(this.d[GLiveMain.bQ], new al(this));
                } else {
                    alertDialog$Builder.setItems(this.e[GLiveMain.bQ], new am(this));
                }
                alertDialog$Builder.setOnCancelListener(new an(this));
                AlertDialog alertDialogCreate = alertDialog$Builder.create();
                GLiveMain.bK = alertDialogCreate;
                alertDialogCreate.show();
                return true;
            case 2:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    ((ImageButton) view).setBackgroundResource(2130837563);
                } else {
                    ((ImageButton) view).setBackgroundResource(2130837564);
                }
                return true;
            default:
                return false;
        }
    }
}
