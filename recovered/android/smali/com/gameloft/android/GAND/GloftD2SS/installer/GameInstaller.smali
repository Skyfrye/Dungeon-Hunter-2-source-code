.class public Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/c;
.implements Ljava/lang/Runnable;


# static fields
.field public static DATA_PATH:Ljava/lang/String; = null

.field public static final LAYOUT_BLACK:I = 0x18

.field public static final LAYOUT_CHECKING_REQUIRED_FILES:I = 0x0

.field public static final LAYOUT_CONFIRM_3G:I = 0x1

.field public static final LAYOUT_CONFIRM_UPDATE:I = 0x2

.field public static final LAYOUT_CONFIRM_WAITING_FOR_WIFI:I = 0x3

.field public static final LAYOUT_DOWNLOAD_ANYTIME:I = 0x4

.field public static final LAYOUT_DOWNLOAD_FILES:I = 0x5

.field public static final LAYOUT_DOWNLOAD_FILES_CANCEL_QUESTION:I = 0x7

.field public static final LAYOUT_DOWNLOAD_FILES_ERROR:I = 0x8

.field public static final LAYOUT_DOWNLOAD_FILES_NO_WIFI_QUESTION:I = 0x9

.field public static final LAYOUT_DOWNLOAD_FILES_QUESTION:I = 0xa

.field public static final LAYOUT_LICENSE_INFO:I = 0xd

.field public static final LAYOUT_LOGO:I = 0xe

.field public static final LAYOUT_NO_DATA_CONNECTION_FOUND:I = 0x10

.field public static final LAYOUT_RETRY_UPDATE_VERSION:I = 0x11

.field public static final LAYOUT_SD_SPACE_INFO:I = 0x12

.field public static final LAYOUT_SEARCHING_FOR_NEW_VERSION:I = 0x13

.field public static final LAYOUT_SEARCHING_FOR_WIFI:I = 0x14

.field public static final LAYOUT_SUCCESS_DOWNLOADED:I = 0x15

.field public static final LAYOUT_UNZIP_FILES:I = 0x1b

.field public static final LAYOUT_UNZIP_FILES_CANCEL_QUESTION:I = 0x1c

.field public static final LAYOUT_VERIFYING_FILES:I = 0x16

.field public static final LAYOUT_WAITING_FOR_WIFI:I = 0x17

.field public static LIBS_PATH:Ljava/lang/String;

.field private static TAP_COUNT_MAX:I

.field public static bIsPaused:Z

.field public static isReached:Ljava/lang/Boolean;

.field private static leftTapCount:I

.field public static mDeviceInfo:Landroid/telephony/TelephonyManager;

.field public static mPreferencesName:Ljava/lang/String;

.field private static m_Dialog:Landroid/app/AlertDialog;

.field private static m_delayTime:I

.field private static m_errorMessage:Ljava/lang/String;

.field public static m_iDownloadedSize:I

.field public static m_iRealRequiredSize:J

.field private static m_objectToastLock:Ljava/lang/Object;

.field public static m_pDownloader:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

.field public static m_portalCode:Ljava/lang/String;

.field private static m_prevErrorMessage:Ljava/lang/String;

.field public static m_sInstance:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

.field private static m_toastExtra:I

.field private static m_toastSize:I

.field public static marketPath:Ljava/lang/String;

.field private static pack_NoFiles:I

.field private static pack_biggestFile:J

.field private static rightTapCount:I

.field private static sUpdateAPK:Z

.field public static s_files_changed:Z

.field public static s_isPauseGame:Z

.field public static sbStarted:Z

.field public static sd_folder:Ljava/lang/String;

.field static slLastIndex:J

.field private static startTime:J

.field private static statePressA:Z

.field private static statePressB:Z

.field private static statePressC:Z


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:I

.field public final M:I

.field public final N:I

.field public final O:I

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:I

.field public final T:I

.field public final U:I

.field public final V:I

.field public final W:I

.field public final X:I

.field public final Y:I

.field public final Z:I

.field public final a:I

.field public final aA:I

.field public final aB:I

.field public aC:[I

.field aD:Landroid/net/wifi/WifiManager;

.field aE:Landroid/net/ConnectivityManager;

.field aF:Landroid/net/wifi/WifiManager$WifiLock;

.field aG:Landroid/os/PowerManager$WakeLock;

.field public aH:Z

.field public aI:Z

.field public aJ:Ljava/io/DataInputStream;

.field aK:Ljava/io/FileOutputStream;

.field aL:I

.field aM:I

.field aN:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

.field aO:I

.field public aP:Z

.field public aQ:Z

.field public aR:Ljava/lang/String;

.field public aS:Z

.field public aT:I

.field public aU:I

.field public aV:I

.field public final aW:I

.field public aX:Z

.field public aY:Z

.field public aZ:Z

.field public final aa:I

.field public final ab:I

.field public final ac:I

.field public final ad:I

.field public final ae:I

.field public final af:I

.field public final ag:I

.field public final ah:I

.field public final ai:I

.field public final aj:I

.field public final ak:I

.field public al:I

.field public am:I

.field public an:I

.field public ao:Ljava/lang/String;

.field public ap:I

.field public aq:I

.field public ar:I

.field public as:I

.field public at:I

.field public au:I

.field public av:I

.field public aw:I

.field public final ax:I

.field public final ay:I

.field public final az:I

.field b:Landroid/app/NotificationManager;

.field private final bA:Z

.field private final bB:I

.field private final bC:I

.field private final bD:I

.field private bE:I

.field private bF:Z

.field private final bG:I

.field private final bH:I

.field private final bI:Ljava/lang/String;

.field private bJ:Ljava/lang/String;

.field private bK:Ljava/util/ArrayList;

.field private bL:I

.field private bM:Z

.field private final bN:I

.field private final bO:I

.field private bP:J

.field private bQ:J

.field private bR:I

.field private bS:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

.field private bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

.field private bU:Z

.field private bV:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;

.field private bW:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;

.field private bX:Z

.field private final bY:I

.field private final bZ:I

.field ba:I

.field bb:Landroid/net/NetworkInfo;

.field bc:Ljava/util/Vector;

.field public bd:Z

.field be:Landroid/content/BroadcastReceiver;

.field bf:Landroid/content/BroadcastReceiver;

.field public bg:Z

.field public bh:Z

.field public bi:Z

.field public bj:Landroid/view/View$OnClickListener;

.field bk:Landroid/app/Notification;

.field bl:Landroid/app/PendingIntent;

.field private br:I

.field private bs:Z

.field private bt:Z

.field private final bu:Ljava/lang/String;

.field private final bv:Ljava/lang/String;

.field private bw:Z

.field private bx:I

.field private final by:Z

.field private final bz:Z

.field c:Ljava/util/Vector;

.field private final ca:I

.field private final cb:I

.field private cc:Ljava/util/ArrayList;

.field private cd:I

.field private ce:I

.field private cf:I

.field private cg:I

.field private ch:J

.field private ci:J

.field private cj:Landroid/os/Handler;

.field private ck:I

.field d:Ljava/util/Vector;

.field e:Ljava/util/Vector;

.field f:J

.field g:J

.field h:J

.field i:Z

.field j:J

.field k:J

.field l:Ljava/text/DecimalFormat;

.field final m:I

.field final n:I

.field final o:I

.field final p:I

.field final q:I

.field final r:I

.field s:Landroid/content/res/AssetManager;

.field t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

.field u:Z

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sbStarted:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->s_isPauseGame:Z

    sput-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_sInstance:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const-string v0, "DungeonHunter2Prefs"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_portalCode:Ljava/lang/String;

    const-string v0, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    const-string v0, "/data/data/com.gameloft.android.GAND.GloftD2SS/libs/"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->LIBS_PATH:Ljava/lang/String;

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->s_files_changed:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/obb/com.gameloft.android.GAND.GloftD2SS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->marketPath:Ljava/lang/String;

    sput-wide v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->slLastIndex:J

    sput-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->isReached:Ljava/lang/Boolean;

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bIsPaused:Z

    sput-wide v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->startTime:J

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->leftTapCount:I

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->rightTapCount:I

    const/4 v0, 0x3

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->TAP_COUNT_MAX:I

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_toastSize:I

    const/16 v0, 0x5dc

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_delayTime:I

    const/16 v0, 0x14

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_toastExtra:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_objectToastLock:Ljava/lang/Object;

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_errorMessage:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_prevErrorMessage:Ljava/lang/String;

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressA:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressB:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressC:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->pack_biggestFile:J

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->pack_NoFiles:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->br:I

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bs:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bt:Z

    const-string v0, "http://www.google.com"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bu:Ljava/lang/String;

    const-string v0, "/data/data/com.gameloft.android.GAND.GloftD2SS/pack.info"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bv:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bw:Z

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bx:I

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->by:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bz:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bA:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bB:I

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bC:I

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bD:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bF:Z

    const v0, 0x8000

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bG:I

    const/16 v0, 0x1c08

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bH:I

    const-string v0, "com.gameloft.android.GAND.GloftD2SS.DungeonHunter2"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bJ:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->d:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e:Ljava/util/Vector;

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->f:J

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->g:J

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->h:J

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->i:Z

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j:J

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->k:J

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->n:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->o:I

    const/4 v0, -0x3

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->p:I

    const/4 v0, -0x4

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->q:I

    const/4 v0, -0x5

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->r:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bM:Z

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bN:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bO:I

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bP:J

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bQ:J

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u:Z

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->v:I

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->w:I

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->x:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->y:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->z:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->A:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->B:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->C:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->D:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->E:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->F:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->G:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->H:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->I:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->J:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->K:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->L:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->M:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->N:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->O:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->P:I

    const/16 v0, 0x1a

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->Q:I

    const/16 v0, 0x1b

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->R:I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->S:I

    const/16 v0, 0x1d

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->T:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->U:I

    const/16 v0, 0x1f

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->V:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->W:I

    const/16 v0, 0x21

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->X:I

    const/16 v0, 0x29

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->Y:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->Z:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aa:I

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ab:I

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ac:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ad:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ae:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->af:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ag:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ah:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ai:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aj:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ak:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->an:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->at:I

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->au:I

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->av:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aw:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ax:I

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ay:I

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->az:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aA:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aB:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aH:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aI:Z

    iput-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aK:Ljava/io/FileOutputStream;

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aL:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aM:I

    iput-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aN:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aO:I

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aP:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aQ:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aT:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aV:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aW:I

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aX:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aY:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aZ:Z

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    iput-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bb:Landroid/net/NetworkInfo;

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bU:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bX:Z

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bY:I

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bZ:I

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ca:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cb:I

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bd:Z

    iput-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->be:Landroid/content/BroadcastReceiver;

    iput-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bg:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bh:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bi:Z

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cd:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ce:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cf:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cg:I

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/c;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/c;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bj:Landroid/view/View$OnClickListener;

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ch:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ci:J

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ck:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ap:I

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setContext(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private A()Ljava/lang/String;
    .locals 4

    const-string v0, "SDFolder"

    const-string v1, ""

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/qaTestingConfigs.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DATA_LINK"

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getOverriddenSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bt:Z

    const/high16 v0, 0x7f040000

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->ReadFile(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "DYNAMIC:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x8

    const/16 v0, 0xd

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPhoneDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&product=1196"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&version=1.0.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&portal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_portalCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private B()I
    .locals 10

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    iput-wide v8, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->h:J

    :try_start_0
    const-string v0, "SDFolder"

    const-string v3, ""

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.gameloft.android.GAND.GloftD2SS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    const/4 v4, 0x0

    const-string v5, "com.gameloft.android.GAND.GloftD2SS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v6, v0

    mul-long v3, v4, v6

    const-wide/32 v5, 0x100000

    div-long/2addr v3, v5

    long-to-int v0, v3

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->g:J

    iget-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->g:J

    cmp-long v0, v3, v8

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->hasSDCard()I

    move-result v3

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v3, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    iget-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->h:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->f()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->h:J

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v0, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files"

    if-ne v3, v0, :cond_3

    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_2
    return v0

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    iget-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->h:J

    cmp-long v0, v3, v8

    if-lez v0, :cond_5

    iget-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->h:J

    add-long/2addr v3, v8

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->h:J

    :cond_5
    iget-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->g:J

    iget-wide v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->h:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method private C()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "================ finishSuccess"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->setResult(I)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->finish()V

    return-void
.end method

.method private D()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "================ finishFail"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->setResult(I)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->finish()V

    return-void
.end method

.method private E()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-samsung_a_store"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-1196"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private F()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bg:Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bi:Z

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/l;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/l;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private G()V
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private static GetCurrentVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "3.1.4"

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    if-nez v2, :cond_0

    const-string v1, "SERVER_URL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    if-eqz v2, :cond_1

    const-string v1, "DOWNLOAD_URL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "VERSION_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static GetLayoutName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Layout("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "LAYOUT_CONFIRM_3G"

    goto :goto_0

    :pswitch_2
    const-string v0, "LAYOUT_CONFIRM_WAITING_FOR_WIFI"

    goto :goto_0

    :pswitch_3
    const-string v0, "LAYOUT_DOWNLOAD_ANYTIME"

    goto :goto_0

    :pswitch_4
    const-string v0, "LAYOUT_DOWNLOAD_FILES"

    goto :goto_0

    :pswitch_5
    const-string v0, "LAYOUT_DOWNLOAD_FILES_CANCEL_QUESTION"

    goto :goto_0

    :pswitch_6
    const-string v0, "LAYOUT_DOWNLOAD_FILES_ERROR"

    goto :goto_0

    :pswitch_7
    const-string v0, "LAYOUT_DOWNLOAD_FILES_NO_WIFI_QUESTION"

    goto :goto_0

    :pswitch_8
    const-string v0, "LAYOUT_DOWNLOAD_FILES_QUESTION"

    goto :goto_0

    :pswitch_9
    const-string v0, "LAYOUT_LICENSE_INFO"

    goto :goto_0

    :pswitch_a
    const-string v0, "LAYOUT_LOGO"

    goto :goto_0

    :pswitch_b
    const-string v0, "LAYOUT_NO_DATA_CONNECTION_FOUND"

    goto :goto_0

    :pswitch_c
    const-string v0, "LAYOUT_SD_SPACE_INFO"

    goto :goto_0

    :pswitch_d
    const-string v0, "LAYOUT_VERIFYING_FILES"

    goto :goto_0

    :pswitch_e
    const-string v0, "LAYOUT_SEARCHING_FOR_WIFI"

    goto :goto_0

    :pswitch_f
    const-string v0, "LAYOUT_SUCCESS_DOWNLOADED"

    goto :goto_0

    :pswitch_10
    const-string v0, "LAYOUT_WAITING_FOR_WIFI"

    goto :goto_0

    :pswitch_11
    const-string v0, "LAYOUT_MAIN"

    goto :goto_0

    :pswitch_12
    const-string v0, "LAYOUT_SEARCHING_FOR_NEW_VERSION"

    goto :goto_0

    :pswitch_13
    const-string v0, "LAYOUT_CONFIRM_UPDATE"

    goto :goto_0

    :pswitch_14
    const-string v0, "LAYOUT_RETRY_UPDATE_VERSION"

    goto :goto_0

    :pswitch_15
    const-string v0, "LAYOUT_CHECKING_REQUIRED_FILES"

    goto :goto_0

    :pswitch_16
    const-string v0, "GI_STATE_UNZIP_DOWNLOADED_FILES"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1
        :pswitch_13
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_14
        :pswitch_c
        :pswitch_12
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method private static GetUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private H()V
    .locals 4

    const v3, 0x7f0b0008

    const v1, 0x7f0b0004

    const v2, 0x7f0b0006

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ce:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_9
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :pswitch_a
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private I()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b:Landroid/app/NotificationManager;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bl:Landroid/app/PendingIntent;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    const v1, 0x7f020030

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bl:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private J()Z
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "InsTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->SaveDateLastUpdate(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return v7

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "InsTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v7

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    array-length v0, v0

    const/4 v5, 0x2

    if-le v0, v5, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->SaveDateLastUpdate(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    sub-long v0, v3, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->SaveDateLastUpdate(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private K()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aR:Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->pack_biggestFile:J

    const/4 v0, 0x0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->pack_NoFiles:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a(Landroid/content/Context;)V

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->pack_NoFiles:I

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->m()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->pack_NoFiles:I

    sget-wide v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->pack_biggestFile:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->l()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->l()J

    move-result-wide v2

    sput-wide v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->pack_biggestFile:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method private L()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->n()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static SaveDateLastUpdate(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string v2, "%d/"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "InsTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->WriteFile(Ljava/lang/String;Ljava/lang/String;)Z

    return v5
.end method

.method private a(II)V
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput p2, v0, p1

    return-void
.end method

.method private a(ILjava/lang/String;II)V
    .locals 4

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ch:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ci:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b:Landroid/app/NotificationManager;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bl:Landroid/app/PendingIntent;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    const v1, 0x7f020030

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bl:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_2
    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0b0025

    const v2, 0x7f020030

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0b0026

    const v2, 0x7f0501f5

    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ch:J

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b:Landroid/app/NotificationManager;

    const/16 v1, 0x1c08

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030007

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0b0027

    const v2, 0x7f050048

    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    const v0, 0x7f050048

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030007

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0b0027

    const v2, 0x7f050047

    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    const v0, 0x7f050047

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030008

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0b0028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bk:Landroid/app/Notification;

    const/16 v1, 0x12

    iput v1, v0, Landroid/app/Notification;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(IZ)V
    .locals 1

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/h;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(J)V
    .locals 5

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bc:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-ltz v1, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    const-string v0, "SDFolder"

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    const-string v0, "SDFolder"

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/l;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/l;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const v1, 0x8000

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/pack.info"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;

    invoke-direct {v6, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_1

    sub-int v0, v7, v3

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-array v9, v0, [B

    invoke-virtual {v5, v9}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v6, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    new-instance v7, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;

    invoke-direct {v7, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;-><init>(Ljava/io/InputStream;)V

    const v0, 0x8000

    new-array v5, v0, [B

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_3

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u:Z

    if-nez v0, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a(J)V

    new-instance v8, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;

    invoke-direct {v8, v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v9, ".\\\\"

    const-string v10, ""

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v9, ".\\"

    const-string v10, ""

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "\\"

    const-string v10, "/"

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_2

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    array-length v0, v5

    invoke-direct {v3, v9, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move v0, v2

    :goto_3
    const/4 v10, 0x0

    const v11, 0x8000

    invoke-virtual {v8, v5, v10, v11}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;->read([BII)I

    move-result v10

    if-ltz v10, :cond_5

    add-int/2addr v0, v10

    const/4 v11, 0x0

    invoke-virtual {v3, v5, v11, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_3

    :catch_0
    move-exception v0

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget v10, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    div-int/lit16 v0, v0, 0x400

    add-int/2addr v0, v10

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bIsPaused:Z

    if-nez v0, :cond_6

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/a;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/a;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v8}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;->closeEntry()V

    invoke-virtual {v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->b()V

    invoke-virtual {v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cc:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x2

    :try_start_0
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    :goto_0
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v1, p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, -0x2

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    const/16 v1, 0xdc

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v1, 0xdd

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->incrementConnectionTimeout()V

    :goto_2
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->i()V

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aJ:Ljava/io/DataInputStream;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aJ:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aJ:Ljava/io/DataInputStream;

    :cond_2
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aJ:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    const/16 v1, 0xde

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    goto :goto_2

    :catch_2
    move-exception v1

    const/16 v1, 0xdf

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    int-to-long v7, v3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    long-to-int v3, v7

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v7

    invoke-static {v3, v7, v8}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/CRC;->isValidChecksum(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-nez v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->p()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    :goto_2
    return v0

    :cond_3
    move v3, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u:Z

    if-nez v0, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    int-to-long v7, v0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v9, 0x400

    div-long/2addr v5, v9

    add-long/2addr v5, v7

    long-to-int v0, v5

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_1
    return v0

    :cond_1
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x4000

    new-array v0, v0, [B

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/BufferedOutputStream;

    array-length v8, v0

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_2
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {v6, v0, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    iget-boolean v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u:Z

    if-nez v9, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    div-int/lit16 v8, v8, 0x400

    add-int/2addr v8, v9

    iput v8, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->p()V

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->p()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bX:Z

    return v0
.end method

.method static synthetic access$002(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bX:Z

    return p1
.end method

.method static synthetic access$100(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V
    .locals 0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->o()V

    return-void
.end method

.method static synthetic access$1000(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bx:I

    return v0
.end method

.method static synthetic access$1100(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    return v0
.end method

.method static synthetic access$200(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;I)I
    .locals 0

    iput p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cf:I

    return p1
.end method

.method static synthetic access$500(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ce:I

    return v0
.end method

.method static synthetic access$502(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;I)I
    .locals 0

    iput p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ce:I

    return p1
.end method

.method static synthetic access$600(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cg:I

    return v0
.end method

.method static synthetic access$602(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;I)I
    .locals 0

    iput p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cg:I

    return p1
.end method

.method static synthetic access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    return v0
.end method

.method public static addErrorNumber(I)V
    .locals 3

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_objectToastLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_errorMessage:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_errorMessage:Ljava/lang/String;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(II)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cc:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IILandroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(IZ)V
    .locals 1

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/i;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cj:Landroid/os/Handler;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/j;

    invoke-direct {v2, p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/j;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/j;->start()V

    :cond_0
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->isReached:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->isReached:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->isReached:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->isReached:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)J
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :goto_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/32 v5, 0x100000

    div-long/2addr v3, v5

    long-to-int v1, v3

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->g:J

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/files"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v1, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->g:J

    :goto_2
    return-wide v0

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 7

    const/16 v6, 0xe

    const v5, 0x7f030002

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, 0x7f030000

    :goto_0
    if-eq p1, v3, :cond_0

    if-eq p1, v6, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->clearErrorHistory()V

    :cond_1
    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ar:I

    iput p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    :cond_3
    return-void

    :pswitch_1
    const/16 v0, 0xd

    invoke-direct {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bP:J

    const v0, 0x7f030004

    invoke-direct {p0, v0, v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bJ:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j()V

    :cond_4
    invoke-static {v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->onLaunchGame(I)V

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t()I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->launchInstallerTracker(IZ)V

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x12

    invoke-direct {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x9

    invoke-direct {p0, v5, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    :cond_5
    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "com.gameloft.android.GAND.GloftD2SS"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x14

    invoke-direct {p0, v5, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto :goto_1

    :cond_6
    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_portalCode:Ljava/lang/String;

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bF:Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :pswitch_6
    const/4 v0, 0x3

    invoke-direct {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_1

    :pswitch_7
    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bg:Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_8

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bi:Z

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/l;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/l;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bQ:J

    const/16 v0, 0x17

    invoke-direct {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0xa

    invoke-direct {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x10

    invoke-direct {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x15

    invoke-direct {p0, v5, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bg:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bd:Z

    if-nez v0, :cond_a

    :cond_9
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bd:Z

    if-nez v0, :cond_b

    const/16 v0, 0xd

    const-string v1, ""

    invoke-direct {p0, v0, v1, v4, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(ILjava/lang/String;II)V

    :cond_a
    :goto_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "102"

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->saveVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400000

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :pswitch_c
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ce:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v0, 0x8

    invoke-direct {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/m;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/m;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/m;->start()V

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bg:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bd:Z

    if-nez v0, :cond_2

    :cond_c
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bd:Z

    if-nez v0, :cond_d

    const-string v0, ""

    invoke-direct {p0, v6, v0, v4, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(ILjava/lang/String;II)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400000

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :pswitch_d
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_1

    :pswitch_e
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aQ:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    if-eqz v0, :cond_2

    const/16 p1, 0x17

    goto/16 :goto_0

    :pswitch_f
    const v0, 0x7f030001

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_1

    :pswitch_10
    const/16 v0, 0x13

    invoke-direct {p0, v5, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_1

    :pswitch_11
    const/4 v0, 0x2

    invoke-direct {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_1

    :pswitch_12
    const/16 v0, 0x11

    invoke-direct {p0, v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static cancelDialog()V
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_Dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_Dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method private static clearErrorHistory()V
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_errorMessage:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_prevErrorMessage:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_errorMessage:Ljava/lang/String;

    return-void
.end method

.method private static createNoMedia(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->g()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "$"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->f:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cj:Landroid/os/Handler;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private f()I
    .locals 14

    const/16 v13, 0x14

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-ne v0, v13, :cond_1

    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h()I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    :cond_1
    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j:J

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->k:J

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->h:J

    sput-wide v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_iRealRequiredSize:J

    iput v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v1, v3

    move v5, v6

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    iget-boolean v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->i:Z

    invoke-virtual {v0, v9}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a(Z)I

    move-result v9

    if-ne v9, v7, :cond_3

    sget-wide v9, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_iRealRequiredSize:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->e()J

    move-result-wide v11

    add-long/2addr v9, v11

    sput-wide v9, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_iRealRequiredSize:J

    move v5, v7

    :cond_3
    iget-wide v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i()J

    move-result-wide v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j:J

    iget-wide v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->k:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->j()J

    move-result-wide v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->k:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->k()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->f()J

    move-result-wide v9

    add-long/2addr v1, v9

    :cond_4
    iget v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-ne v9, v13, :cond_2

    iget v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h()I

    move-result v0

    add-int/2addr v0, v9

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->p()V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-ne v0, v13, :cond_b

    move v8, v6

    :goto_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v8, v0, :cond_b

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0, v9}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v7

    :goto_4
    if-nez v0, :cond_9

    const-string v0, "main"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "patch"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->marketPath:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v10, ".\\\\"

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v10, ".\\"

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "\\"

    const-string v11, "/"

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_9
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->p()V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_2

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v10, ".\\\\"

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v10, ".\\"

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "\\"

    const-string v11, "/"

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    cmp-long v0, v1, v3

    if-lez v0, :cond_c

    invoke-direct {p0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(J)V

    :cond_c
    return v5

    :cond_d
    move v0, v6

    goto/16 :goto_4
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private g()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "/data/data/com.gameloft.android.GAND.GloftD2SS/prefs/gl_ver"

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "102"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    if-ne v0, v1, :cond_0

    const-string v2, "ZipHasCRCtest"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static getSDFolder()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    return-object v0
.end method

.method private static getZipRealSpace(Ljava/util/zip/ZipFile;)J
    .locals 6

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    const-wide/16 v0, 0x0

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private h()V
    .locals 1

    const-string v0, "102"

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->saveVersion(Ljava/lang/String;)V

    return-void
.end method

.method private static hasNativeError()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static hasSDCard()I
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aJ:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aJ:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aJ:Ljava/io/DataInputStream;

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aK:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aK:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aK:Ljava/io/FileOutputStream;

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isEnoughInternalSpace()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    const/4 v0, 0x1

    return v0
.end method

.method private static isKoreanOperator()Z
    .locals 2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mDeviceInfo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKTelecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mDeviceInfo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "olleh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mDeviceInfo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AT&T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mDeviceInfo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LG U+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 4

    const-string v0, "SDFolder"

    const-string v1, ""

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/qaTestingConfigs.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DATA_LINK"

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getOverriddenSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bJ:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SERVER_URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bt:Z

    const/high16 v0, 0x7f040000

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->ReadFile(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "DYNAMIC:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x8

    const/16 v0, 0xd

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPhoneDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&product=1196"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&version=1.0.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&portal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_portalCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private k()Z
    .locals 12

    const-string v0, "SDFolder"

    const-string v1, ""

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    :try_start_0
    iget-object v3, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v5, "main"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v5, "patch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->marketPath:Ljava/lang/String;

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getZipRealSpace(Ljava/util/zip/ZipFile;)J

    move-result-wide v5

    add-long v0, v1, v5

    move-wide v1, v0

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    const-wide/32 v3, 0x100000

    div-long v0, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(J)V

    :cond_3
    const-string v0, "SDFolder"

    const-string v1, ""

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "com.gameloft.android.GAND.GloftD2SS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/File;

    const/4 v2, 0x0

    const-string v3, "com.gameloft.android.GAND.GloftD2SS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v4, v2, v0

    const-wide/32 v0, 0x100000

    div-long v0, v4, v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->g:J

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    :try_start_1
    iget-object v3, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v7, "main"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v7, "patch"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_6
    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->marketPath:Ljava/lang/String;

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    sub-long v7, v8, v10

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_d

    add-long v0, v1, v7

    :goto_6
    move-wide v1, v0

    goto :goto_5

    :cond_7
    const-string v0, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files"

    if-ne v1, v0, :cond_8

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    :try_start_2
    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v7

    add-long/2addr v1, v7

    goto :goto_5

    :cond_b
    cmp-long v0, v1, v4

    if-ltz v0, :cond_c

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j:J

    const-wide/32 v3, 0x100000

    div-long v0, v1, v3

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->h:J

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_d
    move-wide v0, v1

    goto :goto_6
.end method

.method private l()V
    .locals 8

    const/4 v7, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ar:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ar:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->an:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :cond_2
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    if-eq v0, v7, :cond_1

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    if-eq v0, v7, :cond_4

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    :cond_4
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aY:Z

    if-nez v0, :cond_1

    iput-boolean v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aY:Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bJ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j()V

    :cond_6
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bJ:Ljava/lang/String;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v5

    :goto_1
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "qaTestingConfigs.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKIP_VALIDATION"

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getOverriddenSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    iput-boolean v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aQ:Z

    iput-boolean v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->K()V

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ap:I

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e()I

    move-result v0

    if-gtz v0, :cond_9

    invoke-direct {p0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->hasSDCard()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v0, v1, v5

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v6

    :goto_2
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v0, v1, v4

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->f()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v0, v1, v3

    invoke-virtual {p0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->B()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v0, v1, v6

    :cond_a
    invoke-virtual {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    invoke-direct {p0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_c
    move v0, v5

    goto :goto_2

    :cond_d
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bP:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sput-boolean v6, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->s_files_changed:Z

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e()I

    move-result v0

    if-gtz v0, :cond_10

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0xf1

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    invoke-direct {p0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bJ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x105

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_13
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0xf0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    invoke-direct {p0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_14
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bJ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x104

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_5
    iput-boolean v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->i:Z

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->L()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->K()V

    :cond_16
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->f()I

    move-result v0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->d()I

    move-result v1

    if-lez v1, :cond_19

    iput-boolean v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->i:Z

    const-string v1, "102"

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->saveVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->hasSDCard()I

    move-result v1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v1, v2, v5

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v0, v1, v3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->B()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v0, v1, v6

    invoke-virtual {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_19
    const-string v0, "102"

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->saveVersion(Ljava/lang/String;)V

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    if-ne v0, v3, :cond_1e

    :cond_1a
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "com.gameloft.android.GAND.GloftD2SS"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->v()I

    move-result v0

    iget-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bg:Z

    if-eqz v1, :cond_1c

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bf:Landroid/content/BroadcastReceiver;

    goto/16 :goto_0

    :cond_1b
    if-gez v0, :cond_1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_1c
    if-gez v0, :cond_1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ar:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_1e
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bF:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    iput-boolean v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bF:Z

    goto/16 :goto_0

    :pswitch_7
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bd:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bQ:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->moveTaskToBack(Z)Z

    goto/16 :goto_0

    :pswitch_8
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    if-ne v0, v3, :cond_20

    :cond_1f
    const v0, 0x7f0b0006

    invoke-direct {p0, v0, v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(IZ)V

    const v0, 0x7f0b000d

    invoke-direct {p0, v0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(IZ)V

    :cond_20
    iput v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    goto/16 :goto_0

    :pswitch_9
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    if-nez v0, :cond_21

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aM:I

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    goto/16 :goto_0

    :cond_21
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m()V

    goto/16 :goto_0

    :pswitch_a
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aX:Z

    if-eqz v0, :cond_22

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    if-nez v0, :cond_23

    move v0, v6

    :goto_3
    invoke-static {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->downloadFinishTracker(IZ)V

    const v0, 0x7f0b0004

    invoke-direct {p0, v0, v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(IZ)V

    const v0, 0x7f0b000d

    invoke-direct {p0, v0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(IZ)V

    iput-boolean v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aX:Z

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->o()V

    :cond_22
    iput v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    goto/16 :goto_0

    :cond_23
    move v0, v5

    goto :goto_3

    :pswitch_b
    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    const-string v0, "ExtraFile"

    const-string v1, ""

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "MainFileName"

    const-string v1, ""

    const-string v2, "ExpansionPrefs"

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "PatchFileName"

    const-string v1, ""

    const-string v2, "ExpansionPrefs"

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ZipHasCRCtest"

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v5, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceBoolean(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const v0, 0x7f030001

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    iget-object v2, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v3, "main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->marketPath:Ljava/lang/String;

    const-string v3, ""

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_25
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    iget-object v2, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v3, "patch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->marketPath:Ljava/lang/String;

    const-string v3, ""

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    :cond_27
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    iget-object v2, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v3, "main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v3, "patch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    const-string v3, ""

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    :cond_29
    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    const v0, 0x7f030001

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2a
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    iget-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v2, "main"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v2, "patch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    const-string v3, ""

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_7

    :cond_2b
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2c
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    iget-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v2, "patch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->marketPath:Ljava/lang/String;

    const-string v3, ""

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_8

    :cond_2d
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2e
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    iget-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v2, "main"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->marketPath:Ljava/lang/String;

    const-string v3, ""

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_9

    :cond_2f
    const-string v0, "ZipHasCRCtest"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u:Z

    if-nez v0, :cond_1

    iput-boolean v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    iput v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_c
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->r()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method

.method private static loadPreferences$552c4e01()V
    .locals 0

    return-void
.end method

.method private m()V
    .locals 8

    const/4 v4, 0x2

    const/4 v6, 0x3

    const/16 v7, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bg:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bd:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-ne v0, v7, :cond_1

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ap:I

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->f()I

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->i()V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    :cond_1
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->p()V

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_22

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_22

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bIsPaused:Z

    if-nez v0, :cond_22

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->n()V

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    const v0, 0x7f030002

    invoke-direct {p0, v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bJ:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j()V

    :cond_3
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bt:Z

    if-eqz v0, :cond_5

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->br:I

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bs:Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->c()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CurrentVersion"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->br:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IsGenericBuild"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bs:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iput v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->o()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->p()V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CurrentVersion"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_6

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->c()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CurrentVersion"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IsGenericBuild"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iput v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bJ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->L()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->K()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0xcb

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    invoke-direct {p0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0xcc

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    invoke-direct {p0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    goto/16 :goto_0

    :pswitch_4
    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ap:I

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->hasSDCard()I

    move-result v0

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v0, v3, v2

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v0, v3, v6

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->f()I

    move-result v0

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v0, v3, v4

    invoke-virtual {p0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->B()I

    move-result v0

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aput v0, v3, v1

    :cond_a
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e()I

    move-result v0

    if-gtz v0, :cond_c

    const/16 v0, 0xca

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    invoke-direct {p0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0, v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->d()I

    move-result v0

    if-gtz v0, :cond_10

    const/16 v0, 0xc9

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    invoke-direct {p0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x9

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CurrentVersion"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_12

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->c()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CurrentVersion"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IsGenericBuild"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->SaveDateLastUpdate(Ljava/lang/String;)Z

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->n()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "patch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "main"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->marketPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_15
    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CurrentVersion"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_17

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->c()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CurrentVersion"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IsGenericBuild"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_18
    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    goto/16 :goto_0

    :pswitch_7
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    if-ne v0, v1, :cond_19

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->w()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v()V

    goto :goto_8

    :cond_1b
    const/16 v0, 0xf6

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    invoke-direct {p0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_1

    :cond_1c
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r()V

    goto :goto_9

    :cond_1d
    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_iDownloadedSize:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_iDownloadedSize:I

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->t()J

    move-result-wide v5

    long-to-int v0, v5

    add-int/2addr v0, v4

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_iDownloadedSize:I

    goto :goto_a

    :cond_1e
    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_iDownloadedSize:I

    shr-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->s()Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    :goto_c
    move v3, v0

    goto :goto_b

    :cond_1f
    if-eqz v3, :cond_20

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    :cond_20
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->u()Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_e
    move v3, v0

    goto :goto_d

    :cond_21
    if-eqz v3, :cond_0

    const/16 v0, 0x226

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    invoke-direct {p0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_22
    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->k:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    iget-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j:J

    long-to-double v1, v1

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_23

    move v0, v1

    :cond_23
    const v2, 0x7f050050

    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{SIZE}"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->l:Ljava/text/DecimalFormat;

    float-to-double v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{TOTAL_SIZE}"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->l:Ljava/text/DecimalFormat;

    float-to-double v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bIsPaused:Z

    if-nez v1, :cond_24

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_24

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/g;

    invoke-direct {v1, p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/g;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_24
    sget-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bIsPaused:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v2, v2

    iget-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->k:J

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    long-to-int v3, v3

    iget v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    add-int/2addr v3, v4

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(ILjava/lang/String;II)V

    goto/16 :goto_1

    :cond_25
    move v0, v3

    goto/16 :goto_e

    :cond_26
    move v0, v3

    goto/16 :goto_c

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private n()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bX:Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aF:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    const-string v1, "Installer"

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aF:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aF:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aF:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aG:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_2

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "Installer_PowerLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aG:Landroid/os/PowerManager$WakeLock;

    :cond_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aG:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aG:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_3
    return-void
.end method

.method private o()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aF:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aF:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aF:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_0
    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aF:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aG:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aG:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aG:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aG:Landroid/os/PowerManager$WakeLock;

    :cond_3
    return-void
.end method

.method private static ovWifiMode()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "qaTestingConfigs.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI_MODE"

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getOverriddenSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 3

    const/16 v2, 0xc

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_3
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bIsPaused:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/f;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/f;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private q()V
    .locals 12

    const-wide/16 v10, 0x400

    const/4 v9, 0x5

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    const/16 v8, 0xc

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-eq v0, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-ne v0, v8, :cond_2

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    if-ne v0, v9, :cond_0

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bIsPaused:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->k:J

    long-to-double v0, v0

    div-double/2addr v0, v4

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    div-double/2addr v0, v4

    double-to-float v0, v0

    iget-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j:J

    long-to-double v1, v1

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    move v0, v1

    :cond_3
    const v2, 0x7f050050

    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{SIZE}"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->l:Ljava/text/DecimalFormat;

    float-to-double v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{TOTAL_SIZE}"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->l:Ljava/text/DecimalFormat;

    float-to-double v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bIsPaused:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    if-eq v1, v9, :cond_4

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/g;

    invoke-direct {v1, p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/g;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bIsPaused:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j:J

    div-long/2addr v1, v10

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int v1, v1

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->k:J

    div-long/2addr v2, v10

    long-to-int v2, v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    add-int/2addr v2, v3

    invoke-direct {p0, v8, v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(ILjava/lang/String;II)V

    goto/16 :goto_0
.end method

.method private r()V
    .locals 10

    const/16 v4, 0x19

    const/16 v9, 0x17

    const/16 v8, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bU:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v8}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bJ:Ljava/lang/String;

    const-string v3, ""

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j()V

    :cond_2
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aQ:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bU:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->J()Z

    :cond_3
    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aQ:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    invoke-direct {p0, v8}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    :cond_4
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aQ:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bU:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->J()Z

    :cond_5
    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bU:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aQ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    invoke-direct {p0, v9}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto :goto_1

    :pswitch_2
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    if-nez v0, :cond_7

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->o()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    invoke-direct {p0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    :cond_7
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f040005

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->ReadFile(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://secure.gameloft.com/partners/android/update_check.php"

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    invoke-virtual {v2, v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_3
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->p()V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b()Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IsGenericBuild"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v5, v2, v6}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceBoolean(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v3, v1

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CurrentVersion"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v2, v6}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-le v5, v0, :cond_11

    move v0, v1

    :goto_5
    move v3, v0

    goto :goto_4

    :cond_9
    if-eqz v3, :cond_b

    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    :cond_a
    :goto_6
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    if-eqz v0, :cond_0

    :goto_7
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->f()Z

    move-result v0

    if-nez v0, :cond_c

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_b
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->SaveDateLastUpdate(Ljava/lang/String;)Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    invoke-direct {p0, v8}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->w:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->w:Ljava/lang/String;

    const-string v3, "Error: No live release"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bU:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aQ:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    invoke-direct {p0, v9}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_1

    :cond_d
    const-string v1, ""

    const-string v0, ""

    const v3, 0x7f040003

    :try_start_1
    invoke-static {v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->ReadFile(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    iget-object v3, v3, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->w:Ljava/lang/String;

    invoke-static {v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->GetCurrentVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bU:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aQ:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    invoke-direct {p0, v9}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_1

    :catch_1
    move-exception v3

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bU:Z

    goto :goto_8

    :cond_e
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_4
    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    goto/16 :goto_0

    :pswitch_5
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    if-nez v0, :cond_10

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    :cond_10
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sUpdateAPK:Z

    if-eqz v0, :cond_0

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->w:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_9
    invoke-direct {p0, v8}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_9

    :cond_11
    move v0, v3

    goto/16 :goto_5

    :cond_12
    move v0, v2

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static readVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.gameloft.android.GAND.GloftD2SS/prefs/gl_ver"

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    return-void
.end method

.method private static saveVersion(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "/data/data/com.gameloft.android.GAND.GloftD2SS/prefs/gl_ver"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :goto_0
    invoke-static {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->WriteFile(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static startGame()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sbStarted:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "================ finishSuccess b"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_sInstance:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->C()V

    return-void
.end method

.method private t()I
    .locals 5

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "qaTestingConfigs.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI_MODE"

    invoke-static {v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getOverriddenSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_0
    if-eqz v3, :cond_6

    const-string v4, "WIFI_ONLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "TRUE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    move v0, v2

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const-string v4, "WIFI_3G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "FALSE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const-string v4, "WIFI_3G_ORANGE_IL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_6
    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mDeviceInfo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mDeviceInfo:Landroid/telephony/TelephonyManager;

    if-eq v3, v0, :cond_8

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mDeviceInfo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mDeviceInfo:Landroid/telephony/TelephonyManager;

    if-eq v3, v2, :cond_7

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mDeviceInfo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mDeviceInfo:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_8

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    new-instance v3, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-direct {v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;-><init>()V

    iput-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bS:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    new-instance v3, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bS:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-direct {v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;)V

    iput-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    invoke-virtual {v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->a()V

    :goto_2
    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    invoke-virtual {v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->b()Z

    move-result v3

    if-nez v3, :cond_9

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getWHTTP()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->t:Ljava/lang/String;

    if-nez v3, :cond_a

    move v0, v1

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getLastErrorCode()I

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getWHTTP()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->t:Ljava/lang/String;

    const-string v4, "WIFI_ONLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v2

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getWHTTP()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;

    move-result-object v2

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->t:Ljava/lang/String;

    const-string v3, "WIFI_3G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bT:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getWHTTP()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;

    move-result-object v2

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->t:Ljava/lang/String;

    const-string v3, "WIFI_3G_ORANGE_IL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method

.method private u()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aE:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aE:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aE:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private v()I
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x1e

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aF:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    const-string v3, "Installer"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aF:Landroid/net/wifi/WifiManager$WifiLock;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aF:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aF:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aV:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aV:I

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aV:I

    if-le v2, v4, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    iput-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    move v0, v1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aV:I

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v3

    if-nez v3, :cond_3

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aV:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aV:I

    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aV:I

    if-le v2, v4, :cond_0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bb:Landroid/net/NetworkInfo;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    iput-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    :cond_2
    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aV:I

    move v0, v1

    goto/16 :goto_0

    :cond_3
    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aV:I

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aU:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aH:Z

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private w()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aE:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bb:Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bb:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bb:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bb:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private x()V
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.gameloft.android.GAND.GloftD2SS"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    const-string v4, "pack"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    const-string v4, ".info"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;

    invoke-direct {v3, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/data/com.gameloft.android.GAND.GloftD2SS/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private y()Ljava/util/Vector;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v5, "/files"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/proc/mounts"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "/mnt/sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "/storage/sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    const-string v4, "android_secure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Android/data/com.gameloft.android.GAND.GloftD2SS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    const-string v1, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private z()Ljava/lang/String;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->y()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bc:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bc:Ljava/util/Vector;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files"

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    const-string v0, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files"

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p2, "{SIZE}"

    :cond_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aC:[I

    aget v1, v1, p1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b:Landroid/app/NotificationManager;

    const/16 v1, 0x1c08

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final b(I)V
    .locals 6

    const/16 v5, 0x13

    const v4, 0x7f0b0006

    const/4 v1, 0x1

    const v3, 0x7f0b0004

    const/4 v2, 0x0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ce:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-ne p1, v3, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "com.gameloft.android.GAND.GloftD2SS"

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aI:Z

    :cond_1
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_0

    invoke-direct {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto :goto_0

    :pswitch_2
    if-ne p1, v3, :cond_4

    const-string v0, "0.0.1"

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->saveVersion(Ljava/lang/String;)V

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_0

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto :goto_0

    :pswitch_3
    if-ne p1, v3, :cond_5

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v4, :cond_8

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "com.gameloft.android.GAND.GloftD2SS"

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v3, 0x32

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aI:Z

    :cond_6
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_8
    const v0, 0x7f0b0008

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    :cond_9
    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    invoke-direct {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_4
    if-ne p1, v3, :cond_0

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->D()V

    goto/16 :goto_0

    :pswitch_5
    const v0, 0x7f0b0008

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->am:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    const/high16 v0, 0x7f030000

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_0

    :pswitch_6
    const v0, 0x7f0b0008

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x7f030000

    const/16 v1, 0x1c

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_0

    :pswitch_7
    if-ne p1, v3, :cond_a

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u:Z

    invoke-direct {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_a
    if-ne p1, v4, :cond_0

    const v0, 0x7f030001

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_0

    :pswitch_8
    if-ne p1, v3, :cond_b

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/d;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/d;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/d;->start()V

    invoke-direct {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->i()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->d:Ljava/util/Vector;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ap:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".\\\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_b
    if-ne p1, v4, :cond_0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->am:I

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    const v0, 0x7f030001

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_0

    :pswitch_9
    if-ne p1, v3, :cond_d

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ap:I

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->i()V

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xf4

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_d
    if-ne p1, v4, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    :cond_e
    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    invoke-direct {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_a
    if-ne p1, v3, :cond_f

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_f
    if-ne p1, v4, :cond_0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    if-ne v0, v1, :cond_10

    invoke-direct {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "com.gameloft.android.GAND.GloftD2SS"

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v3, 0x32

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aI:Z

    :cond_11
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->w()Z

    move-result v0

    if-eqz v0, :cond_12

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_b
    if-ne p1, v3, :cond_17

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    if-eqz v0, :cond_13

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0xf5

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_13
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v0

    if-eqz v0, :cond_14

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    const/16 v0, 0x205

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_14
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aX:Z

    if-nez v0, :cond_15

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bR:I

    if-nez v0, :cond_16

    move v0, v1

    :goto_4
    invoke-static {v3, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->downloadStartTracker(IZ)V

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aX:Z

    :cond_15
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->createNoMedia(Ljava/lang/String;)V

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    const v0, 0x7f030001

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    goto/16 :goto_0

    :cond_16
    move v0, v2

    goto :goto_4

    :cond_17
    if-ne p1, v4, :cond_0

    invoke-direct {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_c
    if-ne p1, v3, :cond_0

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->D()V

    goto/16 :goto_0

    :pswitch_d
    if-ne p1, v3, :cond_18

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_18
    if-ne p1, v4, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    :cond_19
    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    invoke-direct {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_e
    if-ne p1, v3, :cond_1a

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :cond_1a
    if-ne p1, v4, :cond_0

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_f
    if-ne p1, v3, :cond_0

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->D()V

    goto/16 :goto_0

    :pswitch_10
    const v0, 0x7f0b0008

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    :cond_1b
    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    invoke-direct {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_11
    if-ne p1, v3, :cond_0

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :pswitch_12
    if-ne p1, v3, :cond_1c

    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->moveTaskToBack(Z)Z

    goto/16 :goto_0

    :cond_1c
    if-ne p1, v4, :cond_0

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bg:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    invoke-direct {p0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, -0x2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    invoke-static {v0}, Landroid/support/v4/app/app;->gNqiLZCfXGHuEzImzgaetFpIrYUjZHk(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "SDFolder"

    const-string v3, ""

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->z()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    const-string v2, "SDFolder"

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "finishGame"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->D()V

    :goto_1
    return-void

    :cond_0
    const-string v2, "SDFolder"

    const-string v3, ""

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sd_folder:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cj:Landroid/os/Handler;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    const v5, 0x101007a

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->setContentView(Landroid/view/View;)V

    const-string v0, "samsung_a_store"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_portalCode:Ljava/lang/String;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mDeviceInfo:Landroid/telephony/TelephonyManager;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aE:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bW:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bW:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;

    invoke-virtual {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->x()V

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bt:Z

    if-eqz v0, :cond_4

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.gameloft.android.GAND.GloftD2SS"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v3, v2, v0

    const-string v4, "pack"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v2, v0

    const-string v4, ".info"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/data/com.gameloft.android.GAND.GloftD2SS/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mDeviceInfo:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->init(Landroid/telephony/TelephonyManager;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/k;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/k;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->be:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->be:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_sInstance:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    goto/16 :goto_1

    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    :cond_0
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->o()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->be:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->be:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->be:Landroid/content/BroadcastReceiver;

    :cond_1
    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_sInstance:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->s:Landroid/content/res/AssetManager;

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sbStarted:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->D()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const v4, 0x7f0b0008

    const v3, 0x7f0b0004

    const v2, 0x7f0b0006

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ce:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_9
    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    if-ne v1, v0, :cond_0

    :pswitch_a
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    const/16 v1, 0x18

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1b

    if-ne p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bIsPaused:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_Dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_Dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ce:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->cf:I

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ce:I

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(II)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bIsPaused:Z

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bE:I

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bF:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-eq v0, v3, :cond_2

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->c(I)V

    :cond_1
    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bF:Z

    :cond_2
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "======================= onStart installer"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bM:Z

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->s:Landroid/content/res/AssetManager;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_toastSize:I

    if-nez v2, :cond_0

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_toastSize:I

    if-nez v2, :cond_0

    const v2, 0x7f080022

    invoke-virtual {p0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[\\D]+[^.]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_toastExtra:I

    add-int/2addr v2, v3

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_toastSize:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sget v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_toastSize:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_toastSize:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_7

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->leftTapCount:I

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->startTime:J

    sub-long/2addr v2, v4

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_delayTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    :cond_2
    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->leftTapCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->leftTapCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->startTime:J

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressA:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressB:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressC:Z

    if-nez v2, :cond_4

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressA:Z

    :goto_1
    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->leftTapCount:I

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->TAP_COUNT_MAX:I

    if-ne v2, v3, :cond_1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->leftTapCount:I

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_prevErrorMessage:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-eq v2, v1, :cond_3

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Close"

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_Dialog:Landroid/app/AlertDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Configuration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\nDevice: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\nGame: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0501f5

    invoke-virtual {p0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\nError:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_prevErrorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_Dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_Dialog:Landroid/app/AlertDialog;

    const-string v2, "Installer version 3.5.2861"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_Dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressA:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressB:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressC:Z

    if-nez v2, :cond_5

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressC:Z

    goto/16 :goto_1

    :cond_5
    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressC:Z

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressB:Z

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressA:Z

    goto/16 :goto_1

    :cond_6
    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->leftTapCount:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sget v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_toastSize:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_toastSize:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->leftTapCount:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->startTime:J

    sub-long/2addr v2, v4

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_delayTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_c

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressA:Z

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressB:Z

    if-nez v2, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->startTime:J

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressB:Z

    goto/16 :goto_0

    :cond_8
    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressA:Z

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressB:Z

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressC:Z

    if-eqz v2, :cond_b

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressC:Z

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressB:Z

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressA:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_Dialog:Landroid/app/AlertDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Configuration: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\nInstallation Path: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "\nBiggest file: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->pack_biggestFile:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "#,##0.00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sget-wide v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->pack_biggestFile:J

    const/16 v7, 0xa

    shr-long/2addr v5, v7

    long-to-double v5, v5

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " MB"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "\nNumber of files: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->pack_NoFiles:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_a

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->pack_NoFiles:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_Dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_Dialog:Landroid/app/AlertDialog;

    const-string v2, "Installer version 3.5.2861"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_Dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    const-string v0, ""

    goto :goto_2

    :cond_a
    const-string v0, ""

    goto :goto_3

    :cond_b
    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressC:Z

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressB:Z

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressA:Z

    goto/16 :goto_0

    :cond_c
    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressC:Z

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressB:Z

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressA:Z

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->rightTapCount:I

    goto/16 :goto_0

    :cond_d
    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressC:Z

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressB:Z

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->statePressA:Z

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->rightTapCount:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bd:Z

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->s_isPauseGame:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bQ:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    const/4 v9, 0x7

    const/16 v8, 0xc

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iput v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    iput v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    iput v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    iput-boolean v7, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    iput-boolean v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aX:Z

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->l:Ljava/text/DecimalFormat;

    :goto_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_6

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sbStarted:Z

    if-nez v0, :cond_6

    iput-boolean v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aP:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bIsPaused:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-eq v2, v8, :cond_0

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    :cond_0
    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-ne v2, v8, :cond_2

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    if-eq v2, v9, :cond_2

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    :cond_1
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-ne v2, v8, :cond_3

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    if-ne v2, v9, :cond_3

    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->l()V

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    if-ne v2, v8, :cond_5

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->al:I

    if-ne v2, v9, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-wide/16 v0, 0x32

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    iput-boolean v7, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aP:Z

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x32

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    div-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0x14

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->LIBS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/libsampleSandBox.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->LIBS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/libsampleSandBox.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "com.gameloft.android.GAND.GloftD2SS"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aH:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_7
    :goto_3
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->createNoMedia(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracking;->onLaunchGame(I)V

    sput-boolean v7, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->sbStarted:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.gameloft.android.GAND.GloftD2SS.DungeonHunter2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    sget-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->s_isPauseGame:Z

    if-eqz v1, :cond_9

    const-wide/16 v1, 0x64

    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_4

    :cond_8
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aI:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->startActivity(Landroid/content/Intent;)V

    :cond_a
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bL:I

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aS:Z

    if-eqz v0, :cond_c

    const-string v0, "SDFolder"

    const-string v1, ""

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->mPreferencesName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(J)V

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->createNoMedia(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->SaveDateLastUpdate(Ljava/lang/String;)Z

    :cond_b
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->C()V

    :goto_5
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->D()V

    goto :goto_5

    :catch_4
    move-exception v2

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_2
.end method
