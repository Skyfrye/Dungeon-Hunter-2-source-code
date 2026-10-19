package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
final class bh implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MyVideoView f71a;

    bh(MyVideoView myVideoView) {
        this.f71a = myVideoView;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        if (MyVideoView.access$200(this.f71a) != null) {
            MyVideoView.access$200(this.f71a).stopPlayback();
            MyVideoView.access$202(this.f71a, null);
        }
    }
}
