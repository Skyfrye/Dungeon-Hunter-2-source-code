package com.gameloft.android.GAND.GloftD2SS;

import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;

final class q implements View.OnTouchListener {

    final /* synthetic */ GLiveMain f167a;

    q(GLiveMain gLiveMain) {
        this.f167a = gLiveMain;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                ((ImageButton) view).setBackgroundResource(bp.interact_on);
                return true;
            case 1:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    return true;
                }
                ((ImageButton) view).setBackgroundResource(bp.interact);
                GLiveMain.f20a.loadUrl(GLiveMain.af + "/edit");
                return true;
            case 2:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    ((ImageButton) view).setBackgroundResource(bp.interact);
                    return true;
                }
                ((ImageButton) view).setBackgroundResource(bp.interact_on);
                return true;
            default:
                return false;
        }
    }
}
