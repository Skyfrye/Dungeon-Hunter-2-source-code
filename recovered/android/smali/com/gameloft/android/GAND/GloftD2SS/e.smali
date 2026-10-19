.class final Lcom/gameloft/android/GAND/GloftD2SS/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

.field private final b:Landroid/bluetooth/BluetoothServerSocket;


# direct methods
.method public constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)V
    .locals 4

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/e;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$400(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$300(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/e;->b:Landroid/bluetooth/BluetoothServerSocket;

    return-void

    :catch_0
    move-exception v1

    const-string v2, "GLBluetoothService"

    const-string v3, "listen() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "GLBluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/e;->b:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLBluetoothService"

    const-string v2, "close() of server failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final run()V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "GLBluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BEGIN mAcceptThread"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ListenThread"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/e;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/e;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$000(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/e;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$000(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)I

    move-result v0

    if-ne v0, v3, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/e;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$000(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)I

    move-result v0

    if-ne v0, v3, :cond_2

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/e;->b:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/e;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/e;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$500(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Landroid/bluetooth/BluetoothSocket;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "GLBluetoothService"

    const-string v2, "accept() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const-string v0, "GLBluetoothService"

    const-string v1, "END ListenThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
