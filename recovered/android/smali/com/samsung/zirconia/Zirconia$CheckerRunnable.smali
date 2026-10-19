.class Lcom/samsung/zirconia/Zirconia$CheckerRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/zirconia/Zirconia;


# direct methods
.method private constructor <init>(Lcom/samsung/zirconia/Zirconia;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/zirconia/Zirconia;Lcom/samsung/zirconia/Zirconia$CheckerRunnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;-><init>(Lcom/samsung/zirconia/Zirconia;)V

    return-void
.end method


# virtual methods
.method checkLicenseFile()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0}, Lcom/samsung/zirconia/Zirconia;->access$9(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$4(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v2}, Lcom/samsung/zirconia/Zirconia;->access$5(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/zirconia/NativeInterface;->checkLicenseFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    return v0
.end method

.method checkLicenseFilePhase2()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0}, Lcom/samsung/zirconia/Zirconia;->access$3(Lcom/samsung/zirconia/Zirconia;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$9(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/zirconia/NativeInterface;->checkLicenseFile2(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    return v0
.end method

.method checkerThreadWorker()V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/samsung/zirconia/Zirconia;->access$0(Lcom/samsung/zirconia/Zirconia;I)V

    invoke-virtual {p0}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->checkLicenseFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->checkLicenseFilePhase2()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0, v9}, Lcom/samsung/zirconia/Zirconia;->access$0(Lcom/samsung/zirconia/Zirconia;I)V

    move v0, v8

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0}, Lcom/samsung/zirconia/Zirconia;->access$11(Lcom/samsung/zirconia/Zirconia;)Lcom/samsung/zirconia/LicenseCheckListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0}, Lcom/samsung/zirconia/Zirconia;->access$11(Lcom/samsung/zirconia/Zirconia;)Lcom/samsung/zirconia/LicenseCheckListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/zirconia/LicenseCheckListener;->licenseCheckedAsValid()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0, v9}, Lcom/samsung/zirconia/Zirconia;->access$12(Lcom/samsung/zirconia/Zirconia;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    const/16 v1, 0x52

    invoke-static {v0, v1}, Lcom/samsung/zirconia/Zirconia;->access$0(Lcom/samsung/zirconia/Zirconia;I)V

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0, v8}, Lcom/samsung/zirconia/Zirconia;->access$1(Lcom/samsung/zirconia/Zirconia;Z)V

    move v0, v9

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0}, Lcom/samsung/zirconia/Zirconia;->access$2(Lcom/samsung/zirconia/Zirconia;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0}, Lcom/samsung/zirconia/Zirconia;->access$3(Lcom/samsung/zirconia/Zirconia;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/samsung/zirconia/LicenseRetriever;

    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$4(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v2}, Lcom/samsung/zirconia/Zirconia;->access$5(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v3}, Lcom/samsung/zirconia/Zirconia;->access$6(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v4}, Lcom/samsung/zirconia/Zirconia;->access$7(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v5}, Lcom/samsung/zirconia/Zirconia;->access$8(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v6}, Lcom/samsung/zirconia/Zirconia;->access$9(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/zirconia/LicenseRetriever;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-virtual {v0}, Lcom/samsung/zirconia/LicenseRetriever;->retrieveLicense()I

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/zirconia/Zirconia;->access$0(Lcom/samsung/zirconia/Zirconia;I)V

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0}, Lcom/samsung/zirconia/Zirconia;->access$10(Lcom/samsung/zirconia/Zirconia;)I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->checkLicenseFile()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0, v9}, Lcom/samsung/zirconia/Zirconia;->access$0(Lcom/samsung/zirconia/Zirconia;I)V

    move v0, v8

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0}, Lcom/samsung/zirconia/Zirconia;->access$11(Lcom/samsung/zirconia/Zirconia;)Lcom/samsung/zirconia/LicenseCheckListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-static {v0}, Lcom/samsung/zirconia/Zirconia;->access$11(Lcom/samsung/zirconia/Zirconia;)Lcom/samsung/zirconia/LicenseCheckListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/zirconia/LicenseCheckListener;->licenseCheckedAsInvalid()V

    goto/16 :goto_1

    :cond_4
    move v0, v9

    goto/16 :goto_0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->checkerThreadWorker()V

    return-void
.end method
