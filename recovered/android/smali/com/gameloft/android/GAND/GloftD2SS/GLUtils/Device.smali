.class public Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;
.super Ljava/lang/Object;


# static fields
.field private static final A:I = 0x457

.field private static B:Ljava/lang/String; = null

.field private static C:I = 0x0

.field private static E:[B = null

.field public static final a:[[Ljava/lang/String;

.field public static final b:Z = true

.field public static final c:Z = false

.field public static final d:Z = false

.field public static final e:Z = true

.field public static final f:Ljava/lang/String; = "H229"

.field public static final h:I = 0xd0a4

.field public static i:Landroid/net/wifi/WifiManager; = null

.field static j:Landroid/net/ConnectivityManager; = null

.field private static l:Ljava/lang/String; = null

.field private static m:Ljava/lang/String; = null

.field private static n:Ljava/lang/String; = null

.field private static o:Ljava/lang/String; = null

.field private static p:Ljava/lang/String; = null

.field private static q:Ljava/lang/String; = null

.field private static r:Ljava/lang/String; = null

.field private static s:Ljava/lang/String; = null

.field private static t:Ljava/lang/String; = null

.field private static u:Z = false

.field private static x:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a; = null

.field private static y:Landroid/webkit/WebView; = null

.field private static final z:I = 0x270f


# instance fields
.field private D:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field k:Landroid/net/wifi/WifiManager$WifiLock;

.field private final v:Ljava/lang/String;

.field private w:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "eng"

    aput-object v2, v1, v4

    const-string v2, "en"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "fra"

    aput-object v2, v1, v4

    const-string v2, "fr"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "deu"

    aput-object v2, v1, v4

    const-string v2, "de"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "esl"

    aput-object v3, v2, v4

    const-string v3, "es"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "spa"

    aput-object v3, v2, v4

    const-string v3, "es"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ita"

    aput-object v3, v2, v4

    const-string v3, "it"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "jpn"

    aput-object v3, v2, v4

    const-string v3, "jp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "por"

    aput-object v3, v2, v4

    const-string v3, "br"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "por"

    aput-object v3, v2, v4

    const-string v3, "pt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->a:[[Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->l:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->m:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->n:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->o:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->p:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->q:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->r:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->s:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->t:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->y:Landroid/webkit/WebView;

    sput-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->j:Landroid/net/ConnectivityManager;

    new-array v0, v5, [B

    aput-byte v4, v0, v4

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->E:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "4"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->v:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->D:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->InitDeviceValues()V

    return-void
.end method

.method public constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;-><init>()V

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->w:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    return-void
.end method

.method private static DisableWifi()V
    .locals 2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->i:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method private static EnableWifi()V
    .locals 2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->i:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method private static InitDeviceValues()V
    .locals 3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->j:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->j:Landroid/net/ConnectivityManager;

    :cond_0
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "SIM_ERROR_UNKNOWN"

    :goto_0
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->l:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->l:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->n:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->n:Ljava/lang/String;

    :cond_2
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->n:Ljava/lang/String;

    :cond_3
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->o:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->o:Ljava/lang/String;

    :cond_4
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->o:Ljava/lang/String;

    :cond_5
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->p:Ljava/lang/String;

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->p:Ljava/lang/String;

    :cond_6
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->p:Ljava/lang/String;

    :cond_7
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->q:Ljava/lang/String;

    if-nez v2, :cond_8

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->q:Ljava/lang/String;

    :cond_8
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->q:Ljava/lang/String;

    :cond_9
    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->r:Ljava/lang/String;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->r:Ljava/lang/String;

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->r:Ljava/lang/String;

    :cond_b
    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->r:Ljava/lang/String;

    if-nez v1, :cond_c

    const-string v1, "00"

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->r:Ljava/lang/String;

    :cond_c
    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->s:Ljava/lang/String;

    if-nez v1, :cond_d

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->s:Ljava/lang/String;

    :cond_d
    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->t:Ljava/lang/String;

    if-nez v1, :cond_e

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->t:Ljava/lang/String;

    :cond_e
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->u:Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->createUniqueCode()I

    move-result v0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->C:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->B:Ljava/lang/String;

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->m:Ljava/lang/String;

    if-nez v0, :cond_f

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/b;

    invoke-direct {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    :goto_1
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;-><init>()V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->x:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;

    return-void

    :pswitch_0
    const-string v1, "SIM_ABSENT"

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "SIM_PUK_REQUIRED"

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "SIM_PIN_REQUIRED"

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static IsConnectionReady()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->j:Landroid/net/ConnectivityManager;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->j:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static IsWifiDisabling()Z
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsWifiEnable()Z
    .locals 2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static IsWifiEnabling()Z
    .locals 2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->w:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    return-void
.end method

.method public static a()[B
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->E:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/webkit/WebView;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->y:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$002(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->y:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static b()[B
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->E:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static c()[B
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->E:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static createUniqueCode()I
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide v2, 0x40c15c8000000000L    # 8889.0

    mul-double/2addr v0, v2

    const-wide v2, 0x40915c0000000000L    # 1111.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static d()[B
    .locals 1

    const-string v0, "1.0.2"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized d1()Ljava/lang/String;
    .locals 6

    const-class v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "unknown"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_0

    :cond_2
    :try_start_2
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.serialno"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "unknown"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v2, :cond_0

    :cond_3
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDFolder"

    const-string v3, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files"

    const-string v4, "DungeonHunter2Prefs"

    invoke-static {v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/.nomedia"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->WriteFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->setReadOnly()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static e(I)V
    .locals 0

    sput p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->C:I

    return-void
.end method

.method public static f()[B
    .locals 1

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->D:Ljava/lang/String;

    return-object v0
.end method

.method private static getBillingVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public static getCarrier()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->x:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;

    return-object v0
.end method

.method public static getDemoCode()Ljava/lang/String;
    .locals 1

    const-string v0, "H229"

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->IsWifiEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->d1()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->d1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHostName()[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static getIsRoaming()Z
    .locals 1

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->u:Z

    return v0
.end method

.method private static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->a:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->a:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->a:[[Ljava/lang/String;

    aget-object v0, v1, v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "en"

    goto :goto_1
.end method

.method public static getLineNumber()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->r:Ljava/lang/String;

    return-object v0
.end method

.method private static getLocale()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->B:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProfileType()Ljava/lang/String;
    .locals 1

    const-string v0, "4"

    return-object v0
.end method

.method public static getSimCountryIso()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimOperator()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimOperatorName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static getUniqueCode()I
    .locals 1

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->C:I

    return v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .locals 0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->InitDeviceValues()V

    return-void
.end method

.method public static native nativeInit()V
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->D:Ljava/lang/String;

    return-void
.end method

.method public final e()Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->w:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    return-object v0
.end method
