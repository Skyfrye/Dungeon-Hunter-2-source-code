.class final Lcom/gameloft/android/GAND/GloftD2SS/bb;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/MyList;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/MyList;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bb;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bb;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyList;

    iget v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/MyList;->a:I

    const/16 v1, 0x125

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bb;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyList;

    iget v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/MyList;->a:I

    const/16 v1, 0x121

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bb;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyList;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/MyList;->a:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bb;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyList;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/MyList;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bb;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyList;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/MyList;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->a:[Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bb;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyList;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/MyList;->a:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bb;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyList;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/MyList;->a:I

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
