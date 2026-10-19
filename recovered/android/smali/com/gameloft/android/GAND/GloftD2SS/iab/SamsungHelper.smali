.class public Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;
.super Lcom/gameloft/android/GAND/GloftD2SS/iab/a;


# static fields
.field static b:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer; = null

.field static c:Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper; = null

.field private static final d:Ljava/lang/String; = "InAppBilling"

.field private static e:Ljava/lang/String;

.field private static f:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

.field private static g:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->e:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->h:Z

    return-void
.end method

.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/a;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;)V

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-direct {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;)V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->g:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->g:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-direct {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;)V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->f:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->c:Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;

    return-void
.end method

.method public static GetContentId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static GetGroupId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->getServerInfo()Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->GetContentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "group_id"

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetItemId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->getServerInfo()Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->GetContentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "samsung_item_id"

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IABResultCallBack(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0x22

    invoke-static {v4, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x26

    invoke-static {v4, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->GetContentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->GetContentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v0, 0x27

    invoke-static {v4, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->GetContentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->GetContentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v0, 0x2a

    invoke-static {v4, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v0, 0x28

    invoke-static {v4, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :cond_0
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v0, 0x24

    invoke-static {v4, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x23

    invoke-static {v4, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x5

    const/16 v1, 0x6c

    :try_start_0
    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v3, 0x76

    invoke-static {v1, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-nez p0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->c:Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->b()V

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->h:Z

    return p0
.end method

.method static synthetic access$100()Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->f:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    return-object v0
.end method

.method static getServerInfo()Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->c:Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->f:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    return-object v0
.end method

.method static xsendConfirmation()V
    .locals 2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->f:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->getServerInfo()Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->f:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    :cond_0
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->h:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/iab/d;

    invoke-direct {v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/d;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic a()Z
    .locals 1

    invoke-super {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/a;->a()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->xsendConfirmation()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->e:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->LaunchSamsungBilling()V

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->getServerInfo()Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->e:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->GetGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->LaunchSamsungRestore()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->IABResultCallBack(I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 0

    return-void
.end method
