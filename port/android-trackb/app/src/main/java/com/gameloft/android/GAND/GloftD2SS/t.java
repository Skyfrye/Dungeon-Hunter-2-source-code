package com.gameloft.android.GAND.GloftD2SS;

import android.view.View;

final class t implements View.OnClickListener {

    final /* synthetic */ GLiveMain f170a;

    t(GLiveMain gLiveMain) {
        this.f170a = gLiveMain;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f170a.a(view.getId());
    }
}
