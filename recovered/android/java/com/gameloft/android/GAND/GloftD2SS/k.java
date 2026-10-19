package com.gameloft.android.GAND.GloftD2SS;

import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.widget.ImageButton;

/* JADX INFO: loaded from: classes.dex */
final class k implements View$OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain f161a;

    k(GLiveMain gLiveMain) {
        this.f161a = gLiveMain;
    }

    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                ((ImageButton) view).setBackgroundResource(2130837512);
                return true;
            case 1:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    return true;
                }
                GLiveMain.cf = false;
                new Intent(this.f161a, (Class<?>) DungeonHunter2.class);
                this.f161a.finish();
                ((ImageButton) view).setBackgroundResource(2130837507);
                GLiveMain.c.removeView(GLiveMain.d);
                GLiveMain.c.removeView(GLiveMain.f);
                GLiveMain.c.removeView(GLiveMain.e);
                GLiveMain.c.removeView(GLiveMain.f20a);
                return true;
            case 2:
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    ((ImageButton) view).setBackgroundResource(2130837507);
                    return true;
                }
                ((ImageButton) view).setBackgroundResource(2130837512);
                return true;
            default:
                return false;
        }
    }
}
