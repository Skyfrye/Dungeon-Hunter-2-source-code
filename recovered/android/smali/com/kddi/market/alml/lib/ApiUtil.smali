.class Lcom/kddi/market/alml/lib/ApiUtil;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "com.kddi.android.auoneidsetting"

.field private static synthetic b:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[I
    .locals 3

    sget-object v0, Lcom/kddi/market/alml/lib/ApiUtil;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->values()[Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->c:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->a:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->b:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->f:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/kddi/market/alml/lib/ApiUtil;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAstSettingIntent()Landroid/content/Intent;
    .locals 1

    const-string v0, "com.kddi.android.auoneidsetting"

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ApiUtil;->createSettingIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static createLoginOption(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "consumer_key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "consumer_secret"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refresh"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method static createSettingIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static existAuOneIdSetting(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    const-string v3, "com.kddi.android.auoneidsetting"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static existsAuthenticator(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v4, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static getAlmlErrorCode(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;I)I
    .locals 2

    const/4 v0, -0x4

    const/16 v1, -0x63

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/4 v0, -0x1

    goto :goto_0

    :sswitch_3
    const/4 v0, -0x8

    goto :goto_0

    :sswitch_4
    move v0, v1

    goto :goto_0

    :sswitch_5
    const/4 v0, -0x3

    goto :goto_0

    :sswitch_6
    move v0, v1

    goto :goto_0

    :sswitch_7
    const/16 v0, -0x39

    goto :goto_0

    :sswitch_8
    const/4 v0, -0x2

    goto :goto_0

    :sswitch_9
    const/4 v0, -0x6

    goto :goto_0

    :sswitch_a
    move v0, v1

    goto :goto_0

    :sswitch_b
    invoke-static {p0}, Lcom/kddi/market/alml/lib/ApiUtil;->getCannotGetError(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;)I

    move-result v0

    goto :goto_0

    :sswitch_c
    const/16 v0, -0x9

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_0
        0xf -> :sswitch_a
        0x11 -> :sswitch_b
        0x12 -> :sswitch_c
        0x835 -> :sswitch_6
        0x836 -> :sswitch_6
        0x839 -> :sswitch_6
        0x83a -> :sswitch_6
        0x83b -> :sswitch_6
        0x83c -> :sswitch_6
        0x83d -> :sswitch_6
        0x83e -> :sswitch_6
        0x899 -> :sswitch_6
        0x89a -> :sswitch_6
        0x89b -> :sswitch_6
        0x89c -> :sswitch_6
        0x89d -> :sswitch_6
        0x89e -> :sswitch_6
        0x89f -> :sswitch_6
        0x8a0 -> :sswitch_6
        0x8a1 -> :sswitch_6
        0x8a2 -> :sswitch_6
        0x8fd -> :sswitch_6
        0x8fe -> :sswitch_6
        0x8ff -> :sswitch_6
        0x900 -> :sswitch_6
        0x960 -> :sswitch_6
        0x962 -> :sswitch_6
        0x96c -> :sswitch_6
        0x96d -> :sswitch_6
        0x96e -> :sswitch_6
        0x96f -> :sswitch_6
        0x970 -> :sswitch_6
        0x9cd -> :sswitch_6
        0xbb9 -> :sswitch_6
        0xbba -> :sswitch_6
        0xbbb -> :sswitch_7
        0xbbd -> :sswitch_0
        0xbbe -> :sswitch_0
        0xbbf -> :sswitch_0
        0xbc0 -> :sswitch_6
        0xbc4 -> :sswitch_0
        0xbc5 -> :sswitch_0
        0xbc6 -> :sswitch_0
        0xbc7 -> :sswitch_6
        0xbc8 -> :sswitch_0
        0xc16 -> :sswitch_5
        0xc19 -> :sswitch_0
        0xc1a -> :sswitch_6
        0xc1b -> :sswitch_6
    .end sparse-switch
.end method

.method static getCannotGetError(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;)I
    .locals 3

    const/16 v0, -0x29

    invoke-static {}, Lcom/kddi/market/alml/lib/ApiUtil;->$SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v0, -0x63

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, -0x2b

    goto :goto_0

    :pswitch_2
    const/16 v0, -0x2e

    goto :goto_0

    :pswitch_3
    const/16 v0, -0x31

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static getTestErrorCode(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "market"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v2, "errorCode.txt"

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_2

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_2
    :goto_5
    throw v0

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1
.end method

.method static havePermissions(Landroid/content/Context;)Z
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    move v0, v1

    :goto_0
    if-lt v2, v4, :cond_0

    :goto_1
    const/16 v2, 0xf

    if-ne v2, v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    :try_start_1
    aget-object v5, v3, v2

    const-string v6, "com.kddi.market.permission.USE_ALML"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v6, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    or-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_3
    const-string v6, "android.permission.MANAGE_ACCOUNTS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    or-int/lit8 v0, v0, 0x4

    goto :goto_3

    :cond_4
    const-string v6, "android.permission.USE_CREDENTIALS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :catch_0
    move-exception v0

    move v2, v1

    :goto_4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method static isAuOneIdSettingEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/kddi/market/alml/lib/ApiUtil;->existAuOneIdSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.kddi.android.auoneidsetting"

    invoke-static {p0, v0}, Lcom/kddi/market/alml/lib/ApiUtil;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
