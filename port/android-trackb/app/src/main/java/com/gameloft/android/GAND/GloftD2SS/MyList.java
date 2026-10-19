package com.gameloft.android.GAND.GloftD2SS;

import android.media.MediaPlayer;

class MyList implements MediaPlayer.OnCompletionListener {

    int f31a;

    MyList(int i) {
        this.f31a = i;
    }

    public static MyList getMyList(int i) {
        return new MyList(i);
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        new bb(this).start();
    }
}
