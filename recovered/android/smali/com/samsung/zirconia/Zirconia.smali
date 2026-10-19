.class public Lcom/samsung/zirconia/Zirconia;
.super Ljava/lang/Object;


# static fields
.field public static final EZIRCONIA_APPLICATION_MODIFIED:I = 0x52

.field public static final EZIRCONIA_CANNOT_CHECK:I = 0x1f

.field public static final EZIRCONIA_CLIENT_MISMATCH:I = 0x15

.field public static final EZIRCONIA_INVALID_VALUE:I = 0x17

.field public static final EZIRCONIA_KEY_CREATION_FAILED:I = 0x51

.field public static final EZIRCONIA_LICENSE_MISMATCH:I = 0x32

.field public static final EZIRCONIA_NOT_PURCHASED:I = 0xb

.field public static final EZIRCONIA_RECEIVE_FAILED:I = 0x3d

.field public static final EZIRCONIA_SEND_FAILED:I = 0x3e

.field public static final EZIRCONIA_SERVER_MISMATCH:I = 0x47

.field public static final EZIRCONIA_SUCCESS:I = 0x0

.field public static final EZIRCONIA_VERSION_MISMATCH:I = 0x16


# instance fields
.field private applicationID:Ljava/lang/String;

.field private checkLocalOnly:Z

.field private currentActivity:Landroid/app/Activity;

.field private deviceIMEI:Ljava/lang/String;

.field private deviceIMSI:Ljava/lang/String;

.field private deviceMIN:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private isApplicationHacked:Z

.field private isEmulator:Z

.field private isWorking:Z

.field private licenseCheckListener:Lcom/samsung/zirconia/LicenseCheckListener;

.field private licenseFilePath:Ljava/lang/String;

.field private threadPriority:I

.field private zirconiaError:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/zirconia/Zirconia;->currentActivity:Landroid/app/Activity;

    new-instance v0, Lcom/samsung/zirconia/DevInfoRetriever;

    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/zirconia/DevInfoRetriever;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/zirconia/Zirconia;->licenseCheckListener:Lcom/samsung/zirconia/LicenseCheckListener;

    invoke-virtual {v0}, Lcom/samsung/zirconia/DevInfoRetriever;->isEmulator()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/zirconia/Zirconia;->isEmulator:Z

    iput-boolean v2, p0, Lcom/samsung/zirconia/Zirconia;->isApplicationHacked:Z

    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/zirconia/Zirconia;->threadPriority:I

    iput v2, p0, Lcom/samsung/zirconia/Zirconia;->zirconiaError:I

    iput-boolean v2, p0, Lcom/samsung/zirconia/Zirconia;->checkLocalOnly:Z

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/zirconia/Zirconia;->applicationID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/zirconia/DevInfoRetriever;->getIMEI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMEI:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/zirconia/DevInfoRetriever;->getIMSI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMSI:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/zirconia/DevInfoRetriever;->getModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/zirconia/Zirconia;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/zirconia/DevInfoRetriever;->getMIN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/zirconia/Zirconia;->deviceMIN:Ljava/lang/String;

    const-string v0, "zirconia"

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/zirconia.dat"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/zirconia/Zirconia;->licenseFilePath:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/zirconia/Zirconia;->isWorking:Z

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/zirconia/Zirconia;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/zirconia/Zirconia;->zirconiaError:I

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/zirconia/Zirconia;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/zirconia/Zirconia;->isApplicationHacked:Z

    return-void
.end method

.method static synthetic access$10(Lcom/samsung/zirconia/Zirconia;)I
    .locals 1

    iget v0, p0, Lcom/samsung/zirconia/Zirconia;->zirconiaError:I

    return v0
.end method

.method static synthetic access$11(Lcom/samsung/zirconia/Zirconia;)Lcom/samsung/zirconia/LicenseCheckListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->licenseCheckListener:Lcom/samsung/zirconia/LicenseCheckListener;

    return-object v0
.end method

.method static synthetic access$12(Lcom/samsung/zirconia/Zirconia;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/zirconia/Zirconia;->isWorking:Z

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/zirconia/Zirconia;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/zirconia/Zirconia;->checkLocalOnly:Z

    return v0
.end method

.method static synthetic access$3(Lcom/samsung/zirconia/Zirconia;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMEI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->applicationID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMSI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->deviceMIN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->licenseFilePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkLicense(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/zirconia/Zirconia;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/zirconia/Zirconia;->isWorking:Z

    iput-boolean p1, p0, Lcom/samsung/zirconia/Zirconia;->checkLocalOnly:Z

    new-instance v0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;-><init>(Lcom/samsung/zirconia/Zirconia;Lcom/samsung/zirconia/Zirconia$CheckerRunnable;)V

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->run()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/samsung/zirconia/Zirconia;->threadPriority:I

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public deleteLicense()Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->licenseFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public doVariablesTest()V
    .locals 3

    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isEmulator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/zirconia/Zirconia;->isEmulator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isApplicationHacked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/zirconia/Zirconia;->isApplicationHacked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "threadPriority :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/zirconia/Zirconia;->threadPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zirconiaError :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/zirconia/Zirconia;->zirconiaError:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkLocalOnly :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/zirconia/Zirconia;->checkLocalOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applicationID :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->applicationID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceIMEI :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMEI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceIMSI :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceModel :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->deviceModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceMIN :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->deviceMIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "licenseFilePath :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->licenseFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getError()I
    .locals 1

    iget v0, p0, Lcom/samsung/zirconia/Zirconia;->zirconiaError:I

    return v0
.end method

.method public isWorking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/zirconia/Zirconia;->isWorking:Z

    return v0
.end method

.method public setBogusIMEI(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/zirconia/Zirconia;->isEmulator:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMEI:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLicenseCheckListener(Lcom/samsung/zirconia/LicenseCheckListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/zirconia/Zirconia;->licenseCheckListener:Lcom/samsung/zirconia/LicenseCheckListener;

    return-void
.end method

.method public setThreadPriority(I)V
    .locals 3

    const/4 v0, 0x1

    if-gtz p1, :cond_1

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    :goto_1
    iput v0, p0, Lcom/samsung/zirconia/Zirconia;->threadPriority:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public version()Lcom/samsung/zirconia/ZirconiaVersion;
    .locals 4

    new-instance v0, Lcom/samsung/zirconia/ZirconiaVersion;

    const/4 v1, 0x1

    const/16 v2, 0x78

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/zirconia/ZirconiaVersion;-><init>(III)V

    return-object v0
.end method
