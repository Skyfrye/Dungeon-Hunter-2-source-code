.class final Lcom/gameloft/android/GAND/GloftD2SS/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bj;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->M:Z

    const-string v0, "MyVideoView"

    const-string v1, "****************onCompletion()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bj;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    const-class v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bj;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bj;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->finish()V

    return-void
.end method
