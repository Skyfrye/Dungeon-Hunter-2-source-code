.class Lcom/samsung/zirconia/DevInfoRetriever;
.super Ljava/lang/Object;


# instance fields
.field private deviceMIN:Ljava/lang/String;

.field private deviceOEMInfo:Ljava/lang/String;

.field private deviceSerialNumber:Ljava/lang/String;

.field private deviceSubscriberNumber:Ljava/lang/String;

.field private isEmulator:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.serialno"

    const-string v4, "Unknown"

    invoke-static {v1, v3, v4}, Lcom/samsung/zirconia/DevInfoRetriever;->getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSubscriberNumber:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceMIN:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceOEMInfo:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "000000000000000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/zirconia/DevInfoRetriever;->isEmulator:Z

    :goto_0
    iget-boolean v3, p0, Lcom/samsung/zirconia/DevInfoRetriever;->isEmulator:Z

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    const-string v0, "Unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "000000000000000"

    iput-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSerialNumber:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/zirconia/DevInfoRetriever;->isEmulator:Z

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSerialNumber:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSerialNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "get"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getIMEI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSerialNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSerialNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSubscriberNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSubscriberNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMIN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceMIN:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceMIN:Ljava/lang/String;

    goto :goto_0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceOEMInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceOEMInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method public isEmulator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->isEmulator:Z

    return v0
.end method
