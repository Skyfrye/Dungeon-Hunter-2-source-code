.class final Lcom/gameloft/android/GAND/GloftD2SS/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bi;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bi;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->access$200(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->M:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->w:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bi;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    const-class v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bi;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bi;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->finish()V

    :cond_0
    return-void
.end method
