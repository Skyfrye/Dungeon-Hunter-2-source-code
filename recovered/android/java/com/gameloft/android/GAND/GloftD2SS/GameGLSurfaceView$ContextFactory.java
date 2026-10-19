package com.gameloft.android.GAND.GloftD2SS;

import android.opengl.GLSurfaceView$EGLContextFactory;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: loaded from: classes.dex */
public class GameGLSurfaceView$ContextFactory implements GLSurfaceView$EGLContextFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f25a = 12440;

    @Override // android.opengl.GLSurfaceView$EGLContextFactory
    public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
        GameGLSurfaceView.checkEglError("Before eglCreateContext", egl10);
        EGLContext eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{f25a, 2, 12344});
        GameGLSurfaceView.checkEglError("After eglCreateContext", egl10);
        return eGLContextEglCreateContext;
    }

    @Override // android.opengl.GLSurfaceView$EGLContextFactory
    public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
        egl10.eglDestroyContext(eGLDisplay, eGLContext);
    }
}
