package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
final class be implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MyVideoView f68a;

    be(MyVideoView myVideoView) {
        this.f68a = myVideoView;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        MyVideoView.access$300(this.f68a);
    }
}
