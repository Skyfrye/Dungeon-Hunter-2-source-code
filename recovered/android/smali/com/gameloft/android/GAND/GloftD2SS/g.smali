.class final Lcom/gameloft/android/GAND/GloftD2SS/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    iput p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    iput p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->b:I

    iput p3, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->c:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    const/16 v3, 0xdd

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    aget v2, v2, v3

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    :cond_2
    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->loadSoundBig(I)V

    :cond_3
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    aget v2, v2, v3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    aget v2, v2, v3

    if-eq v2, v4, :cond_4

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    aget v2, v2, v3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    aget v2, v2, v3

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    :cond_4
    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->b:I

    if-ne v2, v0, :cond_5

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->g:F

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->P:F

    div-float/2addr v2, v3

    :goto_1
    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    iget v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    iget v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->e:[I

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    iget v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->b:I

    aput v4, v2, v3

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->c:I

    if-ne v3, v0, :cond_6

    :goto_2
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/g;->a:I

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->f:F

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->P:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    div-float/2addr v2, v3

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method
