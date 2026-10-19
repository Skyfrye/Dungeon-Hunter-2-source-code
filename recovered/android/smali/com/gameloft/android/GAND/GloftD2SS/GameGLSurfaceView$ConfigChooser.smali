.class public Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static g:I

.field private static h:[I


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field private i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x4

    sput v3, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->g:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->g:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->h:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->i:[I

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->a:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->b:I

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->d:I

    iput p5, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->e:I

    iput p6, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->f:I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->i:[I

    invoke-interface {p1, p2, p3, p4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->i:[I

    aget v0, v1, v0

    :cond_0
    return v0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 14

    const/4 v8, 0x0

    const/16 v7, 0x3e8

    move-object/from16 v0, p3

    array-length v10, v0

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v4, p3, v9

    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->e:I

    if-lt v11, v2, :cond_1

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->f:I

    if-lt v1, v2, :cond_1

    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->a:I

    sub-int v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->b:I

    sub-int v3, v12, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->c:I

    sub-int v3, v13, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->d:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v2

    if-ge v1, v7, :cond_1

    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v7, v1

    move-object v8, v4

    goto :goto_0

    :cond_0
    return-object v8

    :cond_1
    move v1, v7

    move-object v4, v8

    goto :goto_1
.end method

.method private b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11

    const/16 v10, 0x21

    const/4 v9, 0x1

    const/4 v1, 0x0

    array-length v3, p3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, p3, v2

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    new-array v0, v10, [Ljava/lang/String;

    const-string v6, "EGL_BUFFER_SIZE"

    aput-object v6, v0, v1

    const-string v6, "EGL_ALPHA_SIZE"

    aput-object v6, v0, v9

    const/4 v6, 0x2

    const-string v7, "EGL_BLUE_SIZE"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-string v7, "EGL_GREEN_SIZE"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "EGL_RED_SIZE"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, "EGL_DEPTH_SIZE"

    aput-object v7, v0, v6

    const/4 v6, 0x6

    const-string v7, "EGL_STENCIL_SIZE"

    aput-object v7, v0, v6

    const/4 v6, 0x7

    const-string v7, "EGL_CONFIG_CAVEAT"

    aput-object v7, v0, v6

    const/16 v6, 0x8

    const-string v7, "EGL_CONFIG_ID"

    aput-object v7, v0, v6

    const/16 v6, 0x9

    const-string v7, "EGL_LEVEL"

    aput-object v7, v0, v6

    const/16 v6, 0xa

    const-string v7, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v7, v0, v6

    const/16 v6, 0xb

    const-string v7, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v7, v0, v6

    const/16 v6, 0xc

    const-string v7, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v7, v0, v6

    const/16 v6, 0xd

    const-string v7, "EGL_NATIVE_RENDERABLE"

    aput-object v7, v0, v6

    const/16 v6, 0xe

    const-string v7, "EGL_NATIVE_VISUAL_ID"

    aput-object v7, v0, v6

    const/16 v6, 0xf

    const-string v7, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v7, v0, v6

    const/16 v6, 0x10

    const-string v7, "EGL_PRESERVED_RESOURCES"

    aput-object v7, v0, v6

    const/16 v6, 0x11

    const-string v7, "EGL_SAMPLES"

    aput-object v7, v0, v6

    const/16 v6, 0x12

    const-string v7, "EGL_SAMPLE_BUFFERS"

    aput-object v7, v0, v6

    const/16 v6, 0x13

    const-string v7, "EGL_SURFACE_TYPE"

    aput-object v7, v0, v6

    const/16 v6, 0x14

    const-string v7, "EGL_TRANSPARENT_TYPE"

    aput-object v7, v0, v6

    const/16 v6, 0x15

    const-string v7, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v7, v0, v6

    const/16 v6, 0x16

    const-string v7, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v7, v0, v6

    const/16 v6, 0x17

    const-string v7, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v7, v0, v6

    const/16 v6, 0x18

    const-string v7, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v7, v0, v6

    const/16 v6, 0x19

    const-string v7, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v7, v0, v6

    const/16 v6, 0x1a

    const-string v7, "EGL_MIN_SWAP_INTERVAL"

    aput-object v7, v0, v6

    const/16 v6, 0x1b

    const-string v7, "EGL_MAX_SWAP_INTERVAL"

    aput-object v7, v0, v6

    const/16 v6, 0x1c

    const-string v7, "EGL_LUMINANCE_SIZE"

    aput-object v7, v0, v6

    const/16 v6, 0x1d

    const-string v7, "EGL_ALPHA_MASK_SIZE"

    aput-object v7, v0, v6

    const/16 v6, 0x1e

    const-string v7, "EGL_COLOR_BUFFER_TYPE"

    aput-object v7, v0, v6

    const/16 v6, 0x1f

    const-string v7, "EGL_RENDERABLE_TYPE"

    aput-object v7, v0, v6

    const/16 v6, 0x20

    const-string v7, "EGL_CONFORMANT"

    aput-object v7, v0, v6

    new-array v6, v9, [I

    move v0, v1

    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_2

    aget v7, v5, v0

    invoke-interface {p1, p2, v4, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    const/16 v8, 0x3000

    if-ne v7, v8, :cond_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method private static printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    const/16 v2, 0x21

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "EGL_BUFFER_SIZE"

    aput-object v3, v2, v0

    const-string v3, "EGL_ALPHA_SIZE"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "EGL_BLUE_SIZE"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "EGL_GREEN_SIZE"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "EGL_RED_SIZE"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "EGL_DEPTH_SIZE"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "EGL_STENCIL_SIZE"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "EGL_CONFIG_CAVEAT"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "EGL_CONFIG_ID"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "EGL_LEVEL"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "EGL_NATIVE_RENDERABLE"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "EGL_NATIVE_VISUAL_ID"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "EGL_PRESERVED_RESOURCES"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "EGL_SAMPLES"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "EGL_SAMPLE_BUFFERS"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "EGL_SURFACE_TYPE"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "EGL_TRANSPARENT_TYPE"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "EGL_MIN_SWAP_INTERVAL"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "EGL_MAX_SWAP_INTERVAL"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "EGL_LUMINANCE_SIZE"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "EGL_ALPHA_MASK_SIZE"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "EGL_COLOR_BUFFER_TYPE"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "EGL_RENDERABLE_TYPE"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "EGL_CONFORMANT"

    aput-object v4, v2, v3

    new-array v2, v5, [I

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    aget v3, v1, v0

    invoke-interface {p0, p1, p2, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    const/16 v4, 0x3000

    if-ne v3, v4, :cond_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [I

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->h:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v4, v5, v4

    if-gtz v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->h:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-direct {p0, p1, p2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V

    invoke-direct {p0, p1, p2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method
