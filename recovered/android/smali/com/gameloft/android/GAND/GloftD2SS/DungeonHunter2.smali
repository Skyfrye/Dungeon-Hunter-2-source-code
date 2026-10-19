.class public Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field static A:I = 0x0

.field static B:Z = false

.field static C:Z = false

.field static D:J = 0x0L

.field static E:Z = false

.field static F:Z = false

.field static final G:I = 0xc350

.field public static H:I = 0x0

.field private static I:Landroid/opengl/GLSurfaceView; = null

.field private static J:[B = null

.field private static K:[B = null

.field private static L:[B = null

.field private static M:Z = false

.field private static N:Z = false

.field static final a:I = 0x0

.field static final b:I = 0x1

.field static c:I = 0x0

.field static d:Z = false

.field static final e:I = 0x5

.field static f:I = 0x0

.field static g:Z = false

.field static final l:Ljava/lang/String; = "DungeonHunter2"

.field public static m:Z

.field public static n:Z

.field public static o:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

.field public static p:I

.field public static q:I

.field public static r:Z

.field public static s:I

.field static t:Landroid/net/ConnectivityManager;

.field static u:Landroid/net/NetworkInfo;

.field static v:Landroid/net/wifi/WifiManager;

.field public static w:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

.field public static x:I

.field public static y:I

.field public static z:[I


# instance fields
.field private O:Z

.field h:Landroid/hardware/SensorManager;

.field i:Landroid/hardware/Sensor;

.field j:Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;

.field k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->c:I

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->d:Z

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->f:I

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->g:Z

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->m:Z

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->n:Z

    const-string v0, "DungeonHunter2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "StormGLOFT"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sput v3, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->p:I

    sput v3, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->q:I

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->t:Landroid/net/ConnectivityManager;

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->u:Landroid/net/NetworkInfo;

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->v:Landroid/net/wifi/WifiManager;

    const/16 v0, 0x64

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->z:[I

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->A:I

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->E:Z

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->F:Z

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->H:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->k:Z

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->O:Z

    return-void
.end method

.method public static DisableLaunchGame()I
    .locals 2

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->f:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Exit()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->o:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->finish()V

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->o:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->I:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static Get_PhoneLanguage()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "fr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "de"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v2, "es"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const-string v2, "it"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const-string v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static Get_PhoneManufacturer()I
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "SHARP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v1, "Sony Ericsson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-string v1, "LGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static Get_PhoneModel()I
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "PC36100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "SGH-T959"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LG-SU660"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "SHW-M130L"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x63

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IncreaseLaunchTimes()V
    .locals 3

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->f:I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->w:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    const-string v1, "DungeonHunter2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastNumOfLaunchs"

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static NotifyTrophy(I)V
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NotifyTrophy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cS:[I

    array-length v1, v1

    if-ltz p0, :cond_0

    if-le p0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-array v2, v1, [I

    move v1, v0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    const/16 v3, 0x7f

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files/androidTrophy.dat"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v1, v0

    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->ready()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :goto_3
    const/4 v1, 0x1

    aput v1, v2, p0

    new-instance v1, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    :goto_4
    array-length v3, v2

    if-ge v0, v3, :cond_5

    aget v3, v2, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->append(C)Ljava/io/Writer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static OpenGLive(I)V
    .locals 0

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->launchGLLive(I)V

    return-void
.end method

.method public static OpenIGP(I)V
    .locals 0

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->launchIGP(I)V

    return-void
.end method

.method public static VZGetGameName()[B
    .locals 1

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->GetGameName()[B

    move-result-object v0

    return-object v0
.end method

.method public static VZGetGamePrice()[B
    .locals 1

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->GetGamePrice()[B

    move-result-object v0

    return-object v0
.end method

.method public static VZGetLastServerMsg()[B
    .locals 1

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->GetLastServerMsg()[B

    move-result-object v0

    return-object v0
.end method

.method public static VZInitMobileNetwork()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->c:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->N:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->E:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->D:J

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->v:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->F:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->v:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public static VZIsErrorOcurred()I
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->E:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->IsErrorOcurred()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static VZIsInProgress()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->B:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->IsInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->B:Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->VZIsErrorOcurred()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->RequestGameData()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->C:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->IsInProgress()Z

    move-result v2

    if-nez v2, :cond_2

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->C:Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->VZIsErrorOcurred()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->RequestGamePurchase()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->IsInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static VZIsMobileNetworkReady()I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->N:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->D:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xc350

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :cond_0
    const-string v0, "You need to be connected to the Verizon Network to continue."

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->SetLastServerMsg(Ljava/lang/String;)V

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->N:Z

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->v:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->t:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->t:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->E:Z

    move v0, v1

    goto :goto_0
.end method

.method public static VZRequestLogin()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->B:Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->RequestLogin()V

    return-void
.end method

.method public static VZRequestPurchaseGame()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->C:Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->RequestGameCheckout()V

    return-void
.end method

.method public static VZRestoreNetworkState()V
    .locals 2

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->F:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->v:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->F:Z

    :cond_0
    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DungeonHunter2"

    invoke-virtual {p0, v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->c:I

    const-string v1, "playMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->c:I

    const-string v1, "lastNumOfLaunchs"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->f:I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->d:Z

    return-void
.end method

.method public static initialize_Trophy([I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/16 v1, 0x7f

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isDemo()Z
    .locals 1

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportMM()I
    .locals 4

    const/4 v3, -0x1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string v2, "SC-02B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    const-string v2, "SHW-M110S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "GT-I9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SGH-T959"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SHW-M130L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    const-string v2, "Sony Ericsson"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "X10i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    const-string v2, "HTC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HTC Desire"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public static isWifiAlive()I
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->t:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->u:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->u:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public static launchGLLive(I)V
    .locals 3

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    sput p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->x:I

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    const-class v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "language"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "gginame"

    const-string v2, "25483"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cf:Z

    return-void
.end method

.method public static launchIGP(I)V
    .locals 3

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    sput p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->y:I

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    const-class v2, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "language"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static lockDemo()V
    .locals 3

    const/4 v2, 0x0

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->c:I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->w:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    const-string v1, "DungeonHunter2"

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "playMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastNumOfLaunchs"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static native nativeAccelerometer(FFF)V
.end method

.method public static native nativeCanInterrupt()I
.end method

.method public static native nativeGetGameMusicVolume()I
.end method

.method public static native nativeGetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeInit(I)V
.end method

.method public static native nativeKeyDown(I)V
.end method

.method public static native nativeKeyUp(I)V
.end method

.method public static native nativeOpenIGM()V
.end method

.method public static native nativePause(I)V
.end method

.method public static native nativeResume(I)V
.end method

.method public static native nativeSetOrientation(I)V
.end method

.method public static native nativeSetPhone(II)V
.end method

.method public static native nativegetState(I)I
.end method

.method public static native nativeonTrackballEvent(I)V
.end method

.method public static openBrowser(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static readFromFile()V
    .locals 0

    return-void
.end method

.method public static sendAppToBackground()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->w:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static unlockDemo()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput v3, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->c:I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->w:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    const-string v1, "DungeonHunter2"

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "playMode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v2
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x480

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    iput-boolean v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->k:Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sbStarted:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------- Game::onCreate(), start installer ------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".installer.GameInstaller"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->d:Z

    if-nez v0, :cond_1

    const-string v0, "DungeonHunter2"

    invoke-virtual {p0, v0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput v4, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->c:I

    const-string v1, "playMode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->c:I

    const-string v1, "lastNumOfLaunchs"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->f:I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sput-boolean v5, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->d:Z

    :cond_1
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->requestWindowFeature(I)Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeSetPhone(II)V

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->I:Landroid/opengl/GLSurfaceView;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->I:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->setContentView(Landroid/view/View;)V

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->o:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->w:Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->t:Landroid/net/ConnectivityManager;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->v:Landroid/net/wifi/WifiManager;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

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

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->j:Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->j:Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/Musicplayer;->initMediaList()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Tracking ------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->init(Landroid/telephony/TelephonyManager;)V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->onLaunchGame()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Tracking ++++++++++++++++++++++++"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0x50

    const/4 v0, 0x1

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x18

    if-eq p1, v1, :cond_2

    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sput p1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->p:I

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0x50

    const/16 v2, 0x1b

    const/4 v0, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v3, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x18

    if-eq p1, v1, :cond_2

    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->r:Z

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GameGLSurfaceView;->c:Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v1, 0x52

    if-ne p1, v1, :cond_4

    invoke-static {p1}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativegetState(I)I

    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    invoke-static {p1}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativegetState(I)I

    move-result v1

    if-eq v1, v0, :cond_5

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->sendAppToBackground()V

    :cond_5
    sput p1, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->q:I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    :goto_0
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeCanInterrupt()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->I:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->M:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->ResumeMovie()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->k:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeGetGameMusicVolume()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->I:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->h:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->h:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->i:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->h:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->i:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->k:Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeAccelerometer(FFF)V

    :cond_0
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->O:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeSetOrientation(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->O:Z

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, -0x3f000000    # -8.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeSetOrientation(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->O:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->h:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->h:Landroid/hardware/SensorManager;

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeonTrackballEvent(I)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v5

    if-lez v0, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeonTrackballEvent(I)V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;->nativeonTrackballEvent(I)V

    goto :goto_0
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method
