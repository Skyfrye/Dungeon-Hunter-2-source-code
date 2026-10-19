package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;

final class bg implements View.OnClickListener {

    final /* synthetic */ MyVideoView f70a;

    bg(MyVideoView myVideoView) {
        this.f70a = myVideoView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f70a.f != null) {
            this.f70a.f.seekTo(this.f70a.f.getCurrentPosition() + 15000);
        }
    }
}
