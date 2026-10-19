package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;

final class bh implements View.OnClickListener {

    final /* synthetic */ MyVideoView f71a;

    bh(MyVideoView myVideoView) {
        this.f71a = myVideoView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f71a.f != null) {
            this.f71a.f.stopPlayback();
            this.f71a.f = null;
        }
    }
}
