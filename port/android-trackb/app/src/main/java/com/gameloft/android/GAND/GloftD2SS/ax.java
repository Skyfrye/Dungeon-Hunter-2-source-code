package com.gameloft.android.GAND.GloftD2SS;

import android.media.MediaPlayer;

final class ax implements MediaPlayer.OnCompletionListener {

    final /* synthetic */ MediaPlayList f60a;

    ax(MediaPlayList mediaPlayList) {
        this.f60a = mediaPlayList;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        MediaPlayList.d.reset();
        MediaPlayList.ChangeMusic(1);
        Musicplayer.nativeDisplayMusicTitle(Musicplayer.GetSongName(MediaPlayList.g, MediaPlayList.h));
        Musicplayer.playAList(MediaPlayList.g, MediaPlayList.h);
    }
}
