package com.gameloft.android.GAND.GloftD2SS;

import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
final class bi implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MyVideoView f72a;

    bi(MyVideoView myVideoView) {
        this.f72a = myVideoView;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        if (MyVideoView.access$200(this.f72a) != null) {
            GLMediaPlayer.M = false;
            DungeonHunter2.w.getSystemService("audio");
            this.f72a.startActivity(new Intent(this.f72a, (Class<?>) DungeonHunter2.class));
            this.f72a.finish();
        }
    }
}
