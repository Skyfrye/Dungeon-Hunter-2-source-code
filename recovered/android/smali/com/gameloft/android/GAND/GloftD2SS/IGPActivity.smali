.class public Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:I

.field public static d:Z

.field public static e:Landroid/telephony/TelephonyManager;

.field static f:I

.field static g:I

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:[I

.field public static n:[Ljava/lang/String;

.field public static o:Landroid/widget/RelativeLayout;

.field public static p:Landroid/webkit/WebView;

.field static q:Z

.field static r:I


# instance fields
.field private s:Landroid/view/Display;

.field private t:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0x9

    const/4 v3, 0x0

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->a:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->b:Z

    sput v3, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->c:I

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->d:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->e:Landroid/telephony/TelephonyManager;

    const/16 v0, 0x1e0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->f:I

    const/16 v0, 0x320

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->g:I

    const-string v0, "http://ingameads.gameloft.com/redir/android/index.php?from=GAME_CODE&lg=LANGUAGE&udid=UDIDPHONE&d=DEVICE_ANDROID&f=FIRMWARE_ANDROID&ver=GAME_VERSION&country=COUNTRY_DETECTED&height=DEVICE_HEIGHT"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->h:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v0, "http://signal-back.com"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->j:Ljava/lang/String;

    const-string v0, "http://ingameads.gameloft.com/redir/android/index.php?page=gameinformation"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->k:Ljava/lang/String;

    const-string v0, "http://ingameads.gameloft.com/redir/?from="

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->l:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->m:[I

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "EN"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SP"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "JP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->n:[Ljava/lang/String;

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->q:Z

    sput v3, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->r:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0501e1
        0x7f0501e2
        0x7f0501e3
        0x7f0501e4
        0x7f0501e5
        0x7f0501e6
        0x7f0501e7
        0x7f0501e8
        0x7f0501e9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/au;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/au;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->t:Landroid/telephony/PhoneStateListener;

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->d:Z

    sput p1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->c:I

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "GLOFT_EMU_001"

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->h:Ljava/lang/String;

    const-string v5, "LANGUAGE"

    sget-object v6, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->n:[Ljava/lang/String;

    sget v7, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->c:I

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v5, "GAME_CODE"

    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v5, "COUNTRY_DETECTED"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v4, "UDIDPHONE"

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v1, "DEVICE_ANDROID"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v1, "FIRMWARE_ANDROID"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v1, "GAME_VERSION"

    const-string v2, "1.0.2"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v1, "DEVICE_HEIGHT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&enc=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->f:I

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->g:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->o:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.youtube.com/watch?v="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.youtube:"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.youtube.com/watch?v="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.youtube:"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_4

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :goto_1
    const-string v2, "unknown"

    if-eq v0, v2, :cond_2

    :goto_2
    if-nez v0, :cond_0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    :goto_3
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private c()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSerial()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :goto_0
    const-string v2, "unknown"

    if-eq v0, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static getSerialNo()Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ro.serialno"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "unknown"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native nativeInit()V
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->a:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->finish()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->o:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->w:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->e:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->t:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->s:Landroid/view/Display;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->s:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->g:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->s:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->f:I

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->o:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/av;

    invoke-direct {v2, p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/av;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "language"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->n:[Ljava/lang/String;

    array-length v2, v2

    if-le v0, v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    const-string v1, "D2SS"

    sput-boolean v9, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->d:Z

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->c:I

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "GLOFT_EMU_001"

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->h:Ljava/lang/String;

    const-string v6, "LANGUAGE"

    sget-object v7, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->n:[Ljava/lang/String;

    sget v8, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->c:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v6, "GAME_CODE"

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v5, "COUNTRY_DETECTED"

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v2, "UDIDPHONE"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v1, "DEVICE_ANDROID"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v1, "FIRMWARE_ANDROID"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v1, "GAME_VERSION"

    const-string v2, "1.0.2"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v1, "DEVICE_HEIGHT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&enc=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->f:I

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->g:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->o:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    sput-boolean v9, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->a:Z

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->c:I

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->e:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->t:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->e:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->a()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->moveTaskToBack(Z)Z

    :goto_0
    return-void

    :cond_0
    sput-boolean p1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->d:Z

    goto :goto_0
.end method
