.class final Lcom/gameloft/android/GAND/GloftD2SS/bc;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bc;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bc;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->access$000(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bc;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->access$100(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
