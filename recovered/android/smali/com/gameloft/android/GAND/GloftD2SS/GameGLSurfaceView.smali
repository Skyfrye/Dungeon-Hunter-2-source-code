.class Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;


# static fields
.field public static a:I

.field public static b:I

.field public static c:Z

.field public static d:I

.field public static f:I

.field public static g:Z


# instance fields
.field e:Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->a:I

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->b:I

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->f:I

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v1, 0x5

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;

    invoke-direct {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->e:Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ContextFactory;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ContextFactory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move v3, v1

    invoke-direct/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->e:Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method private a(ZII)V
    .locals 7

    const/4 v1, 0x5

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ContextFactory;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ContextFactory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move v3, v1

    invoke-direct/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->e:Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method public static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 2

    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void
.end method

.method public static native nativeOnTouch(IIIJII)V
.end method


# virtual methods
.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    sput p1, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->a:I

    sput p2, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->b:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v9, v8, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------------------------------------Count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    if-nez v8, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->nativeOnTouch(IIIJII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    const/4 v0, 0x5

    if-ne v9, v0, :cond_1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    int-to-long v3, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->nativeOnTouch(IIIJII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    const/4 v0, 0x0

    move v7, v0

    :goto_2
    if-ge v7, v10, :cond_2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    int-to-long v3, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->nativeOnTouch(IIIJII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x6

    if-ne v9, v0, :cond_3

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    int-to-long v3, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->nativeOnTouch(IIIJII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_4
    const/4 v0, 0x1

    if-ne v8, v0, :cond_4

    const/4 v0, 0x0

    move v7, v0

    :goto_5
    if-ge v7, v10, :cond_4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    int-to-long v3, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->nativeOnTouch(IIIJII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_4
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "**********************************FFFFFFFFFFocus : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput-boolean p1, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->e:Z

    if-nez p1, :cond_1

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->stopAllSounds()V

    invoke-static {v3}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativePause(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cf:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Focus-----------------launchGLLive"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->x:I

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->OpenGLive(I)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->a:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Focus-----------------launchIGP"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->y:I

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->OpenIGP(I)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->M:Z

    if-nez v0, :cond_0

    invoke-static {v3}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeResume(I)V

    goto :goto_0
.end method
