package com.gameloft.android.GAND.GloftD2SS;

import android.database.Cursor;
import android.media.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public class MediaPlayList {
    static int c;
    static MediaPlayer d;
    static String[] e;
    static int[] f;
    static int g;
    static int i;
    public static int j;
    public static int n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Cursor f29a;
    int b;
    private final String[] o = {"_id", "_data", "_display_name", "_size", "_data"};
    public static int h = -1;
    public static int k = -1;
    public static int l = -1;
    public static String m = "";

    MediaPlayList(Cursor cursor) {
        this.f29a = cursor;
        if (this.f29a == null) {
            return;
        }
        d = new MediaPlayer();
        a();
    }

    public static int ChangeMusic(int i2) {
        if (h == -1) {
            return -1;
        }
        int i3 = h + i2;
        h = i3;
        if (i3 == i) {
            h = 0;
        }
        if (h == -1) {
            h = i - 1;
        }
        return h;
    }

    public static int GetCurrentPlaylist() {
        return g;
    }

    public static String[] GetPlayListName() {
        return e;
    }

    public static void SetPlaylist(int i2) {
        g = i2;
        if (i2 == -1) {
            h = -1;
        }
    }

    private void a() {
        System.gc();
        c = this.f29a.getCount();
        e = new String[c];
        f = new int[c];
        for (int i2 = 0; i2 < c; i2++) {
            this.f29a.moveToPosition(i2);
            f[i2] = this.f29a.getInt(this.f29a.getColumnIndex("_id"));
            e[i2] = this.f29a.getString(this.f29a.getColumnIndex("name"));
        }
        d.setOnCompletionListener(new ax(this));
    }

    public static int getListID(int i2) {
        if (f == null || i2 >= f.length || i2 < 0) {
            return -1;
        }
        return f[i2];
    }

    public static void pauseMusic() {
        try {
            n = d.getCurrentPosition();
            d.pause();
            j = -1;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void playAList(Cursor cursor) {
        k = 1;
        playAList(cursor, 0);
    }

    public static void playAList(Cursor cursor, int i2) {
        k = 1;
        cursor.moveToFirst();
        i = cursor.getCount();
        m = null;
        if (i == 0) {
            return;
        }
        cursor.moveToPosition(i2);
        m = cursor.getString(4);
        h = i2;
        cursor.close();
        playMusic(m, 0);
    }

    public static void playMusic(String str) {
        playMusic(str, 0, -1);
    }

    public static void playMusic(String str, int i2) {
        playMusic(str, i2, -1);
    }

    public static void playMusic(String str, int i2, int i3) {
        if (str == null || g == -1) {
            return;
        }
        try {
            if (d.isPlaying()) {
                d.reset();
            }
            d.setDataSource(str);
            d.prepare();
            d.start();
            if (i3 == 1) {
                d.pause();
            }
            if (i2 > 0) {
                Thread.sleep(100L);
                d.seekTo(i2);
            }
            if (i3 != 1) {
                j = 1;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void reloadAndPlayMusic(String str, int i2, int i3) {
        playMusic(str, i2, i3);
    }

    public static void resumeMusic() {
        try {
            d.start();
            j = 1;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void stopMusic() {
        try {
            d.reset();
            j = -1;
            k = -1;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
