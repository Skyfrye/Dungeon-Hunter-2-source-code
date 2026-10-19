.class final Lcom/samsungapps/plasma/b;
.super Ljava/lang/Object;


# static fields
.field private static final h:Ljava/lang/String; = "SamsungAppsSharedPreferences"

.field private static final i:Ljava/lang/String; = "SelectedMcc"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/b;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsungapps/plasma/b;->b:Ljava/lang/String;

    iput v1, p0, Lcom/samsungapps/plasma/b;->c:I

    iput v1, p0, Lcom/samsungapps/plasma/b;->d:I

    iput-object v0, p0, Lcom/samsungapps/plasma/b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/b;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsungapps/plasma/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsungapps/plasma/b;->g()Z

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/b;->c:I

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/b;->b:Ljava/lang/String;

    return-void
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/b;->c:I

    return v0
.end method

.method final b(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/b;->d:I

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/b;->e:Ljava/lang/String;

    return-void
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/b;->d:I

    return v0
.end method

.method final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/b;->f:Ljava/lang/String;

    return-void
.end method

.method final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/b;->g:Ljava/lang/String;

    return-void
.end method

.method final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method final g()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsungapps/plasma/b;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungapps/plasma/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsungapps/plasma/b;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsungapps/plasma/b;->a:Landroid/content/Context;

    const-string v2, "ro.serialno"

    const-string v3, "Unknown"

    invoke-static {v1, v2, v3}, Lcom/samsungapps/plasma/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungapps/plasma/b;->b:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/samsungapps/plasma/b;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    iput-object v1, p0, Lcom/samsungapps/plasma/b;->b:Ljava/lang/String;

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/csc/sales_code.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    new-array v4, v6, [B

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v3, 0x3

    :try_start_1
    invoke-virtual {v2, v4, v1, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    array-length v3, v4

    if-ne v1, v3, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/samsungapps/plasma/b;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsungapps/plasma/b;->e:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    iput-object v1, p0, Lcom/samsungapps/plasma/b;->e:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsungapps/plasma/b;->c:I

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsungapps/plasma/b;->d:I

    :cond_5
    iget v1, p0, Lcom/samsungapps/plasma/b;->c:I

    if-nez v1, :cond_6

    :try_start_3
    iget-object v1, p0, Lcom/samsungapps/plasma/b;->a:Landroid/content/Context;

    const-string v2, "com.sec.android.app.samsungapps"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    const-string v2, "SamsungAppsSharedPreferences"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "SelectedMcc"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsungapps/plasma/b;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsungapps/plasma/b;->d:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/samsungapps/plasma/b;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_7

    const-string v1, "WIFI"

    iput-object v1, p0, Lcom/samsungapps/plasma/b;->e:Ljava/lang/String;

    :cond_7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungapps/plasma/b;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsungapps/plasma/b;->f:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, ""

    iput-object v1, p0, Lcom/samsungapps/plasma/b;->f:Ljava/lang/String;

    :cond_8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/b;->g:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    iput-object v0, p0, Lcom/samsungapps/plasma/b;->g:Ljava/lang/String;

    :cond_9
    return v7

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_4
    invoke-static {v1}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_a

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_a
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_3
    move-exception v1

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2
.end method
