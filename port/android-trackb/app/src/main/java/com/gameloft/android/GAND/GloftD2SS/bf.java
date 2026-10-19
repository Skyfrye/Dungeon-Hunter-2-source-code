package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;

final class bf implements View.OnClickListener {

    final /* synthetic */ MyVideoView f69a;

    bf(MyVideoView myVideoView) {
        this.f69a = myVideoView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f69a.f != null) {
            this.f69a.f.pause();
        }
    }
}
