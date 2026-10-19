package com.gameloft.android.GAND.GloftD2SS;

import android.os.Handler;
import android.os.Message;

final class bc extends Handler {

    final /* synthetic */ MyVideoView f66a;

    bc(MyVideoView myVideoView) {
        this.f66a = myVideoView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        super.handleMessage(message);
        if (MyVideoView.access$000(this.f66a) == 1) {
            this.f66a.p.sendEmptyMessageDelayed(0, 100L);
        }
    }
}
