.class public Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Ljava/lang/String;

.field static h:Ljava/lang/String;

.field static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:I

.field private static n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "D2SS"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->j:Ljava/lang/String;

    const-string v0, "102"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->k:Ljava/lang/String;

    const-string v0, "2.1"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->l:Ljava/lang/String;

    const/16 v0, 0x5dc

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->m:I

    const-string v0, "http://ingameads.gameloft.com/redir/hdloading.php?game=#GAME#&country=#COUNTRY#&lg=#LANG#&ver=#IGP_VERSION#&device=#DEVICE#&f=#FIRMWARE#&udid=#ID#&androidid=#ANDROID_ID#&g_ver=#VERSION#&line_number=#LINE_NUMBER#"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->buildURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->m:I

    return v0
.end method

.method private static buildURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#GAME#"

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->j:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#COUNTRY#"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#LANG#"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#VERSION#"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#DEVICE#"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#FIRMWARE#"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#ID#"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "#ANDROID_ID#"

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "#IGP_VERSION#"

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "#LINE_NUMBER#"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/telephony/TelephonyManager;)V
    .locals 2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->c:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->d:Ljava/lang/String;

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->g:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->h:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "00"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->i:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static onLaunchGame()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->onLaunchGame(ILjava/lang/String;)V

    return-void
.end method

.method public static onLaunchGame(I)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->onLaunchGame(ILjava/lang/String;)V

    return-void
.end method

.method public static onLaunchGame(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/k;

    invoke-direct {v1, p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/k;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
