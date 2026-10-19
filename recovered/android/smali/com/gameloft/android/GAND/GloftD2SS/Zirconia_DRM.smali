.class public Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:Lcom/samsung/zirconia/Zirconia;

.field private h:Lcom/gameloft/android/GAND/GloftD2SS/ay;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->b:Z

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->c:Z

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->f:Landroid/os/Handler;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->g:Lcom/samsung/zirconia/Zirconia;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->h:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    return-void
.end method

.method static synthetic access$002(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->d:Z

    return p1
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/samsung/zirconia/Zirconia;

    invoke-direct {v0, p0}, Lcom/samsung/zirconia/Zirconia;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->g:Lcom/samsung/zirconia/Zirconia;

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->g:Lcom/samsung/zirconia/Zirconia;

    invoke-direct {v0, p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/ay;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;Lcom/samsung/zirconia/Zirconia;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->h:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->h:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->f:Landroid/os/Handler;

    iput-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->g:Lcom/samsung/zirconia/Zirconia;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->h:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    invoke-virtual {v0, v1}, Lcom/samsung/zirconia/Zirconia;->setLicenseCheckListener(Lcom/samsung/zirconia/LicenseCheckListener;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->g:Lcom/samsung/zirconia/Zirconia;

    invoke-virtual {v0}, Lcom/samsung/zirconia/Zirconia;->doVariablesTest()V

    return-void
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->a:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->finish()V

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->a:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->finish()V

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->showDialog(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->c:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->b:Z

    return v0
.end method

.method public final b(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->b:Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->g:Lcom/samsung/zirconia/Zirconia;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/zirconia/Zirconia;->checkLicense(ZZ)V

    if-nez p1, :cond_0

    const-string v0, "Check license."

    const-string v1, "Please wait..."

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->a:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isWifiAvail = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\nisWifiConn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\nisMobileAvail = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nisMobileConn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Yes"

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/bz;

    invoke-direct {v2, p0}, Lcom/gameloft/android/GAND/GloftD2SS/bz;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "No"

    new-instance v3, Lcom/gameloft/android/GAND/GloftD2SS/by;

    invoke-direct {v3, p0}, Lcom/gameloft/android/GAND/GloftD2SS/by;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/bx;

    invoke-direct {v2, p0}, Lcom/gameloft/android/GAND/GloftD2SS/bx;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public final d()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Yes"

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/cc;

    invoke-direct {v2, p0}, Lcom/gameloft/android/GAND/GloftD2SS/cc;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "No"

    new-instance v3, Lcom/gameloft/android/GAND/GloftD2SS/cb;

    invoke-direct {v3, p0}, Lcom/gameloft/android/GAND/GloftD2SS/cb;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/ca;

    invoke-direct {v2, p0}, Lcom/gameloft/android/GAND/GloftD2SS/ca;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f050000

    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static/range {p0 .. p0}, Lcom/savegame/SavesRestoringPortable;->DoSmth(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Zicornia DRM"

    const-string v1, "!isTaskRoot"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/zirconia/Zirconia;

    invoke-direct {v0, p0}, Lcom/samsung/zirconia/Zirconia;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->g:Lcom/samsung/zirconia/Zirconia;

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->g:Lcom/samsung/zirconia/Zirconia;

    invoke-direct {v0, p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/ay;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;Lcom/samsung/zirconia/Zirconia;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->h:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->h:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->f:Landroid/os/Handler;

    iput-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->g:Lcom/samsung/zirconia/Zirconia;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->h:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    invoke-virtual {v0, v1}, Lcom/samsung/zirconia/Zirconia;->setLicenseCheckListener(Lcom/samsung/zirconia/LicenseCheckListener;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->g:Lcom/samsung/zirconia/Zirconia;

    invoke-virtual {v0}, Lcom/samsung/zirconia/Zirconia;->doVariablesTest()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->b(Z)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/ce;

    invoke-direct {v2, p0}, Lcom/gameloft/android/GAND/GloftD2SS/ce;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/cd;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/cd;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->b(Z)V

    goto :goto_0
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
