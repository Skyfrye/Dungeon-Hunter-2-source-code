.class Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;
.super Ljava/lang/Object;


# static fields
.field public static final A:I = 0x0

.field public static final B:F = 1.0f

.field public static final C:F = 1.0f

.field public static final D:F = 1.0f

.field public static final E:I = 0x0

.field public static final F:I = 0x1

.field public static final G:I = 0x2

.field static H:I = 0x0

.field static I:Z = false

.field public static J:Landroid/media/AudioManager; = null

.field public static K:I = 0x0

.field public static L:I = 0x0

.field public static M:Z = false

.field public static N:Ljava/lang/String; = null

.field public static O:Z = false

.field static P:F = 0.0f

.field public static Q:Ljava/lang/String; = null

.field public static a:[Landroid/media/MediaPlayer; = null

.field public static b:[I = null

.field public static c:[I = null

.field public static d:[I = null

.field public static e:[I = null

.field public static f:F = 0.0f

.field public static g:F = 0.0f

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field public static final m:I = 0x5

.field public static final n:I = 0x6

.field public static final o:I = 0x7

.field public static final p:I = 0x8

.field public static final q:I = 0x9

.field public static r:I = 0x0

.field public static s:I = 0x0

.field public static t:I = 0x0

.field public static u:I = 0x0

.field public static v:Landroid/media/SoundPool; = null

.field static w:[I = null

.field static x:[Ljava/util/Vector; = null

.field public static final y:I = 0x14

.field public static final z:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->f:F

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->g:F

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->s:I

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->H:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->M:Z

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->O:Z

    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->P:F

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->Q:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ResumeMovie()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->w:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    const-class v2, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "video_name"

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->w:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static SoundUpdate()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    :cond_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v3, :cond_3

    :cond_1
    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->t:I

    if-nez v0, :cond_2

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->t:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->t:I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->t:I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_0
.end method

.method public static destroySoundPool()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->stopAllBig(I)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->releaseSoundPool()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    return-void
.end method

.method public static detectPhoneLang()I
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "fra"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v3, "deu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "ita"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-string v3, "spa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const-string v3, "jpn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const-string v3, "zho"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CHN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static getSDFolder()Ljava/lang/String;
    .locals 1

    const-string v0, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files/"

    return-object v0
.end method

.method public static getWidth()I
    .locals 1

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->a:I

    return v0
.end method

.method static init()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->nativeInit(I)V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->nativeGetTotalSounds()I

    move-result v0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->nativeGetTotalSoundsOfSameInstance()I

    move-result v0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->u:I

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    new-array v0, v0, [Ljava/util/Vector;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    new-array v0, v0, [Landroid/media/MediaPlayer;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->c:[I

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->e:[I

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->d:[I

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->initSoundPoolArray()V

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->t:I

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Motorola"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Droid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->P:F

    move v0, v1

    :goto_0
    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->c:[I

    aput v1, v2, v0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->e:[I

    aput v1, v2, v0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->d:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    return-void
.end method

.method public static init(II)V
    .locals 3

    sput p0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    sput p1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->u:I

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    new-array v0, v0, [Ljava/util/Vector;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    new-array v0, v0, [Landroid/media/MediaPlayer;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->initSoundPoolArray()V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Motorola"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Droid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->P:F

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    return-void
.end method

.method static initSoundPoolArray()V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0x14

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v0}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    :goto_0
    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    return-void
.end method

.method private static isMediaPlaying(I)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v1, v1, p0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static isSoundLoaded(II)I
    .locals 2

    const/4 v0, -0x1

    sget-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    aget v1, v1, p0

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSoundLoadedBig(I)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v2, v2, p0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v2, v2, p0

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v2, v2, p0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v2, v2, p0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v2, v2, p0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static loadMovie(Ljava/lang/String;I)I
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->getSDFolder()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput p1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->s:I

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->w:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    const-class v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->N:Ljava/lang/String;

    const-string v2, "video_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->w:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadSound(II)V
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->loadSound(IILandroid/content/Context;)V

    return-void
.end method

.method public static loadSound(IILandroid/content/Context;)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    aget v0, v0, p0

    if-gez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/gameloft/games/shrekkarting/sounds/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/Sounddefs;->a:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadSoundBig(I)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/gameloft/games/GloftD2HP/data/sounds/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/Sounddefs;->a:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    aput-object v1, v0, p0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    const/4 v1, 0x0

    aput v1, v0, p0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/android/data/com.gameloft.android.GAND.GloftD2HP/files/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/Sounddefs;->a:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    const/4 v1, 0x4

    aput v1, v0, p0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sput p0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->H:I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/MyList;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/MyList;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    const/4 v1, 0x5

    aput v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    const/4 v1, 0x5

    aput v1, v0, p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static loadSoundBig(ILandroid/content/Context;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sput p0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->H:I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/f;

    invoke-direct {v1}, Lcom/gameloft/android/GAND/GloftD2SS/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    const/4 v1, 0x5

    aput v1, v0, p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    const/4 v1, 0x5

    aput v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static native nativeGetTotalSounds()I
.end method

.method public static native nativeGetTotalSoundsOfSameInstance()I
.end method

.method public static native nativeInit(I)V
.end method

.method public static native nativeSetStopOnMusic(I)V
.end method

.method private static pauseSound(II)V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->pause(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static pauseSoundBig(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v1, v1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->O:Z

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->stopSoundBig(I)V

    sget-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->O:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->c:[I

    const/4 v2, 0x1

    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static playSound(IIF)V
    .locals 10

    const/4 v0, 0x0

    const-wide v8, 0x3fee666666666666L    # 0.95

    sget-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->n:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    aget v1, v1, p0

    if-gez v1, :cond_2

    invoke-static {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->loadSound(II)V

    :cond_2
    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->P:F

    div-float v7, p2, v1

    :cond_3
    :goto_1
    if-nez v0, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    aget v1, v1, p0

    if-ltz v1, :cond_3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    :goto_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le p1, v0, :cond_4

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    aget v1, v1, p0

    float-to-double v2, v7

    mul-double/2addr v2, v8

    double-to-float v2, v2

    float-to-double v3, v7

    mul-double/2addr v3, v8

    double-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v1, v1, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->stopSound(II)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    aget v1, v1, p0

    float-to-double v2, v7

    mul-double/2addr v2, v8

    double-to-float v2, v2

    float-to-double v3, v7

    mul-double/2addr v3, v8

    double-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v1, v1, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static playSoundBig(IFII)V
    .locals 1

    const/16 v0, 0x25b

    if-ne p0, v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    :cond_1
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->n:Z

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/g;

    invoke-direct {v0, p0, p3, p2}, Lcom/gameloft/android/GAND/GloftD2SS/g;-><init>(III)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static releaseSoundPool()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    aget v2, v2, v0

    if-ltz v2, :cond_0

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->unloadSound(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static resetSound(I)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static restoreMasterVolume()V
    .locals 3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    :cond_0
    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->t:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_1
    return-void
.end method

.method private static resumeSound(II)V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->resume(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static resumeSoundBig(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x270f

    if-ne p0, v0, :cond_1

    move v0, v1

    :goto_0
    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->c:[I

    aget v2, v2, v0

    if-ne v2, v5, :cond_0

    :try_start_0
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->e:[I

    aget v2, v2, v0

    int-to-float v2, v2

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->d:[I

    aget v3, v3, v0

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->e:[I

    aget v4, v4, v0

    invoke-static {v0, v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->playSoundBig(IFII)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->d:[I

    const/4 v3, 0x0

    aput v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->c:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->e:[I

    aget v0, v0, p0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->playSoundBig(IFII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static setPitch(IIF)V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/media/SoundPool;->setRate(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static setVolume(IIF)V
    .locals 8

    const-wide v6, 0x3fee666666666666L    # 0.95

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->P:F

    div-float v1, p2, v0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    float-to-double v3, v1

    mul-double/2addr v3, v6

    double-to-float v3, v3

    float-to-double v4, v1

    mul-double/2addr v4, v6

    double-to-float v1, v4

    invoke-virtual {v2, v0, v3, v1}, Landroid/media/SoundPool;->setVolume(IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static setVolumeBig(IFI)V
    .locals 2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    sput p1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->g:F

    :goto_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    sput p1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->f:F

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->J:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 p1, 0x0

    :cond_4
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    array-length v0, v0

    if-gt p0, v0, :cond_0

    if-ne p2, v1, :cond_0

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->P:F

    div-float v0, p1, v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static stopAllBig(I)V
    .locals 3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    if-ge v0, v1, :cond_0

    if-eq v0, p0, :cond_2

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v1, v1, v0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v1, v1, v0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->stopSoundBig(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static stopAllPool(I)V
    .locals 4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    :goto_0
    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->r:I

    if-ge v0, v2, :cond_0

    if-eq v0, p0, :cond_2

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    if-eqz v2, :cond_2

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    aget v2, v2, v0

    if-ltz v2, :cond_2

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->stopSound(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stopAllSounds()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->stopAllBig(I)V

    return-void
.end method

.method private static stopSound(II)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->x:[Ljava/util/Vector;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static stopSoundBig(I)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->d:[I

    const/4 v1, 0x1

    aput v1, v0, p0

    :cond_3
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    const/4 v1, 0x7

    aput v1, v0, p0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->O:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static unloadSound(II)V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->I:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    aget v0, v0, p0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->v:Landroid/media/SoundPool;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    aget v1, v1, p0

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->w:[I

    const/4 v1, -0x1

    aput v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static unloadSoundBig(I)V
    .locals 0

    return-void
.end method
