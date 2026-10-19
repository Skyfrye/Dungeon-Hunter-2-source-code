package com.gameloft.android.GAND.GloftD2SS;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.view.MotionEvent;
import javax.microedition.khronos.egl.EGL10;

/* JADX INFO: loaded from: classes.dex */
class GameGLSurfaceView extends GLSurfaceView {
    public static boolean c;
    public static int d;
    GameRenderer e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f23a = -1;
    public static int b = -1;
    public static int f = 0;
    public static boolean g = false;

    public GameGLSurfaceView(Context context) {
        super(context);
        this.e = new GameRenderer(context);
        setEGLContextFactory(new GameGLSurfaceView$ContextFactory());
        setEGLConfigChooser(new GameGLSurfaceView$ConfigChooser(5, 6, 5, 0, 16, 8));
        setRenderer(this.e);
    }

    private void a(boolean z, int i, int i2) {
        setEGLContextFactory(new GameGLSurfaceView$ContextFactory());
        setEGLConfigChooser(new GameGLSurfaceView$ConfigChooser(5, 6, 5, 0, 16, 8));
        setRenderer(this.e);
    }

    public static void checkEglError(String str, EGL10 egl10) {
        while (egl10.eglGetError() != 12288) {
        }
    }

    public static native void nativeOnTouch(int i, int i2, int i3, long j, int i4, int i5);

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        String str = Build.MANUFACTURER + "_" + Build.MODEL;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        f23a = i;
        b = i2;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int i = action & 255;
        int pointerCount = motionEvent.getPointerCount();
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        System.out.println("------------------------------------Count = " + pointerCount);
        motionEvent.getEventTime();
        if (action == 0) {
            try {
                nativeOnTouch(1, (int) motionEvent.getX(0), (int) motionEvent.getY(0), 0L, 0, 0);
            } catch (Exception e) {
            }
        }
        if (i == 5) {
            try {
                nativeOnTouch(1, (int) motionEvent.getX(actionIndex), (int) motionEvent.getY(actionIndex), pointerId, 0, 0);
            } catch (Exception e2) {
            }
        }
        if (action == 2) {
            for (int i2 = 0; i2 < pointerCount; i2++) {
                try {
                    nativeOnTouch(2, (int) motionEvent.getX(i2), (int) motionEvent.getY(i2), motionEvent.getPointerId(i2), 0, 0);
                } catch (Exception e3) {
                }
            }
        }
        if (i == 6) {
            try {
                nativeOnTouch(0, (int) motionEvent.getX(actionIndex), (int) motionEvent.getY(actionIndex), pointerId, 0, 0);
            } catch (Exception e4) {
            }
        }
        if (action != 1) {
            return true;
        }
        for (int i3 = 0; i3 < pointerCount; i3++) {
            try {
                nativeOnTouch(0, (int) motionEvent.getX(i3), (int) motionEvent.getY(i3), motionEvent.getPointerId(i3), 0, 0);
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
        return true;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        System.out.println("**********************************FFFFFFFFFFocus : " + z);
        GameRenderer.e = z;
        if (!z) {
            GLMediaPlayer.stopAllSounds();
            DungeonHunter2.nativePause(1);
            return;
        }
        if (GLiveMain.cf) {
            System.out.println("Focus-----------------launchGLLive");
            DungeonHunter2.OpenGLive(DungeonHunter2.x);
        } else if (IGPActivity.f28a) {
            System.out.println("Focus-----------------launchIGP");
            DungeonHunter2.OpenIGP(DungeonHunter2.y);
        } else {
            if (GLMediaPlayer.M) {
                return;
            }
            DungeonHunter2.nativeResume(1);
        }
    }
}
