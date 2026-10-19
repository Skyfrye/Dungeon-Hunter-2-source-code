package com.gameloft.android.GAND.GloftD2SS;

/* JADX INFO: loaded from: classes.dex */
final class g extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f102a;
    final /* synthetic */ int b;
    final /* synthetic */ int c;

    g(int i, int i2, int i3) {
        this.f102a = i;
        this.b = i2;
        this.c = i3;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            if (GLMediaPlayer.f7a[this.f102a] != null && this.f102a == 221 && GLMediaPlayer.f7a[this.f102a].isPlaying()) {
                return;
            }
            if (GLMediaPlayer.f7a[this.f102a] == null || GLMediaPlayer.b[this.f102a] == 7) {
                GLMediaPlayer.loadSoundBig(this.f102a);
            }
            if (GLMediaPlayer.b[this.f102a] == 5 || GLMediaPlayer.b[this.f102a] == 6 || GLMediaPlayer.b[this.f102a] == 8 || GLMediaPlayer.b[this.f102a] == 9) {
                float f = this.b == 1 ? GLMediaPlayer.g / GLMediaPlayer.P : GLMediaPlayer.f / GLMediaPlayer.P;
                GLMediaPlayer.f7a[this.f102a].seekTo(0);
                GLMediaPlayer.f7a[this.f102a].setVolume(f, f);
                GLMediaPlayer.e[this.f102a] = this.b;
                GLMediaPlayer.f7a[this.f102a].setLooping(this.c == 1);
                GLMediaPlayer.f7a[this.f102a].start();
                GLMediaPlayer.b[this.f102a] = 6;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
