.class final Lcom/gameloft/android/GAND/GloftD2SS/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/b;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/b;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$000(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/b;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$000(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/b;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$200(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "GLBluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
