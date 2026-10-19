.class final Lcom/gameloft/android/GAND/GloftD2SS/iab/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->access$002(Z)Z

    move v0, v4

    :cond_0
    :try_start_0
    new-instance v5, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->access$100()Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;)V

    invoke-direct {v5, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;)V

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->setGGIUID(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x77

    invoke-static {v3, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->j:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->a(ILjava/lang/String;)V

    const-wide/16 v2, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v5}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    const-wide/16 v6, 0x32

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/16 v8, 0x5dc

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getLastErrorCode()I

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->access$002(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_0
    move-exception v2

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->access$002(Z)Z

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_1
.end method
