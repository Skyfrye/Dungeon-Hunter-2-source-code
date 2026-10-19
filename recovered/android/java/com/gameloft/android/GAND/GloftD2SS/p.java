package com.gameloft.android.GAND.GloftD2SS;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.widget.ImageButton;

/* JADX INFO: loaded from: classes.dex */
final class p implements View$OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain f166a;

    p(GLiveMain gLiveMain) {
        this.f166a = gLiveMain;
    }

    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                ((ImageButton) view).setBackgroundResource(2130837509);
                return true;
            case 1:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    return true;
                }
                ((ImageButton) view).setBackgroundResource(2130837508);
                if (!GLiveMain.aG.empty()) {
                    GLiveMain.aD = (String) GLiveMain.aG.pop();
                    GLiveMain.aI = true;
                    GLiveMain.f20a.loadUrl(GLiveMain.aD);
                    GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - Integer.valueOf(((Integer) GLiveMain.aH.pop()).intValue() + 1).intValue());
                }
                if (GLiveMain.aQ.intValue() < 2) {
                    GLiveMain.f.removeView(GLiveMain.g);
                    GLiveMain.f.removeView(GLiveMain.h);
                    GLiveMain.o = 0;
                    GLiveMain.aR = true;
                }
                return true;
            case 2:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    ((ImageButton) view).setBackgroundResource(2130837508);
                } else {
                    ((ImageButton) view).setBackgroundResource(2130837509);
                }
                return true;
            default:
                return false;
        }
    }
}
