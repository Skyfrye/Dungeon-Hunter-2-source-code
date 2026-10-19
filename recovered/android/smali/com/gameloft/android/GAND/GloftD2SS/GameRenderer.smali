.class public Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static a:Landroid/content/Context; = null

.field public static final b:Z = false

.field public static final c:I = 0x19

.field public static final d:I = 0x28

.field static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->nativeGameRenderer()V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->nativeConfig()V

    return-void
.end method

.method public static native nativeConfig()V
.end method

.method public static native nativeDone()V
.end method

.method public static native nativeInit(I)V
.end method

.method public static native nativeOnDrawFrame()V
.end method

.method public static native nativeRender()V
.end method

.method public static native nativeResize(II)V
.end method


# virtual methods
.method public native nativeGameRenderer()V
.end method

.method public native nativeGetJNIEnv()V
.end method

.method public native nativeOnSurfaceChanged(II)V
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->e:Z

    if-nez v0, :cond_0

    invoke-interface {p1, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    :cond_0
    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->p:I

    if-eq v0, v2, :cond_1

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->p:I

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeKeyDown(I)V

    :cond_1
    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->q:I

    if-eq v0, v2, :cond_2

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->q:I

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeKeyUp(I)V

    :cond_2
    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->q:I

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->p:I

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->nativeRender()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->nativeOnSurfaceChanged(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->nativeGetJNIEnv()V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->init()V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeInit(I)V

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->nativeInit(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
