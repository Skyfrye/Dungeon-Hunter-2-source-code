.class public Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;
.super Ljava/lang/Object;


# static fields
.field public static final A:I = 0x9

.field private static final B:Z = true

.field private static final C:Ljava/lang/String; = "GLBluetoothService"

.field public static final a:Ljava/lang/String; = "|"

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = -0x1

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3

.field public static final m:I = 0x4

.field public static final n:I = 0x5

.field public static final o:I = 0x6

.field public static final p:I = 0x7

.field public static final q:I = 0x8

.field public static final r:I = 0x9

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:I = 0x3

.field public static final v:I = 0x4

.field public static final w:I = 0x5

.field public static final x:I = 0x6

.field public static final y:I = 0x7

.field public static final z:I = 0x8


# instance fields
.field private D:Ljava/util/UUID;

.field private E:Z

.field private F:I

.field private G:I

.field private H:I

.field private I:Landroid/bluetooth/BluetoothAdapter;

.field private J:Landroid/bluetooth/BluetoothDevice;

.field private K:Landroid/bluetooth/BluetoothServerSocket;

.field private L:Landroid/bluetooth/BluetoothSocket;

.field private M:Ljava/lang/String;

.field private N:Ljava/util/Vector;

.field private O:Ljava/util/HashMap;

.field private P:Ljava/util/HashMap;

.field private Q:Z

.field private R:I

.field private S:J

.field private T:Lcom/gameloft/android/GAND/GloftD2SS/c;

.field private U:Lcom/gameloft/android/GAND/GloftD2SS/e;

.field private V:Lcom/gameloft/android/GAND/GloftD2SS/d;

.field private W:Ljava/lang/Thread;

.field private final X:Landroid/content/BroadcastReceiver;

.field private Y:Z

.field private Z:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->J:Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->K:Landroid/bluetooth/BluetoothServerSocket;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->N:Ljava/util/Vector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->O:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->P:Ljava/util/HashMap;

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Q:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->S:J

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/a;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/a;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->W:Ljava/lang/Thread;

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/b;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/b;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->X:Landroid/content/BroadcastReceiver;

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Y:Z

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->D:Ljava/util/UUID;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->c:Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->d:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->J:Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->convertMacAddressToInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->G:I

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->M:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->E:Z

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->U:Lcom/gameloft/android/GAND/GloftD2SS/e;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothSocket;)V
    .locals 3

    const-string v0, "GLBluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connected() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/d;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->start()V

    return-void

    :cond_1
    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->convertMacAddressToInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    return v0
.end method

.method static synthetic access$100(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    if-eq v0, v4, :cond_1

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->S:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->S:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string v0, "GLBluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Callback "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    iput v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->S:J

    :cond_1
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    if-eq v0, v7, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    array-length v0, v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "GLBluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Msg "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "|"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    if-le v0, v5, :cond_6

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "GLBluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Function "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :sswitch_0
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Y:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->b()Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->N:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/c;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->N:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/c;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/c;->start()V

    goto/16 :goto_0

    :sswitch_1
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->a(I)V

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    if-ne v0, v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->P:Ljava/util/HashMap;

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->O:Ljava/util/HashMap;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    const-string v0, "GLBluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    goto/16 :goto_1

    :pswitch_2
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    if-ne v0, v6, :cond_2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->G:I

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->P:Ljava/util/HashMap;

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    const/16 v0, 0x8

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->U:Lcom/gameloft/android/GAND/GloftD2SS/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/e;->start()V

    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x9

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->c()V

    goto/16 :goto_1

    :pswitch_5
    const/16 v0, 0x8

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->S:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    goto/16 :goto_1

    :cond_6
    const-string v0, "GLBluetoothService"

    const-string v1, "Invalid msg data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)V
    .locals 3

    const/4 v2, 0x3

    const-string v0, "GLBluetoothService"

    const-string v1, "connectionLost()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    :cond_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->convertMacAddressToInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    goto :goto_0
.end method

.method static synthetic access$1102(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Lcom/gameloft/android/GAND/GloftD2SS/d;)Lcom/gameloft/android/GAND/GloftD2SS/d;
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$200(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->N:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->D:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Landroid/bluetooth/BluetoothSocket;)V
    .locals 3

    const-string v0, "GLBluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connected() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/d;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->start()V

    return-void

    :cond_1
    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->convertMacAddressToInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    goto :goto_0
.end method

.method static synthetic access$600(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)V
    .locals 2

    const-string v0, "GLBluetoothService"

    const-string v1, "connectionFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x9

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    goto :goto_0
.end method

.method static synthetic access$702(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Lcom/gameloft/android/GAND/GloftD2SS/c;)Lcom/gameloft/android/GAND/GloftD2SS/c;
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    return-object p1
.end method

.method static synthetic access$800(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    return v0
.end method

.method static synthetic access$802(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;I)I
    .locals 0

    iput p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    return p1
.end method

.method static synthetic access$900(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)[B
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    return-object v0
.end method

.method static synthetic access$902(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    return-object p1
.end method

.method public static convertMacAddressToInteger(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableDiscovery()V
    .locals 3

    const-string v0, "GLBluetoothService"

    const-string v1, "enableDiscovery()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private g()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    if-eq v0, v4, :cond_1

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->S:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->S:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string v0, "GLBluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Callback "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    iput v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->S:J

    :cond_1
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    if-eq v0, v7, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    array-length v0, v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "GLBluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Msg "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "|"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    if-le v0, v5, :cond_6

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "GLBluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Function "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :sswitch_0
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Y:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->b()Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->N:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/c;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->N:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/c;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/c;->start()V

    goto/16 :goto_0

    :sswitch_1
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->a(I)V

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    if-ne v0, v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->P:Ljava/util/HashMap;

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->O:Ljava/util/HashMap;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    const-string v0, "GLBluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    goto/16 :goto_1

    :pswitch_2
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    if-ne v0, v6, :cond_2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->G:I

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->P:Ljava/util/HashMap;

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    const/16 v0, 0x8

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->U:Lcom/gameloft/android/GAND/GloftD2SS/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/e;->start()V

    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x9

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->c()V

    goto/16 :goto_1

    :pswitch_5
    const/16 v0, 0x8

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->S:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    goto/16 :goto_1

    :cond_6
    const-string v0, "GLBluetoothService"

    const-string v1, "Invalid msg data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private h()V
    .locals 2

    const-string v0, "GLBluetoothService"

    const-string v1, "stopDiscovery()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Q:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Q:Z

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    const-string v0, "GLBluetoothService"

    const-string v1, "connectionFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x9

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    goto :goto_0
.end method

.method private j()V
    .locals 3

    const/4 v2, 0x3

    const-string v0, "GLBluetoothService"

    const-string v1, "connectionLost()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    :cond_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->convertMacAddressToInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    goto :goto_0
.end method

.method private k()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    array-length v0, v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "GLBluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Msg "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "|"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    if-le v0, v4, :cond_3

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "GLBluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Function "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    monitor-exit p0

    :cond_1
    return-void

    :pswitch_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    if-ne v0, v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_1
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->P:Ljava/util/HashMap;

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->O:Ljava/util/HashMap;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    const-string v0, "GLBluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    goto/16 :goto_0

    :pswitch_2
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    if-ne v0, v5, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->G:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->P:Ljava/util/HashMap;

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    const/16 v0, 0x8

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->U:Lcom/gameloft/android/GAND/GloftD2SS/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/e;->start()V

    goto/16 :goto_0

    :pswitch_3
    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    goto/16 :goto_0

    :pswitch_4
    const/16 v0, 0x9

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->c()V

    goto/16 :goto_0

    :pswitch_5
    const/16 v0, 0x8

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->S:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    goto/16 :goto_0

    :cond_3
    const-string v0, "GLBluetoothService"

    const-string v1, "Invalid msg data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public native ConnectionStateChanged(II)V
.end method

.method public native ReceiveData(I)V
.end method

.method public final a(I)V
    .locals 6

    const/4 v5, 0x5

    const-string v0, "GLBluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->O:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->O:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    const-string v1, "GLBluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device to connect found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/c;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    :cond_0
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/c;

    invoke-direct {v1, p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/c;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/c;->start()V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "GLBluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to join "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    invoke-virtual {p0, v5, p1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->ConnectionStateChanged(II)V

    const-string v0, "GLBluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find device to connect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "GLBluetoothService"

    const-string v1, "mFoundServices is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final a([B)V
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->E:Z

    const-string v0, "GLBluetoothService"

    const-string v1, "Created server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/e;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/e;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->U:Lcom/gameloft/android/GAND/GloftD2SS/e;

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->U:Lcom/gameloft/android/GAND/GloftD2SS/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/e;->start()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->W:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->enableDiscovery()V

    return v2
.end method

.method public final b()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "GLBluetoothService"

    const-string v3, "startDiscover()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->W:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Y:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v0

    :cond_1
    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Y:Z

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    iget-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Q:Z

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Q:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b(I)[B
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->P:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final c()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "GLBluetoothService"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->N:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->O:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->P:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "GLBluetoothService"

    const-string v1, "stopDiscovery()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->I:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Q:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Q:Z

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/c;->a()V

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->T:Lcom/gameloft/android/GAND/GloftD2SS/c;

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    :cond_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->U:Lcom/gameloft/android/GAND/GloftD2SS/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->U:Lcom/gameloft/android/GAND/GloftD2SS/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/e;->a()V

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->U:Lcom/gameloft/android/GAND/GloftD2SS/e;

    :cond_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->L:Landroid/bluetooth/BluetoothSocket;

    :cond_4
    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->H:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->U:Lcom/gameloft/android/GAND/GloftD2SS/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->U:Lcom/gameloft/android/GAND/GloftD2SS/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->U:Lcom/gameloft/android/GAND/GloftD2SS/e;

    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->S:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->R:I

    return-void
.end method

.method public final e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a([B)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->V:Lcom/gameloft/android/GAND/GloftD2SS/d;

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->F:I

    return-void
.end method

.method public final f()[B
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->Z:[B

    return-object v0
.end method
