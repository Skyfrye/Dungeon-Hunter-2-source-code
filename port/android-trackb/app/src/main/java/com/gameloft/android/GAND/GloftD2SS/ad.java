package com.gameloft.android.GAND.GloftD2SS;

import android.app.AlertDialog;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;

final class ad implements View.OnTouchListener {

    final /* synthetic */ CharSequence[][] f40a;
    final /* synthetic */ CharSequence[][] b;
    final /* synthetic */ GLiveMain c;

    ad(GLiveMain gLiveMain, CharSequence[][] charSequenceArr, CharSequence[][] charSequenceArr2) {
        this.c = gLiveMain;
        this.f40a = charSequenceArr;
        this.b = charSequenceArr2;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                ((ImageButton) view).setBackgroundResource(bp.recommend_on);
                return true;
            case 1:
                ((ImageButton) view).setBackgroundResource(bp.recommend);
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight() || GLiveMain.bf) {
                    return true;
                }
                GLiveMain.bf = true;
                AlertDialog.Builder builder = new AlertDialog.Builder(this.c.aT);
                builder.setTitle(this.c.getString(GLiveMain.cC[GLiveMain.bQ], new Object[]{this}));
                if (GLiveMain.needToRemoveFacebook()) {
                    builder.setItems(this.f40a[GLiveMain.bQ], new ae(this));
                } else {
                    builder.setItems(this.b[GLiveMain.bQ], new af(this));
                }
                builder.setOnCancelListener(new ag(this));
                AlertDialog alertDialogCreate = builder.create();
                GLiveMain.bK = alertDialogCreate;
                alertDialogCreate.show();
                return true;
            case 2:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    ((ImageButton) view).setBackgroundResource(bp.recommend);
                } else {
                    ((ImageButton) view).setBackgroundResource(bp.recommend_on);
                }
                return true;
            default:
                return false;
        }
    }
}
