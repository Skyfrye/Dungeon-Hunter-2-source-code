.class final Lcom/gameloft/android/GAND/GloftD2SS/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bf;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bf;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->access$200(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bf;->a:Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->access$200(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    return-void
.end method
