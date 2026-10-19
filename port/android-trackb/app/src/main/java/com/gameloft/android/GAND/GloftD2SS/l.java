package com.gameloft.android.GAND.GloftD2SS;

import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;

final class l implements View.OnTouchListener {

    final /* synthetic */ GLiveMain f162a;

    l(GLiveMain gLiveMain) {
        this.f162a = gLiveMain;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                ((ImageButton) view).setBackgroundResource(bp.selected);
                return true;
            case 1:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    ((ImageButton) view).setBackgroundResource(bp.unselected);
                    return true;
                }
                GLiveMain.aV.setBackgroundResource(bp.unselected);
                GLiveMain.aW.setBackgroundResource(bp.unselected);
                GLiveMain.aX.setBackgroundResource(bp.unselected);
                GLiveMain.aQ = 0;
                GLiveMain.aF = 0;
                GLiveMain.f20a.clearHistory();
                GLiveMain.f20a.loadUrl(GLiveMain.al);
                if (GLiveMain.o == 1) {
                    GLiveMain.f.removeView(GLiveMain.g);
                    GLiveMain.f.removeView(GLiveMain.h);
                    GLiveMain.o = 0;
                }
                GLiveMain.f20a.requestFocus();
                return true;
            default:
                return false;
        }
    }
}
