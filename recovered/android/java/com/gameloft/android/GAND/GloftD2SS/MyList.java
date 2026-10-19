package com.gameloft.android.GAND.GloftD2SS;

import android.media.MediaPlayer;
import android.media.MediaPlayer$OnCompletionListener;

/* JADX INFO: loaded from: classes.dex */
class MyList implements MediaPlayer$OnCompletionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f31a;

    MyList(int i) {
        this.f31a = i;
    }

    public static MyList getMyList(int i) {
        return new MyList(i);
    }

    @Override // android.media.MediaPlayer$OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        new bb(this).start();
    }
}
