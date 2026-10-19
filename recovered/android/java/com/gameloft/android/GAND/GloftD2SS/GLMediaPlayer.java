package com.gameloft.android.GAND.GloftD2SS;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.os.Build;
import java.io.File;
import java.util.Locale;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
class GLMediaPlayer {
    public static final int A = 0;
    public static final float B = 1.0f;
    public static final float C = 1.0f;
    public static final float D = 1.0f;
    public static final int E = 0;
    public static final int F = 1;
    public static final int G = 2;
    public static AudioManager J = null;
    public static int K = 0;
    public static int L = 0;
    public static String N = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static MediaPlayer[] f7a = null;
    public static int[] b = null;
    public static int[] c = null;
    public static int[] d = null;
    public static int[] e = null;
    public static final int h = 0;
    public static final int i = 1;
    public static final int j = 2;
    public static final int k = 3;
    public static final int l = 4;
    public static final int m = 5;
    public static final int n = 6;
    public static final int o = 7;
    public static final int p = 8;
    public static final int q = 9;
    public static int r = 0;
    public static int t = 0;
    public static int u = 0;
    public static SoundPool v = null;
    static int[] w = null;
    static Vector[] x = null;
    public static final int y = 20;
    public static final int z = 3;
    public static float f = 0.0f;
    public static float g = 0.0f;
    public static int s = 0;
    static int H = 0;
    static boolean I = true;
    public static boolean M = false;
    public static boolean O = false;
    static float P = 100.0f;
    public static String Q = null;

    GLMediaPlayer() {
    }

    public static void ResumeMovie() {
        try {
            Intent intent = new Intent(DungeonHunter2.w, (Class<?>) MyVideoView.class);
            intent.putExtra("video_name", N);
            DungeonHunter2.w.startActivity(intent);
        } catch (Exception e2) {
        }
    }

    public static void SoundUpdate() {
        if (J == null) {
            J = (AudioManager) GameRenderer.f26a.getSystemService("audio");
        }
        if (J.getRingerMode() != 0 && J.getRingerMode() != 1) {
            t = 0;
            J.setStreamMute(3, false);
        } else if (t == 0) {
            t++;
            J.setStreamMute(3, true);
        }
    }

    public static void destroySoundPool() {
        stopAllBig(-1);
        if (v != null) {
            releaseSoundPool();
            v.release();
            v = null;
        }
        I = false;
    }

    public static int detectPhoneLang() {
        Locale locale = Locale.getDefault();
        String iSO3Language = locale.getISO3Language();
        String iSO3Country = locale.getISO3Country();
        if (iSO3Language.equals("eng")) {
            return 0;
        }
        if (iSO3Language.equals("fra")) {
            return 2;
        }
        if (iSO3Language.equals("deu")) {
            return 1;
        }
        if (iSO3Language.equals("ita")) {
            return 4;
        }
        if (iSO3Language.equals("spa")) {
            return 3;
        }
        if (iSO3Language.equals("jpn")) {
            return 5;
        }
        return (iSO3Language.equals("zho") && iSO3Country.equals("CHN")) ? 7 : 0;
    }

    public static String getSDFolder() {
        return "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files/";
    }

    public static int getWidth() {
        return GameGLSurfaceView.f23a;
    }

    static void init() {
        nativeInit(0);
        r = nativeGetTotalSounds();
        u = nativeGetTotalSoundsOfSameInstance();
        w = new int[r];
        x = new Vector[r];
        f7a = new MediaPlayer[r];
        b = new int[r];
        c = new int[r];
        e = new int[r];
        d = new int[r];
        initSoundPoolArray();
        t = 0;
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str.equals("Motorola")) {
            str2.equals("Droid");
        }
        P = 100.0f;
        for (int i2 = 0; i2 < r; i2++) {
            c[i2] = 0;
            e[i2] = 0;
            d[i2] = 0;
        }
        J = (AudioManager) GameRenderer.f26a.getSystemService("audio");
    }

    public static void init(int i2, int i3) {
        r = i2;
        u = i3;
        w = new int[r];
        x = new Vector[r];
        f7a = new MediaPlayer[r];
        b = new int[r];
        initSoundPoolArray();
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str.equals("Motorola")) {
            str2.equals("Droid");
        }
        P = 100.0f;
        J = (AudioManager) GameRenderer.f26a.getSystemService("audio");
    }

    static void initSoundPoolArray() {
        v = new SoundPool(20, 3, 0);
        for (int i2 = 0; i2 < r; i2++) {
            w[i2] = -1;
            x[i2] = new Vector();
        }
        I = true;
    }

    private static int isMediaPlaying(int i2) {
        try {
            return (f7a[i2] == null || b[i2] == 2 || !f7a[i2].isPlaying()) ? 0 : 1;
        } catch (Exception e2) {
            return 0;
        }
    }

    private static int isSoundLoaded(int i2, int i3) {
        return (I && w[i2] >= 0) ? 0 : -1;
    }

    private static int isSoundLoadedBig(int i2) {
        return (f7a[i2] == null || b[i2] == 0 || b[i2] == 1 || b[i2] == 4 || b[i2] == 7 || b[i2] == 2) ? false : true ? 0 : -1;
    }

    private static int loadMovie(String str, int i2) {
        try {
            String str2 = getSDFolder() + "/" + str;
            s = i2;
            Intent intent = new Intent(DungeonHunter2.w, (Class<?>) MyVideoView.class);
            N = str2;
            intent.putExtra("video_name", str2);
            DungeonHunter2.w.startActivity(intent);
            return 1;
        } catch (Exception e2) {
            return 0;
        }
    }

    public static void loadSound(int i2, int i3) {
        loadSound(i2, i3, GameRenderer.f26a);
    }

    public static void loadSound(int i2, int i3, Context context) {
        try {
            if (I && w[i2] < 0) {
                w[i2] = v.load("/sdcard/gameloft/games/shrekkarting/sounds/" + Sounddefs.f33a[i2], 1);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void loadSoundBig(int i2) {
        try {
            if (f7a[i2] == null) {
                if (new File("/sdcard/gameloft/games/GloftD2HP/data/sounds/" + Sounddefs.f33a[i2]).exists()) {
                    f7a[i2] = new MediaPlayer();
                    b[i2] = 0;
                    f7a[i2].setDataSource("/sdcard/android/data/com.gameloft.android.GAND.GloftD2HP/files/" + Sounddefs.f33a[i2]);
                    b[i2] = 4;
                    f7a[i2].prepare();
                    H = i2;
                    f7a[i2].setOnCompletionListener(new MyList(i2));
                    b[i2] = 5;
                }
            } else if (b[i2] == 7) {
                f7a[i2].prepare();
                b[i2] = 5;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void loadSoundBig(int i2, Context context) {
        try {
            if (f7a[i2] == null) {
                if (f7a[i2] != null) {
                    H = i2;
                    f7a[i2].setOnCompletionListener(new f());
                    b[i2] = 5;
                }
            } else if (b[i2] == 7) {
                f7a[i2].prepare();
                b[i2] = 5;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static native int nativeGetTotalSounds();

    public static native int nativeGetTotalSoundsOfSameInstance();

    public static native void nativeInit(int i2);

    public static native void nativeSetStopOnMusic(int i2);

    private static void pauseSound(int i2, int i3) {
        try {
            if (I && x[i2] != null && x[i2].size() > 0 && i3 < x[i2].size() && ((Integer) x[i2].elementAt(i3)).intValue() > 0) {
                v.pause(((Integer) x[i2].elementAt(i3)).intValue());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void pauseSoundBig(int i2) {
        for (int i3 = 0; i3 < r; i3++) {
            try {
                if (f7a[i3] != null && b[i3] == 6) {
                    O = false;
                    stopSoundBig(i3);
                    if (O) {
                        c[i3] = 1;
                    } else {
                        continue;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
    }

    public static void playSound(int i2, int i3, float f2) {
        int iPlay = 0;
        if (DungeonHunter2.n) {
            return;
        }
        try {
            if (!I || x == null || x[i2] == null) {
                return;
            }
            if (w[i2] < 0) {
                loadSound(i2, i3);
            }
            float f3 = f2 / P;
            while (iPlay == 0) {
                if (w[i2] >= 0) {
                    if (i3 >= x[i2].size()) {
                        while (i3 > x[i2].size()) {
                            x[i2].addElement(-1);
                        }
                        iPlay = v.play(w[i2], (float) (((double) f3) * 0.95d), (float) (((double) f3) * 0.95d), 0, -1, 1.0f);
                        x[i2].addElement(Integer.valueOf(iPlay));
                    } else {
                        stopSound(i2, i3);
                        iPlay = v.play(w[i2], (float) (((double) f3) * 0.95d), (float) (((double) f3) * 0.95d), 0, -1, 1.0f);
                        x[i2].setElementAt(Integer.valueOf(iPlay), i3);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void playSoundBig(int i2, float f2, int i3, int i4) {
        if (i2 == 603) {
            i4 = 1;
        }
        if (J.getRingerMode() != 0) {
            J.getRingerMode();
        }
        if (DungeonHunter2.n) {
            return;
        }
        new g(i2, i4, i3).start();
    }

    static void releaseSoundPool() {
        for (int i2 = 0; i2 < r; i2++) {
            if (w[i2] >= 0) {
                unloadSound(i2, 0);
            }
        }
        for (int i3 = 0; i3 < r; i3++) {
            x[i3].clear();
            x[i3] = null;
        }
    }

    private static void resetSound(int i2) {
        try {
            if (f7a[i2] == null) {
                return;
            }
            if (b[i2] == 5 || b[i2] == 6 || b[i2] == 8 || b[i2] == 9) {
                f7a[i2].seekTo(0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void restoreMasterVolume() {
        if (J == null) {
            J = (AudioManager) GameRenderer.f26a.getSystemService("audio");
        }
        if (t != 0) {
            J.setStreamMute(3, false);
        }
    }

    private static void resumeSound(int i2, int i3) {
        try {
            if (I && x[i2] != null && x[i2].size() > 0 && i3 < x[i2].size() && ((Integer) x[i2].elementAt(i3)).intValue() > 0) {
                v.resume(((Integer) x[i2].elementAt(i3)).intValue());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void resumeSoundBig(int i2) {
        if (i2 != 9999) {
            try {
                playSoundBig(i2, e[i2], 1, 1);
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        for (int i3 = 0; i3 < r; i3++) {
            if (c[i3] == 1) {
                try {
                    playSoundBig(i3, e[i3], d[i3], e[i3]);
                    d[i3] = 0;
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            c[i3] = 0;
        }
    }

    private static void setPitch(int i2, int i3, float f2) {
        try {
            if (I && x[i2] != null && x[i2].size() > 0 && i3 < x[i2].size() && ((Integer) x[i2].elementAt(i3)).intValue() > 0) {
                v.setRate(((Integer) x[i2].elementAt(i3)).intValue(), f2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void setVolume(int i2, int i3, float f2) {
        if (J.getRingerMode() == 0 || J.getRingerMode() == 1) {
            f2 = 0.0f;
        }
        try {
            if (x[i2] != null && I && x[i2] != null && x[i2].size() > 0 && i3 < x[i2].size() && ((Integer) x[i2].elementAt(i3)).intValue() > 0) {
                float f3 = f2 / P;
                v.setVolume(((Integer) x[i2].elementAt(i3)).intValue(), (float) (((double) f3) * 0.95d), (float) (((double) f3) * 0.95d));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void setVolumeBig(int i2, float f2, int i3) {
        if (i3 == 1) {
            g = f2;
        } else {
            f = f2;
        }
        if (f7a == null || J == null) {
            return;
        }
        if (J.getRingerMode() == 0 || J.getRingerMode() == 1) {
            f2 = 0.0f;
        }
        if (i2 != -1) {
            try {
                if (f7a == null || f7a[i2] == null || i2 > f7a.length || i3 != 1) {
                    return;
                }
                float f3 = f2 / P;
                f7a[i2].setVolume(f3, f3);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void stopAllBig(int i2) {
        if (f7a == null || b == null) {
            return;
        }
        for (int i3 = 0; i3 < r; i3++) {
            if (i3 != i2 && b[i3] != 0 && b[i3] != 7) {
                stopSoundBig(i3);
            }
        }
    }

    private static void stopAllPool(int i2) {
        if (I) {
            for (int i3 = 0; i3 < r; i3++) {
                if (i3 != i2 && w != null && w[i3] >= 0 && x != null && x[i3] != null) {
                    int size = x[i3].size();
                    for (int i4 = 0; i4 < size; i4++) {
                        stopSound(i3, i4);
                    }
                }
            }
        }
    }

    public static void stopAllSounds() {
        stopAllBig(-1);
    }

    private static void stopSound(int i2, int i3) {
        try {
            if (x[i2] != null && I && x[i2] != null && x[i2].size() > 0 && i3 < x[i2].size() && ((Integer) x[i2].elementAt(i3)).intValue() > 0) {
                v.stop(((Integer) x[i2].elementAt(i3)).intValue());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void stopSoundBig(int i2) {
        try {
            if (f7a[i2] == null) {
                return;
            }
            if (b[i2] == 5 || b[i2] == 6 || b[i2] == 8 || b[i2] == 9) {
                if (f7a[i2].isLooping()) {
                    d[i2] = 1;
                }
                f7a[i2].stop();
                f7a[i2].release();
                f7a[i2] = null;
                b[i2] = 7;
                O = true;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void unloadSound(int i2, int i3) {
        try {
            if (I && w[i2] >= 0) {
                v.unload(w[i2]);
                w[i2] = -1;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void unloadSoundBig(int i2) {
    }
}
