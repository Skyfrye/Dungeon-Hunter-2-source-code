package com.gameloft.android.GAND.GloftD2SS;

import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;

final class n implements View.OnTouchListener {

    final /* synthetic */ GLiveMain f164a;

    n(GLiveMain gLiveMain) {
        this.f164a = gLiveMain;
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
                GLiveMain.aU.setBackgroundResource(bp.unselected);
                GLiveMain.aV.setBackgroundResource(bp.unselected);
                GLiveMain.aX.setBackgroundResource(bp.unselected);
                GLiveMain.aQ = 0;
                GLiveMain.aF = 0;
                GLiveMain.f20a.clearHistory();
                GLiveMain.f20a.loadUrl("http://livewebapp.gameloft.com/glive/friends");
                if (GLiveMain.o != 1) {
                    return true;
                }
                GLiveMain.f.removeView(GLiveMain.g);
                GLiveMain.f.removeView(GLiveMain.h);
                GLiveMain.o = 0;
                return true;
            default:
                return false;
        }
    }
}
