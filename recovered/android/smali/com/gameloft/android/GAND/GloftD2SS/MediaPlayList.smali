.class public Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;
.super Ljava/lang/Object;


# static fields
.field static c:I

.field static d:Landroid/media/MediaPlayer;

.field static e:[Ljava/lang/String;

.field static f:[I

.field static g:I

.field public static h:I

.field static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:Ljava/lang/String;

.field public static n:I


# instance fields
.field a:Landroid/database/Cursor;

.field b:I

.field private final o:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->h:I

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->k:I

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->l:I

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->m:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->o:[Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->a:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->a()V

    goto :goto_0
.end method

.method public static ChangeMusic(I)I
    .locals 3

    const/4 v0, -0x1

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->h:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->h:I

    add-int/2addr v1, p0

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->h:I

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->i:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->h:I

    :cond_1
    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->h:I

    if-ne v1, v0, :cond_2

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->i:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->h:I

    :cond_2
    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->h:I

    goto :goto_0
.end method

.method public static GetCurrentPlaylist()I
    .locals 1

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->g:I

    return v0
.end method

.method public static GetPlayListName()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public static SetPlaylist(I)V
    .locals 1

    const/4 v0, -0x1

    sput p0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->g:I

    if-ne p0, v0, :cond_0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->h:I

    :cond_0
    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->c:I

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->c:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->e:[Ljava/lang/String;

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->c:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->f:[I

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->a:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->f:[I

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->a:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->a:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->a:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->a:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->e:[Ljava/lang/String;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/ax;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/ax;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public static getListID(I)I
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->f:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->f:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    if-gez p0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->f:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static pauseMusic()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->n:I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static playAList(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->k:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->playAList(Landroid/database/Cursor;I)V

    return-void
.end method

.method public static playAList(Landroid/database/Cursor;I)V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->k:I

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->i:I

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->m:Ljava/lang/String;

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->i:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->m:Ljava/lang/String;

    sput p1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->h:I

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->m:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->playMusic(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static playMusic(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->playMusic(Ljava/lang/String;II)V

    return-void
.end method

.method public static playMusic(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->playMusic(Ljava/lang/String;II)V

    return-void
.end method

.method public static playMusic(Ljava/lang/String;II)V
    .locals 3

    const/4 v2, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    if-ne p2, v2, :cond_3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_3
    if-lez p1, :cond_4

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_4
    if-eq p2, v2, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static reloadAndPlayMusic(Ljava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->playMusic(Ljava/lang/String;II)V

    return-void
.end method

.method public static resumeMusic()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static stopMusic()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->j:I

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
