package com.gameloft.android.GAND.GloftD2SS;

import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;

final class j implements View.OnTouchListener {

    final /* synthetic */ GLiveMain f160a;

    j(GLiveMain gLiveMain) {
        this.f160a = gLiveMain;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                ((ImageButton) view).setBackgroundResource(bp.info_on);
                return true;
            case 1:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    return true;
                }
                ((ImageButton) view).setBackgroundResource(bp.info);
                GLiveMain.f20a.loadUrl("http://livewebapp.gameloft.com/glive/info/");
                return true;
            case 2:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    ((ImageButton) view).setBackgroundResource(bp.info);
                    return true;
                }
                ((ImageButton) view).setBackgroundResource(bp.info_on);
                return true;
            default:
                return false;
        }
    }
}
