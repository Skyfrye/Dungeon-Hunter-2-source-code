.class public Lcom/kddi/market/alml/lib/ALMLClient;
.super Lcom/kddi/market/alml/lib/ALMLClientBase;


# static fields
.field private static c:Lcom/kddi/market/alml/lib/aa;

.field private static d:Lcom/kddi/market/alml/lib/ah;

.field private static e:Lcom/kddi/market/alml/lib/ag;

.field private static f:Lcom/kddi/market/alml/lib/af;

.field private static g:Lcom/kddi/market/alml/lib/aj;

.field private static h:Lcom/kddi/market/alml/lib/ad;

.field private static i:Lcom/kddi/market/alml/lib/ai;

.field private static j:Lcom/kddi/market/alml/lib/ae;

.field private static k:Lcom/kddi/market/alml/lib/ac;

.field private static l:Lcom/kddi/market/alml/lib/ab;

.field private static final q:Ljava/lang/Object;


# instance fields
.field private b:Lcom/kddi/market/alml/service/IAppAuthorizeService;

.field private m:Landroid/content/Context;

.field private n:Z

.field private o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

.field private p:Landroid/content/ServiceConnection;

.field private r:Landroid/os/Handler;

.field private s:Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kddi/market/alml/lib/ALMLClient;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/kddi/market/alml/lib/ALMLClientBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->n:Z

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    new-instance v0, Lcom/kddi/market/alml/lib/y;

    invoke-direct {v0, p0}, Lcom/kddi/market/alml/lib/y;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;)V

    iput-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->p:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->r:Landroid/os/Handler;

    new-instance v0, Lcom/kddi/market/alml/lib/a;

    invoke-direct {v0, p0}, Lcom/kddi/market/alml/lib/a;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;)V

    iput-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->s:Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback$Stub;

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    iget-object v6, p0, Lcom/kddi/market/alml/lib/ALMLClient;->r:Landroid/os/Handler;

    new-instance v0, Lcom/kddi/market/alml/lib/d;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kddi/market/alml/lib/d;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->r:Landroid/os/Handler;

    new-instance v1, Lcom/kddi/market/alml/lib/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p3}, Lcom/kddi/market/alml/lib/f;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Lcom/kddi/market/alml/lib/k;

    invoke-direct {v0, p0, p1}, Lcom/kddi/market/alml/lib/k;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Landroid/app/Activity;)V

    new-instance v1, Lcom/kddi/market/alml/lib/m;

    invoke-direct {v1, p0}, Lcom/kddi/market/alml/lib/m;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "au one Market\u672a\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, "\u3053\u306e\u6a5f\u80fd\u3092\u5229\u7528\u3059\u308b\u305f\u3081\u306b\u306f\u3001au one Market\u30a2\u30d7\u30ea\u304c\u5fc5\u8981\u3067\u3059\u3002\n\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9\u30da\u30fc\u30b8\u3092\u8868\u793a\u3057\u307e\u3059\u3002"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, "OK"

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v3, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kddi/market/alml/lib/ab;Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sput-object p4, Lcom/kddi/market/alml/lib/ALMLClient;->l:Lcom/kddi/market/alml/lib/ab;

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->isAuOneIdSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/kddi/market/alml/lib/ApiUtil;->createAstSettingIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x5d

    invoke-direct {p0, v1, v3, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->d(ILjava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, -0x8

    invoke-direct {p0, v0, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->d(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-direct {v0, p1, p2, p3}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->havePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v0, -0x38

    invoke-direct {p0, v0, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->d(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p4, p5, p6}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/ab;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    const/16 v0, -0x31

    invoke-direct {p0, v0, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->d(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kddi/market/alml/lib/ac;Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sput-object p4, Lcom/kddi/market/alml/lib/ALMLClient;->k:Lcom/kddi/market/alml/lib/ac;

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->isAuOneIdSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/kddi/market/alml/lib/ApiUtil;->createAstSettingIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x5d

    invoke-direct {p0, v1, v3, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->c(ILjava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, -0x8

    invoke-direct {p0, v0, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->c(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-direct {v0, p1, p2, p3}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->havePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v0, -0x38

    invoke-direct {p0, v0, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->c(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p4, p5, p6}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/ac;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    const/16 v0, -0x31

    invoke-direct {p0, v0, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->c(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kddi/market/alml/lib/ad;Z)V
    .locals 4

    const/4 v3, 0x0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sput-object p4, Lcom/kddi/market/alml/lib/ALMLClient;->h:Lcom/kddi/market/alml/lib/ad;

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->isAuOneIdSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/kddi/market/alml/lib/ApiUtil;->createAstSettingIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x5d

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, -0x8

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-direct {v0, p1, p2, p3}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->havePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v0, -0x38

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p4, p5}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/ad;Z)V

    goto :goto_0

    :cond_5
    const/16 v0, -0x29

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kddi/market/alml/lib/ae;Z)V
    .locals 4

    const/4 v3, 0x0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sput-object p4, Lcom/kddi/market/alml/lib/ALMLClient;->j:Lcom/kddi/market/alml/lib/ae;

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->isAuOneIdSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/kddi/market/alml/lib/ApiUtil;->createAstSettingIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x5d

    invoke-direct {p0, v1, v3, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, -0x8

    invoke-direct {p0, v0, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-direct {v0, p1, p2, p3}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->havePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v0, -0x38

    invoke-direct {p0, v0, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p4, p5}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/ae;Z)V

    goto :goto_0

    :cond_5
    const/16 v0, -0x2e

    invoke-direct {p0, v0, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kddi/market/alml/lib/ai;Z)V
    .locals 4

    const/4 v3, 0x0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sput-object p4, Lcom/kddi/market/alml/lib/ALMLClient;->i:Lcom/kddi/market/alml/lib/ai;

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->isAuOneIdSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/kddi/market/alml/lib/ApiUtil;->createAstSettingIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x5d

    invoke-direct {p0, v1, v3, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, -0x8

    invoke-direct {p0, v0, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-direct {v0, p1, p2, p3}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->havePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v0, -0x38

    invoke-direct {p0, v0, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p4, p5}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/ai;Z)V

    goto :goto_0

    :cond_5
    const/16 v0, -0x2b

    invoke-direct {p0, v0, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kddi/market/alml/lib/aj;Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sput-object p4, Lcom/kddi/market/alml/lib/ALMLClient;->g:Lcom/kddi/market/alml/lib/aj;

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->isAuOneIdSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/kddi/market/alml/lib/ApiUtil;->createAstSettingIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x5d

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, -0x8

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-direct {v0, p1, p2, p3}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->havePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v0, -0x38

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p4, p5}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/aj;Z)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    iget-object v1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    if-ne v0, v1, :cond_8

    invoke-direct {p0, p1}, Lcom/kddi/market/alml/lib/ALMLClient;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_6

    new-instance v0, Lcom/kddi/market/alml/lib/k;

    invoke-direct {v0, p0, p1}, Lcom/kddi/market/alml/lib/k;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Landroid/app/Activity;)V

    new-instance v1, Lcom/kddi/market/alml/lib/m;

    invoke-direct {v1, p0}, Lcom/kddi/market/alml/lib/m;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "au one Market\u672a\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, "\u3053\u306e\u6a5f\u80fd\u3092\u5229\u7528\u3059\u308b\u305f\u3081\u306b\u306f\u3001au one Market\u30a2\u30d7\u30ea\u304c\u5fc5\u8981\u3067\u3059\u3002\n\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9\u30da\u30fc\u30b8\u3092\u8868\u793a\u3057\u307e\u3059\u3002"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, "OK"

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v3, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_6
    const/4 v1, -0x6

    if-ne v1, v0, :cond_7

    new-instance v0, Lcom/kddi/market/alml/lib/n;

    invoke-direct {v0, p0, p1}, Lcom/kddi/market/alml/lib/n;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Landroid/app/Activity;)V

    new-instance v1, Lcom/kddi/market/alml/lib/o;

    invoke-direct {v1, p0}, Lcom/kddi/market/alml/lib/o;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u30d0\u30fc\u30b8\u30e7\u30f3\u30a2\u30c3\u30d7\u78ba\u8a8d"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, "\u3053\u306e\u6a5f\u80fd\u3092\u5229\u7528\u3059\u308b\u305f\u3081\u306b\u306f\u3001au one Market\u30a2\u30d7\u30ea\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u30a2\u30c3\u30d7\u304c\u5fc5\u8981\u3067\u3059\u3002\n\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9\u30da\u30fc\u30b8\u3092\u8868\u793a\u3057\u307e\u3059\u3002"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, "OK"

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v3, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_8

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/kddi/market/alml/lib/c;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kddi/market/alml/lib/c;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/aj;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(Lcom/kddi/market/alml/lib/z;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kddi/market/alml/lib/ad;Z)V
    .locals 4

    const/4 v3, 0x0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sput-object p4, Lcom/kddi/market/alml/lib/ALMLClient;->h:Lcom/kddi/market/alml/lib/ad;

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->isAuOneIdSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/kddi/market/alml/lib/ApiUtil;->createAstSettingIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x5d

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, -0x8

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_4

    const/16 v0, -0x5c

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->havePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, -0x38

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;

    invoke-direct {v0, p1, p2, p3}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/kddi/market/alml/lib/q;

    invoke-direct {v1, p0}, Lcom/kddi/market/alml/lib/q;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;)V

    invoke-virtual {v0, v1, p5}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a(Lcom/kddi/market/alml/lib/aw;Z)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kddi/market/alml/lib/aj;Z)V
    .locals 4

    const/4 v3, 0x0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sput-object p4, Lcom/kddi/market/alml/lib/ALMLClient;->g:Lcom/kddi/market/alml/lib/aj;

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->isAuOneIdSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/kddi/market/alml/lib/ApiUtil;->createAstSettingIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x5d

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, -0x8

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_4

    const/16 v0, -0x5c

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/kddi/market/alml/lib/ApiUtil;->havePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, -0x38

    invoke-direct {p0, v0, v3, v3, v3}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;

    invoke-direct {v0, p1, p2, p3}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/kddi/market/alml/lib/p;

    invoke-direct {v1, p0}, Lcom/kddi/market/alml/lib/p;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;)V

    invoke-virtual {v0, v1, p5}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->b(Lcom/kddi/market/alml/lib/aw;Z)V

    goto :goto_0
.end method

.method private a(Lcom/kddi/market/alml/lib/z;)V
    .locals 2

    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->r:Landroid/os/Handler;

    new-instance v1, Lcom/kddi/market/alml/lib/j;

    invoke-direct {v1, p0, p1}, Lcom/kddi/market/alml/lib/j;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/z;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kddi/market/alml/lib/aa;JLjava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/kddi/market/alml/lib/l;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kddi/market/alml/lib/l;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/aa;Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(Lcom/kddi/market/alml/lib/z;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kddi/market/alml/lib/aa;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/kddi/market/alml/lib/r;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/kddi/market/alml/lib/r;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/aa;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(Lcom/kddi/market/alml/lib/z;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kddi/market/alml/lib/af;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/kddi/market/alml/lib/b;

    invoke-direct {v0, p0, p2, p1}, Lcom/kddi/market/alml/lib/b;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/af;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(Lcom/kddi/market/alml/lib/z;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kddi/market/alml/lib/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/kddi/market/alml/lib/u;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kddi/market/alml/lib/u;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(Lcom/kddi/market/alml/lib/z;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kddi/market/alml/lib/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/kddi/market/alml/lib/w;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kddi/market/alml/lib/w;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(Lcom/kddi/market/alml/lib/z;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kddi/market/alml/lib/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/kddi/market/alml/lib/v;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/kddi/market/alml/lib/v;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(Lcom/kddi/market/alml/lib/z;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kddi/market/alml/lib/ah;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/kddi/market/alml/lib/s;

    invoke-direct {v0, p0, p2, p1}, Lcom/kddi/market/alml/lib/s;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ah;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(Lcom/kddi/market/alml/lib/z;)V

    return-void
.end method

.method static synthetic access$0()Lcom/kddi/market/alml/lib/aa;
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient;->c:Lcom/kddi/market/alml/lib/aa;

    return-object v0
.end method

.method static synthetic access$1()Lcom/kddi/market/alml/lib/ah;
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient;->d:Lcom/kddi/market/alml/lib/ah;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback$Stub;
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->s:Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback$Stub;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kddi/market/alml/lib/ah;)V
    .locals 0

    sput-object p0, Lcom/kddi/market/alml/lib/ALMLClient;->d:Lcom/kddi/market/alml/lib/ah;

    return-void
.end method

.method static synthetic access$12(Lcom/kddi/market/alml/lib/ag;)V
    .locals 0

    sput-object p0, Lcom/kddi/market/alml/lib/ALMLClient;->e:Lcom/kddi/market/alml/lib/ag;

    return-void
.end method

.method static synthetic access$13(Lcom/kddi/market/alml/lib/af;)V
    .locals 0

    sput-object p0, Lcom/kddi/market/alml/lib/ALMLClient;->f:Lcom/kddi/market/alml/lib/af;

    return-void
.end method

.method static synthetic access$14(Lcom/kddi/market/alml/lib/aj;)V
    .locals 0

    sput-object p0, Lcom/kddi/market/alml/lib/ALMLClient;->g:Lcom/kddi/market/alml/lib/aj;

    return-void
.end method

.method static synthetic access$15(Lcom/kddi/market/alml/lib/ALMLClient;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kddi/market/alml/lib/ALMLClient;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$16()Lcom/kddi/market/alml/lib/ad;
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient;->h:Lcom/kddi/market/alml/lib/ad;

    return-object v0
.end method

.method static synthetic access$17()Lcom/kddi/market/alml/lib/ai;
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient;->i:Lcom/kddi/market/alml/lib/ai;

    return-object v0
.end method

.method static synthetic access$18()Lcom/kddi/market/alml/lib/ae;
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient;->j:Lcom/kddi/market/alml/lib/ae;

    return-object v0
.end method

.method static synthetic access$19()Lcom/kddi/market/alml/lib/ac;
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient;->k:Lcom/kddi/market/alml/lib/ac;

    return-object v0
.end method

.method static synthetic access$2()Lcom/kddi/market/alml/lib/ag;
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient;->e:Lcom/kddi/market/alml/lib/ag;

    return-object v0
.end method

.method static synthetic access$20()Lcom/kddi/market/alml/lib/ab;
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient;->l:Lcom/kddi/market/alml/lib/ab;

    return-object v0
.end method

.method static synthetic access$21(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    return-object v0
.end method

.method static synthetic access$22(Lcom/kddi/market/alml/lib/ALMLClient;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->p:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$23(Lcom/kddi/market/alml/lib/ALMLClient;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kddi/market/alml/lib/ALMLClient;->b(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$3()Lcom/kddi/market/alml/lib/af;
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient;->f:Lcom/kddi/market/alml/lib/af;

    return-object v0
.end method

.method static synthetic access$4()Lcom/kddi/market/alml/lib/aj;
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient;->g:Lcom/kddi/market/alml/lib/aj;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/service/IAppAuthorizeService;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->b:Lcom/kddi/market/alml/service/IAppAuthorizeService;

    return-void
.end method

.method static synthetic access$6(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    return-void
.end method

.method static synthetic access$7()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient;->q:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeService;
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->b:Lcom/kddi/market/alml/service/IAppAuthorizeService;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kddi/market/alml/lib/aa;)V
    .locals 0

    sput-object p0, Lcom/kddi/market/alml/lib/ALMLClient;->c:Lcom/kddi/market/alml/lib/aa;

    return-void
.end method

.method private b(Landroid/content/Context;)I
    .locals 3

    iput-object p1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->m:Landroid/content/Context;

    :try_start_0
    invoke-static {p1}, Lcom/kddi/market/alml/lib/ALMLClient;->isMarketApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xe

    invoke-static {p1}, Lcom/kddi/market/alml/lib/ALMLClient;->getMarketAppVersionCode(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, -0x6

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kddi/market/alml/service/IAppAuthorizeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    iget-object v1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->b:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kddi/market/alml/service/IAppAuthorizeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->p:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->n:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    sget-object v1, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    iput-object v1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    :cond_3
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    const/4 v0, -0x2

    goto :goto_0

    :cond_4
    const/16 v0, -0x63

    goto :goto_0
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    iget-object v6, p0, Lcom/kddi/market/alml/lib/ALMLClient;->r:Landroid/os/Handler;

    new-instance v0, Lcom/kddi/market/alml/lib/e;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kddi/market/alml/lib/e;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(ILjava/lang/String;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->r:Landroid/os/Handler;

    new-instance v1, Lcom/kddi/market/alml/lib/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p3}, Lcom/kddi/market/alml/lib/g;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Lcom/kddi/market/alml/lib/n;

    invoke-direct {v0, p0, p1}, Lcom/kddi/market/alml/lib/n;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Landroid/app/Activity;)V

    new-instance v1, Lcom/kddi/market/alml/lib/o;

    invoke-direct {v1, p0}, Lcom/kddi/market/alml/lib/o;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u30d0\u30fc\u30b8\u30e7\u30f3\u30a2\u30c3\u30d7\u78ba\u8a8d"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, "\u3053\u306e\u6a5f\u80fd\u3092\u5229\u7528\u3059\u308b\u305f\u3081\u306b\u306f\u3001au one Market\u30a2\u30d7\u30ea\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u30a2\u30c3\u30d7\u304c\u5fc5\u8981\u3067\u3059\u3002\n\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9\u30da\u30fc\u30b8\u3092\u8868\u793a\u3057\u307e\u3059\u3002"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, "OK"

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v3, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/kddi/market/alml/lib/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/kddi/market/alml/lib/x;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kddi/market/alml/lib/x;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(Lcom/kddi/market/alml/lib/z;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/kddi/market/alml/lib/ah;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/kddi/market/alml/lib/t;

    invoke-direct {v0, p0, p2, p1}, Lcom/kddi/market/alml/lib/t;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ah;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kddi/market/alml/lib/ALMLClient;->a(Lcom/kddi/market/alml/lib/z;)V

    return-void
.end method

.method private c(ILjava/lang/String;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->r:Landroid/os/Handler;

    new-instance v1, Lcom/kddi/market/alml/lib/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p3}, Lcom/kddi/market/alml/lib/h;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->b:Lcom/kddi/market/alml/service/IAppAuthorizeService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->b:Lcom/kddi/market/alml/service/IAppAuthorizeService;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kddi/market/alml/service/IAppAuthorizeService;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private d(ILjava/lang/String;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->r:Landroid/os/Handler;

    new-instance v1, Lcom/kddi/market/alml/lib/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p3}, Lcom/kddi/market/alml/lib/i;-><init>(Lcom/kddi/market/alml/lib/ALMLClient;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 3

    iput-object p1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->m:Landroid/content/Context;

    :try_start_0
    invoke-static {p1}, Lcom/kddi/market/alml/lib/ALMLClient;->isMarketApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kddi/market/alml/service/IAppAuthorizeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    iget-object v1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->b:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kddi/market/alml/service/IAppAuthorizeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->p:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->n:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    sget-object v1, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    iput-object v1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    const/4 v0, -0x2

    goto :goto_0

    :cond_3
    const/16 v0, -0x63

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/kddi/market/alml/lib/ALMLClient;->p:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/kddi/market/alml/lib/ALMLClient;->b:Lcom/kddi/market/alml/service/IAppAuthorizeService;

    sput-object v2, Lcom/kddi/market/alml/lib/ALMLClient;->c:Lcom/kddi/market/alml/lib/aa;

    sput-object v2, Lcom/kddi/market/alml/lib/ALMLClient;->d:Lcom/kddi/market/alml/lib/ah;

    sput-object v2, Lcom/kddi/market/alml/lib/ALMLClient;->e:Lcom/kddi/market/alml/lib/ag;

    sput-object v2, Lcom/kddi/market/alml/lib/ALMLClient;->f:Lcom/kddi/market/alml/lib/af;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->p:Landroid/content/ServiceConnection;

    check-cast v0, Lcom/kddi/market/alml/lib/y;

    invoke-virtual {v0, v2}, Lcom/kddi/market/alml/lib/y;->a(Lcom/kddi/market/alml/lib/z;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->n:Z

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/ALMLClient;->o:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    :cond_0
    return-void
.end method
