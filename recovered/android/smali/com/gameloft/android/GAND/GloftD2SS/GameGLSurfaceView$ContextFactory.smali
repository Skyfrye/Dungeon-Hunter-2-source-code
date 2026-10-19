.class public Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ContextFactory;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3098

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ContextFactory;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4

    const/4 v3, 0x2

    const-string v0, "Before eglCreateContext"

    invoke-static {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ContextFactory;->a:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/16 v1, 0x3038

    aput v1, v0, v3

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    const-string v1, "After eglCreateContext"

    invoke-static {v1, p1}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-object v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
