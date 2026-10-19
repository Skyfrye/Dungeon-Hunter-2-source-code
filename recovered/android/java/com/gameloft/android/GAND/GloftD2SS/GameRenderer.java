package com.gameloft.android.GAND.GloftD2SS;

import android.content.Context;
import android.opengl.GLSurfaceView$Renderer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes.dex */
public class GameRenderer implements GLSurfaceView$Renderer {
    public static final boolean b = false;
    public static final int c = 25;
    public static final int d = 40;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Context f26a = null;
    static boolean e = true;

    public GameRenderer(Context context) {
        f26a = context;
        nativeGameRenderer();
        nativeConfig();
    }

    public static native void nativeConfig();

    public static native void nativeDone();

    public static native void nativeInit(int i);

    public static native void nativeOnDrawFrame();

    public static native void nativeRender();

    public static native void nativeResize(int i, int i2);

    public native void nativeGameRenderer();

    public native void nativeGetJNIEnv();

    public native void nativeOnSurfaceChanged(int i, int i2);

    @Override // android.opengl.GLSurfaceView$Renderer
    public void onDrawFrame(GL10 gl10) {
        if (!e) {
            gl10.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
            gl10.glClear(16640);
        }
        if (DungeonHunter2.p != -1) {
            DungeonHunter2.nativeKeyDown(DungeonHunter2.p);
        }
        if (DungeonHunter2.q != -1) {
            DungeonHunter2.nativeKeyUp(DungeonHunter2.q);
        }
        DungeonHunter2.q = -1;
        DungeonHunter2.p = -1;
        nativeRender();
    }

    @Override // android.opengl.GLSurfaceView$Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        nativeOnSurfaceChanged(i, i2);
    }

    @Override // android.opengl.GLSurfaceView$Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        nativeGetJNIEnv();
        GLMediaPlayer.init();
        DungeonHunter2.nativeInit(DungeonHunter2.isDemo() ? 1 : 0);
        nativeInit(1);
    }
}
