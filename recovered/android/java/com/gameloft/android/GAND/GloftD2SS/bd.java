package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
final class bd implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MyVideoView f67a;

    bd(MyVideoView myVideoView) {
        this.f67a = myVideoView;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        if (MyVideoView.access$200(this.f67a) != null) {
            MyVideoView.access$200(this.f67a).seekTo(MyVideoView.access$200(this.f67a).getCurrentPosition() - 15000);
        }
    }
}
