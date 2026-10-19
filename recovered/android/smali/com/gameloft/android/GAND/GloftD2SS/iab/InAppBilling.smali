.class public Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo; = null

.field static b:I = 0x0

.field static final c:I = 0xea60

.field static final d:I = 0x1b7740

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Ljava/lang/String;

.field static h:Ljava/lang/String;

.field static i:Ljava/lang/String;

.field static j:Ljava/lang/String;

.field static k:Ljava/lang/String;

.field static l:Ljava/lang/String;

.field static m:Z

.field static n:I

.field static o:Z

.field static p:Z

.field private static q:Lcom/gameloft/android/GAND/GloftD2SS/iab/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->b:I

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->g:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->j:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->k:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->l:Ljava/lang/String;

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->m:Z

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->o:Z

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->p:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetState()I
    .locals 3

    const v0, 0x7f0501c1

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0501b8

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GoogleAnalyticsTrackTransaction()V
    .locals 0

    return-void
.end method

.method static IsInternetAvaliable()Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://www.google.com"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "O"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "I"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->nativeSendData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "R"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(I)Z
    .locals 1

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->handleOperations(I)Z

    move-result v0

    return v0
.end method

.method static clear()V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0501e0

    const v5, 0x7f0501b8

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    const v2, 0x7f0501ba

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0501c8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0501bb

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0501bc

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0501bd

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0501be

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0501c1

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0501bf

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0501c4

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static getData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x22

    invoke-static {v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    invoke-static {v2, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    const/16 v1, 0x2a

    invoke-static {v2, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    if-ne v0, v4, :cond_0

    const/16 v1, 0x26

    invoke-static {v2, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    :cond_0
    if-ne v0, v3, :cond_1

    const/16 v1, 0x27

    invoke-static {v2, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    :cond_1
    if-ne v0, v6, :cond_2

    const/16 v1, 0x29

    invoke-static {v2, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->k:Ljava/lang/String;

    :cond_2
    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_3

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    if-ne v0, v6, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/iab/c;

    invoke-direct {v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/c;-><init>(I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    invoke-static {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->getDataAid(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getDataAid(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const/16 v2, 0x24

    const/4 v1, 0x0

    const/16 v6, 0x2f

    const/16 v5, 0x23

    const/4 v4, 0x0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->getLastItem()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0501e0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_0

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-virtual {v3, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->e(Ljava/lang/String;)Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v4, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v0, 0x25

    invoke-static {v4, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->getLastState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_1
    return-object p1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    invoke-static {v4, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    invoke-static {v4, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->b(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    invoke-static {v4, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_1

    if-ltz v1, :cond_1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    invoke-static {v4, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_1

    if-ltz v1, :cond_1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->b(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_b

    invoke-static {v4, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0x56

    invoke-static {v4, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->C()[B

    move-result-object v1

    :cond_8
    :goto_2
    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_1

    :cond_9
    const/16 v2, 0x57

    invoke-static {v4, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->D()[B

    move-result-object v1

    goto :goto_2

    :cond_a
    const/16 v2, 0x58

    invoke-static {v4, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->E()[B

    move-result-object v1

    goto :goto_2

    :cond_b
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    const/16 v0, 0x3f

    invoke-static {v4, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-virtual {v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_3
    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_3

    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    invoke-static {v4, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    invoke-static {v4, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-virtual {v3, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    :goto_4
    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_4

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    invoke-static {v4, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    invoke-static {v4, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-virtual {v3, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    :goto_5
    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_5
.end method

.method static getLastItem()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    const v1, 0x7f0501b7

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501c7

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0501c0

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501b8

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0501b9

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getLastState()I
    .locals 3

    :try_start_0
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    const v1, 0x7f0501b7

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501c7

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0501c0

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501b8

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0501b9

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSDFolder()Ljava/lang/String;
    .locals 2

    const-string v0, "SDFolder"

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files"

    goto :goto_0
.end method

.method public static getTotalItems()I
    .locals 2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->B()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->d(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized handleOperations(I)Z
    .locals 13

    const-class v5, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;

    monitor-enter v5

    :try_start_0
    sput p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->getTotalItems()I

    move-result v1

    const/4 v0, 0x0

    move v12, v0

    move v0, v2

    move v2, v12

    :goto_0
    if-ge v2, v1, :cond_2

    if-nez v0, :cond_2

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x30

    invoke-static {v6, v7}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/16 v6, 0x31

    invoke-static {v4, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    const/4 v0, 0x1

    :goto_3
    monitor-exit v5

    return v0

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_d

    :cond_3
    if-nez v1, :cond_5

    :try_start_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a()Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->getTotalItems()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x1

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->m:Z

    :cond_4
    move v1, v0

    :cond_5
    const/4 v0, 0x0

    move v3, v0

    :goto_4
    if-ge v3, v1, :cond_d

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v6, 0x30

    invoke-static {v4, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_6

    const/4 v2, 0x0

    const/16 v4, 0x31

    invoke-static {v2, v4}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    new-instance v2, Ljava/lang/String;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v6, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "imgiab"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".bin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->getSDFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :try_start_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Connection"

    const-string v7, "close"

    invoke-virtual {v0, v2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    :goto_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    :cond_6
    :goto_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_4

    :cond_7
    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_8
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v2, v7

    goto :goto_6

    :cond_9
    if-ne v7, v2, :cond_a

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v7, 0x30

    invoke-static {v4, v7}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v6, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_a
    monitor-enter v0
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v4, v2

    :goto_8
    if-ge v4, v7, :cond_c

    sub-int v2, v7, v4

    const/high16 v11, 0x20000

    if-le v2, v11, :cond_b

    const/high16 v2, 0x20000

    :cond_b
    new-array v11, v2, [B

    invoke-virtual {v9, v11}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v10, v11}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    add-int/2addr v2, v4

    move v4, v2

    goto :goto_8

    :cond_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x30

    invoke-static {v7, v8}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7, v6, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v0

    throw v2
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_d
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    const/16 v2, 0x22

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    const/16 v2, 0x26

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_9
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    const/16 v2, 0x27

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    const/16 v2, 0x2a

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_b
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    const/16 v2, 0x28

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_c
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    const/16 v2, 0x24

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    const/16 v2, 0x23

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v0, 0x5

    const/16 v2, 0x6c

    :try_start_9
    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x76

    invoke-static {v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_f
    const/4 v0, 0x0

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    goto :goto_c

    :cond_12
    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    :try_start_a
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->q:Lcom/gameloft/android/GAND/GloftD2SS/iab/a;

    if-nez v0, :cond_13

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-direct {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;)V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->q:Lcom/gameloft/android/GAND/GloftD2SS/iab/a;

    :cond_13
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a(Ljava/lang/String;)Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->q:Lcom/gameloft/android/GAND/GloftD2SS/iab/a;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/a;->b(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_14
    if-nez p0, :cond_15

    :try_start_b
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->q:Lcom/gameloft/android/GAND/GloftD2SS/iab/a;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->q:Lcom/gameloft/android/GAND/GloftD2SS/iab/a;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_15
    const/16 v0, 0xa

    if-ne p0, v0, :cond_16

    :try_start_c
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->GoogleAnalyticsTrackTransaction()V

    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_16
    const/16 v0, 0x11

    if-ne p0, v0, :cond_19

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    if-nez v0, :cond_17

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;-><init>()V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    :cond_17
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->q:Lcom/gameloft/android/GAND/GloftD2SS/iab/a;

    if-nez v0, :cond_18

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-direct {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;)V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->q:Lcom/gameloft/android/GAND/GloftD2SS/iab/a;

    :cond_18
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a(Ljava/lang/String;)Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->q:Lcom/gameloft/android/GAND/GloftD2SS/iab/a;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/a;->c()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_3

    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_d
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->nativeInit(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->o:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;-><init>()V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    :cond_0
    return-void
.end method

.method static isGoogleResponse()Z
    .locals 2

    const v0, 0x7f0501c4

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0501b8

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isPending()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    const v2, 0x7f0501b7

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0501c7

    invoke-static {v3}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0501ba

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0501b8

    invoke-static {v3}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501b9

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static load()V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0501b8

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    const v0, 0x7f0501b7

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0501c6

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0501ba

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_0
    const v0, 0x7f0501da

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceBoolean(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0501db

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    const v0, 0x7f0501dc

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    const v0, 0x7f0501dd

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    const v0, 0x7f0501de

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    const v0, 0x7f0501df

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->b:I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_0
    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_1
    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    const-string v0, "0"

    :goto_2
    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_3
    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a(Ljava/lang/String;)Z

    :cond_2
    :goto_4
    return-void

    :cond_3
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    goto :goto_3

    :cond_7
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0501b9

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0501bb

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    const v0, 0x7f0501bc

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    const v0, 0x7f0501bd

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    const v0, 0x7f0501be

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    const v0, 0x7f0501c1

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->b:I

    const v0, 0x7f0501c3

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->j:Ljava/lang/String;

    const v0, 0x7f0501ca

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->k:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a(Ljava/lang/String;)Z

    goto/16 :goto_4

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v5}, Ljava/lang/Boolean;-><init>(Z)V

    goto/16 :goto_5
.end method

.method public static native nativeInit(Landroid/content/Context;)V
.end method

.method public static native nativeSendData(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public static native nativeSetContext(Landroid/content/Context;)V
.end method

.method public static native nativeSetIABObject(Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;)V
.end method

.method static save(I)V
    .locals 10

    const v9, 0x7f0501e0

    const/4 v8, 0x1

    const v7, 0x7f0501b8

    const/4 v6, 0x0

    const v5, 0x7f0501b9

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    const v0, 0x7f0501b7

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0501c5

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v8}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const v0, 0x7f0501ba

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0501bb

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0501bc

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0501bd

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0501be

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0501c1

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-ne p0, v8, :cond_5

    const-wide/32 v0, 0x1b7740

    :cond_0
    :goto_4
    const v2, 0x7f0501c2

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    sput p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->b:I

    return-void

    :cond_1
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x2

    if-eq p0, v2, :cond_6

    const/4 v2, 0x4

    if-eq p0, v2, :cond_6

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_4
.end method

.method static saveLastItem(I)V
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0501b9

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    const v1, 0x7f0501b7

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501c7

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v1, v6

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const v1, 0x7f0501c0

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0501b8

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static saveNoGoogleReponse()V
    .locals 3

    const v0, 0x7f0501c4

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0501c8

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501b8

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
