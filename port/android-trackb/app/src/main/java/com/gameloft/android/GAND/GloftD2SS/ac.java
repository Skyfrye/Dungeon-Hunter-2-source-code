package com.gameloft.android.GAND.GloftD2SS;

import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsoluteLayout;
import android.widget.ImageButton;

final class ac implements View.OnTouchListener {

    final /* synthetic */ GLiveMain f39a;

    ac(GLiveMain gLiveMain) {
        this.f39a = gLiveMain;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                ((ImageButton) view).setBackgroundResource(bp.inbox_new_msg_on);
                return true;
            case 1:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    return true;
                }
                ((ImageButton) view).setBackgroundResource(bp.inbox_new_msg);
                GLiveMain.c.removeView(GLiveMain.f);
                GLiveMain.c.removeView(GLiveMain.d);
                GLiveMain.c.removeView(GLiveMain.e);
                GLiveMain.c.removeView(GLiveMain.f20a);
                AbsoluteLayout.LayoutParams layoutParams = new AbsoluteLayout.LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0);
                GLiveMain.m.clearFocus();
                GLiveMain.c.addView(GLiveMain.m, layoutParams);
                GLiveMain.m.requestFocus();
                GLiveMain.f20a.requestFocus();
                if (GLiveMain.bQ == 4 || GLiveMain.bQ == 7) {
                    GLiveMain.by = 55;
                } else {
                    GLiveMain.by = 40;
                }
                GLiveMain.bz = 8;
                GLiveMain.aO = 0;
                if (GLiveMain.aP >= 4) {
                    return true;
                }
                GLiveMain.k.updateViewLayout(GLiveMain.bA, new AbsoluteLayout.LayoutParams((int) (GLiveMain.E * 45.0f), (int) (GLiveMain.F * 46.0f), GLiveMain.B - ((int) (GLiveMain.E * 50.0f)), (int) (GLiveMain.F * 25.0f)));
                return true;
            case 2:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    ((ImageButton) view).setBackgroundResource(bp.inbox_new_msg);
                    return true;
                }
                ((ImageButton) view).setBackgroundResource(bp.inbox_new_msg_on);
                return true;
            default:
                return false;
        }
    }
}
