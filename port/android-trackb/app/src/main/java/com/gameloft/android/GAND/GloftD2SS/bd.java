package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;

final class bd implements View.OnClickListener {

    final /* synthetic */ MyVideoView f67a;

    bd(MyVideoView myVideoView) {
        this.f67a = myVideoView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f67a.f != null) {
            this.f67a.f.seekTo(this.f67a.f.getCurrentPosition() - 15000);
        }
    }
}
