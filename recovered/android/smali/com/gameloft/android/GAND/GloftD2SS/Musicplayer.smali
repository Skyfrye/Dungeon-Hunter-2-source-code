.class public Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

.field static b:[Ljava/lang/String;

.field static c:I

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

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

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChangeMusic(I)V
    .locals 2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->ChangeMusic(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->GetCurrentPlaylist()I

    move-result v1

    invoke-static {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->playAList(II)V

    goto :goto_0
.end method

.method public static GetNumPlaylists()I
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public static GetNumSongs(I)I
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->GetNumPlaylists()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->getListID(I)I

    move-result v0

    const-string v1, "external"

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->o:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->d:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static GetPlayListName(I)[B
    .locals 2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->GetNumPlaylists()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->b:[Ljava/lang/String;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->b:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static GetSongName(II)[B
    .locals 6

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->GetNumSongs(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->GetNumSongs(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->getListID(I)I

    move-result v0

    const-string v1, "external"

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->o:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->d:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static Getisplaying()I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static PauseMusicBG()V
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->j:I

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->l:I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->pauseMusic()V

    return-void
.end method

.method public static PlayBGMusic()V
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->GetCurrentPlaylist()I

    move-result v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->playAList(I)V

    return-void
.end method

.method public static ResumeMusicBG()V
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->resumeMusic()V

    return-void
.end method

.method public static SetPlaylist(I)V
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->SetPlaylist(I)V

    return-void
.end method

.method public static StopMusicBG()V
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->stopMusic()V

    return-void
.end method

.method public static initMediaList()V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "*"

    aput-object v1, v2, v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->o:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-direct {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;-><init>(Landroid/database/Cursor;)V

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->GetPlayListName()[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->nativeInitplayer()V

    return-void
.end method

.method public static native nativeDisplayMusicTitle([B)V
.end method

.method public static native nativeInitplayer()V
.end method

.method public static playAList(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->GetSongName(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->nativeDisplayMusicTitle([B)V

    invoke-static {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->playAList(II)V

    return-void
.end method

.method public static playAList(II)V
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->getListID(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "external"

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->o:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->d:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-static {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->playAList(Landroid/database/Cursor;I)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
