package com.gameloft.android.GAND.GloftD2SS;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
final class bc extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MyVideoView f66a;

    bc(MyVideoView myVideoView) {
        this.f66a = myVideoView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        super.handleMessage(message);
        if (MyVideoView.access$000(this.f66a) == 1) {
            MyVideoView.access$100(this.f66a).sendEmptyMessageDelayed(0, 100L);
        }
    }
}
