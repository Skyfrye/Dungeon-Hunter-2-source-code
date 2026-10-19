package com.gameloft.android.GAND.GloftD2SS;

import android.media.MediaPlayer;
import android.media.MediaPlayer$OnCompletionListener;

/* JADX INFO: loaded from: classes.dex */
final class ax implements MediaPlayer$OnCompletionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MediaPlayList f60a;

    ax(MediaPlayList mediaPlayList) {
        this.f60a = mediaPlayList;
    }

    @Override // android.media.MediaPlayer$OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        MediaPlayList.d.reset();
        MediaPlayList.ChangeMusic(1);
        Musicplayer.nativeDisplayMusicTitle(Musicplayer.GetSongName(MediaPlayList.g, MediaPlayList.h));
        Musicplayer.playAList(MediaPlayList.g, MediaPlayList.h);
    }
}
