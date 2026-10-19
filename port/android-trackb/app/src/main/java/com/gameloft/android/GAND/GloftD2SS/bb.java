package com.gameloft.android.GAND.GloftD2SS;

final class bb extends Thread {

    final /* synthetic */ MyList f65a;

    bb(MyList myList) {
        this.f65a = myList;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            if (this.f65a.f31a == 293 || this.f65a.f31a == 289 || GLMediaPlayer.f7a[this.f65a.f31a] == null) {
                return;
            }
            GLMediaPlayer.f7a[this.f65a.f31a].stop();
            GLMediaPlayer.f7a[this.f65a.f31a].release();
            GLMediaPlayer.f7a[this.f65a.f31a] = null;
            GLMediaPlayer.b[this.f65a.f31a] = 7;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
