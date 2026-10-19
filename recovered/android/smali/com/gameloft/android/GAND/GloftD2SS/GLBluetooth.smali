.class public Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;
.super Ljava/lang/Object;


# static fields
.field protected static a:Landroid/content/Context; = null

.field protected static b:Ljava/lang/String; = null

.field protected static c:Landroid/bluetooth/BluetoothAdapter; = null

.field protected static d:Landroid/bluetooth/BluetoothDevice; = null

.field private static final e:Z = true

.field private static final f:Ljava/lang/String; = "GLBluetooth"

.field private static g:Ljava/util/UUID;

.field private static h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

.field private static i:Z

.field private static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->a:Landroid/content/Context;

    const-string v0, "LetsGolf2"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->b:Ljava/lang/String;

    const-string v0, "b81345-2396-cf00-4533-b190df558100"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->g:Ljava/util/UUID;

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->c:Landroid/bluetooth/BluetoothAdapter;

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->d:Landroid/bluetooth/BluetoothDevice;

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptConnection(I)Z
    .locals 3

    const-string v0, "GLBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "acceptConnection() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->d()V

    const/4 v0, 0x1

    return v0
.end method

.method public static connect(I)V
    .locals 3

    const-string v0, "GLBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-virtual {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->a(I)V

    :cond_0
    return-void
.end method

.method public static create(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "GLBluetooth"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->c()V

    const/4 v1, 0x0

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    :cond_0
    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->g:Ljava/util/UUID;

    invoke-direct {v1, v2, p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;-><init>(Ljava/util/UUID;Ljava/lang/String;)V

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->b()Z

    goto :goto_0
.end method

.method public static denyConnection(I)V
    .locals 3

    const-string v0, "GLBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "denyConnection() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->e()V

    return-void
.end method

.method public static destroy()V
    .locals 2

    const-string v0, "GLBluetooth"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->i:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->c()V

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    :cond_0
    return-void
.end method

.method public static getDisplayName(I)[B
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-virtual {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->b(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getReceiveData()[B
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->f()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "GLBluetooth"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->a:Landroid/content/Context;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->c:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->j:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->nativeInit()V

    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "GLBluetooth"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "isSupported() "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static native nativeInit()V
.end method

.method public static send(I[B)V
    .locals 3

    const-string v0, "GLBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send() to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->h:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->a([B)V

    :cond_0
    return-void
.end method

.method public static setAvailable(Z)V
    .locals 0

    sput-boolean p0, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetooth;->i:Z

    return-void
.end method
