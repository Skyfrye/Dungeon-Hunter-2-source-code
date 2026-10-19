.class final Lcom/gameloft/android/GAND/GloftD2SS/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/ax;->a:Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->ChangeMusic(I)I

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->g:I

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->h:I

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->GetSongName(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->nativeDisplayMusicTitle([B)V

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->g:I

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/MediaPlayList;->h:I

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->playAList(II)V

    return-void
.end method
