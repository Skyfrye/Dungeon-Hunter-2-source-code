.class final Lcom/gameloft/android/GAND/GloftD2SS/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

.field private final b:Landroid/bluetooth/BluetoothSocket;

.field private final c:Ljava/io/InputStream;

.field private final d:Ljava/io/OutputStream;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Landroid/bluetooth/BluetoothSocket;)V
    .locals 5

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->b:Landroid/bluetooth/BluetoothSocket;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->b:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->convertMacAddressToInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$802(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;I)I

    const-string v1, "GLBluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create ConnectedThread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->b:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$800(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->c:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->d:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_1
    const-string v3, "GLBluetoothService"

    const-string v4, "temp sockets not created"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->e:Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$1202(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->b:Landroid/bluetooth/BluetoothSocket;

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

.method public final a([B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->d:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLBluetoothService"

    const-string v2, "Exception during write"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final run()V
    .locals 6

    const/16 v5, 0x8

    const/4 v2, 0x0

    const-string v0, "GLBluetoothService"

    const-string v1, "BEGIN mConnectedThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->e:Z

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->e:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$000(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)I

    move-result v1

    if-eq v1, v5, :cond_1

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$900(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)[B

    move-result-object v1

    if-nez v1, :cond_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->c:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const-string v2, "GLBluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Read "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_0

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$000(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)I

    move-result v1

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$902(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;[B)[B

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$800(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ReceiveData(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GLBluetoothService"

    const-string v2, "disconnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$1000(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)V

    :cond_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$1102(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Lcom/gameloft/android/GAND/GloftD2SS/d;)Lcom/gameloft/android/GAND/GloftD2SS/d;

    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    monitor-enter v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/d;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v3, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$902(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;[B)[B

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method
