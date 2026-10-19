package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
final class bg implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MyVideoView f70a;

    bg(MyVideoView myVideoView) {
        this.f70a = myVideoView;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        if (MyVideoView.access$200(this.f70a) != null) {
            MyVideoView.access$200(this.f70a).seekTo(MyVideoView.access$200(this.f70a).getCurrentPosition() + 15000);
        }
    }
}
