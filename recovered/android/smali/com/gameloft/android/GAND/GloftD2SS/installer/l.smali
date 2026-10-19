.class final Lcom/gameloft/android/GAND/GloftD2SS/installer/l;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/l;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/l;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget-boolean v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/l;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bi:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/l;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/l;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$200(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;I)V

    goto :goto_0
.end method
