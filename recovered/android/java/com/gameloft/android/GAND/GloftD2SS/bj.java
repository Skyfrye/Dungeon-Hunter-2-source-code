package com.gameloft.android.GAND.GloftD2SS;

import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer$OnCompletionListener;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class bj implements MediaPlayer$OnCompletionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MyVideoView f79a;

    bj(MyVideoView myVideoView) {
        this.f79a = myVideoView;
    }

    @Override // android.media.MediaPlayer$OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        GLMediaPlayer.M = false;
        Log.i("MyVideoView", "****************onCompletion()");
        this.f79a.startActivity(new Intent(this.f79a, (Class<?>) DungeonHunter2.class));
        this.f79a.finish();
    }
}
