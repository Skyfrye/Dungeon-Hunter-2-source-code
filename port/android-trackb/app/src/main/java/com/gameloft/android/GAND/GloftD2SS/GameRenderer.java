package com.gameloft.android.GAND.GloftD2SS;

import android.content.Context;
import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class GameRenderer implements GLSurfaceView.Renderer {
    public static final boolean b = false;
    public static final int c = 25;
    public static final int d = 40;

    public static Context f26a = null;
    static boolean e = true;

    // Track B: after the EGL context was re-created (resume from multitasking) every GL object of the game is gone until the
    // interrupt splash (GS_InterruptLoading, started by nativeResume) relinks the shaders and reloads the textures. Frames the
    // game draws before that use dead GL names and come out solid white, and that white stays on screen while ReinitDriver blocks the
    // GL thread. So until nativeResume has run for the new context only black frames are presented (the original showed the splash).
    static volatile boolean holdUntilResume = false;
    private static boolean surfaceCreatedBefore = false;
    private static long holdSince = 0L;
    private static int surfaceW = 0, surfaceH = 0;

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

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        if (!e) {
            gl10.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
            gl10.glClear(16640);
        }
        if (holdUntilResume) {
            if (android.os.SystemClock.uptimeMillis() - holdSince < 3000) {
                gl10.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                gl10.glClear(16640);
                return;
            }
            holdUntilResume = false;   // safety: never keep the game frozen if the resume call did not come
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

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        surfaceW = i;
        surfaceH = i2;
        nativeOnSurfaceChanged(i, i2);
        if (holdUntilResume) {
            presentBlackFrame();   // a resized surface drops the earlier black buffer; queue one of the final size
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        // Track B: present one black frame right away. On resume the first nativeRender relinks every shader (ReinitDriver, a second or
        // more on a phone) before anything is drawn; until a buffer is queued the new SurfaceView shows white. The original never
        // showed white (it shows the splash); black here, then the game's own interrupt splash takes over.
        presentBlackFrame();
        if (surfaceCreatedBefore && !e) {
            holdSince = android.os.SystemClock.uptimeMillis();
            holdUntilResume = true;
        }
        surfaceCreatedBefore = true;
        nativeGetJNIEnv();
        GLMediaPlayer.init();
        DungeonHunter2.nativeInit(DungeonHunter2.isDemo() ? 1 : 0);
        nativeInit(1);
    }

    private static void presentBlackFrame() {
        try {
            android.opengl.GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
            android.opengl.GLES20.glClear(android.opengl.GLES20.GL_COLOR_BUFFER_BIT);
            android.opengl.EGL14.eglSwapBuffers(android.opengl.EGL14.eglGetCurrentDisplay(),
                    android.opengl.EGL14.eglGetCurrentSurface(android.opengl.EGL14.EGL_DRAW));
        } catch (Throwable t) {
        }
    }
}
