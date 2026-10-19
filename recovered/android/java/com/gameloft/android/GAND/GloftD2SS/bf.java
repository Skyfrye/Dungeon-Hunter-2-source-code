package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
final class bf implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MyVideoView f69a;

    bf(MyVideoView myVideoView) {
        this.f69a = myVideoView;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        if (MyVideoView.access$200(this.f69a) != null) {
            MyVideoView.access$200(this.f69a).pause();
        }
    }
}
