.class public Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "DungeonHunter2TInfo"

.field public static final b:Ljava/lang/String; = "Launchinstaller"

.field public static final c:Ljava/lang/String; = "Downloadstart"

.field public static final d:Ljava/lang/String; = "Downloadfinish"

.field public static final e:Ljava/lang/String; = "UnsupportedDevice"

.field public static final f:Ljava/lang/String; = "A"

.field public static final g:Ljava/lang/String; = "B"

.field public static final h:Ljava/lang/String; = "Wifi"

.field public static final i:Ljava/lang/String; = "3G"

.field public static final j:Ljava/lang/String; = "NOWifi"

.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field static n:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device; = null

.field static o:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer; = null

.field public static p:Z = false

.field public static final q:I = 0x0

.field public static final r:I = 0x1

.field public static final s:I = 0x2

.field public static final t:I = 0x3

.field public static final u:Ljava/lang/Object;

.field private static v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->p:Z

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->v:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UnsupportedDeviceTracker()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    const-string v1, ""

    invoke-static {v2, v0, v2, v2, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->sendInstallerTrackingOptions(IIZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(IIZZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->getQryRequestType(IIZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->v:Ljava/lang/String;

    return-object v0
.end method

.method public static downloadFinishTracker(IZ)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {p0, v0, p1, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->sendInstallerTrackingOptions(IIZZLjava/lang/String;)V

    return-void
.end method

.method public static downloadStartTracker(IZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {p0, v0, p1, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->sendInstallerTrackingOptions(IIZZLjava/lang/String;)V

    return-void
.end method

.method private static getQryRequestType(IIZZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const-string v0, "&action="

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Launchinstaller"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p0, v2, :cond_0

    const-string v0, "A"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_1

    const-string v0, "NOWifi"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "B"

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_2

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Downloadstart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ne p0, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_3

    const-string v0, "3G"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string v0, "Wifi"

    goto :goto_3

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Downloadfinish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ne p0, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_5

    const-string v0, "3G"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const-string v0, "Wifi"

    goto :goto_4

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UnsupportedDevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static launchInstallerTracker(IZ)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    invoke-static {p0, v1, v1, p1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->sendInstallerTrackingOptions(IIZZLjava/lang/String;)V

    return-void
.end method

.method public static sendInstallerTrackingOptions(IIZZLjava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;-><init>(IIZZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->start()V

    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->v:Ljava/lang/String;

    return-void
.end method
