.class final Lcom/gameloft/android/GAND/GloftD2SS/installer/k;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/k;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/k;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$000(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/k;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/k;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$000(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/k;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$002(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/k;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$100(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V

    :cond_2
    return-void
.end method
