.class final Lcom/gameloft/android/GAND/GloftD2SS/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

.field private final b:Landroid/bluetooth/BluetoothSocket;

.field private final c:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->c:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$300(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->b:Landroid/bluetooth/BluetoothSocket;

    return-void

    :catch_0
    move-exception v1

    const-string v2, "GLBluetoothService"

    const-string v3, "create() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->b:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLBluetoothService"

    const-string v2, "close() of connect socket failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final run()V
    .locals 4

    const-string v0, "GLBluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BEGIN mConnectThread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->c:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ConnectThread"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/c;->setName(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->b:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$702(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Lcom/gameloft/android/GAND/GloftD2SS/c;)Lcom/gameloft/android/GAND/GloftD2SS/c;

    const-string v0, "GLBluetoothService"

    const-string v2, "END mConnectThread"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->b:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$500(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Landroid/bluetooth/BluetoothSocket;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLBluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->c:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$600(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)V

    :try_start_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->b:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/c;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$702(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Lcom/gameloft/android/GAND/GloftD2SS/c;)Lcom/gameloft/android/GAND/GloftD2SS/c;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "GLBluetoothService"

    const-string v2, "unable to close() socket during connection failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
