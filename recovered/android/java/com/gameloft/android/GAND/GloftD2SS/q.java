package com.gameloft.android.GAND.GloftD2SS;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.widget.ImageButton;

/* JADX INFO: loaded from: classes.dex */
final class q implements View$OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain f167a;

    q(GLiveMain gLiveMain) {
        this.f167a = gLiveMain;
    }

    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                ((ImageButton) view).setBackgroundResource(2130837565);
                return true;
            case 1:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    return true;
                }
                ((ImageButton) view).setBackgroundResource(2130837562);
                GLiveMain.f20a.loadUrl(GLiveMain.af + "/edit");
                return true;
            case 2:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    ((ImageButton) view).setBackgroundResource(2130837562);
                    return true;
                }
                ((ImageButton) view).setBackgroundResource(2130837565);
                return true;
            default:
                return false;
        }
    }
}
