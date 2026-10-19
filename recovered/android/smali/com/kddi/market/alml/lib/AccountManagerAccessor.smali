.class Lcom/kddi/market/alml/lib/AccountManagerAccessor;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "com.kddi.android.auoneidsetting"

.field private static final b:Ljava/lang/String; = "com.kddi.android.auoneidsetting.AuoneidSetting"


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->h:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->i:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->f:Ljava/lang/String;

    return-void
.end method

.method private a(ILjava/lang/String;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "error_code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xbbf

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    new-instance v2, Lcom/kddi/market/alml/lib/am;

    invoke-direct {v2, p0, p3, v0}, Lcom/kddi/market/alml/lib/am;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Ljava/util/Map;)V

    new-instance v3, Lcom/kddi/market/alml/lib/an;

    invoke-direct {v3, p0, p3, v0}, Lcom/kddi/market/alml/lib/an;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Ljava/util/Map;)V

    invoke-static {v1, v2, v3}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->createConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-static {v1, p1}, Lcom/kddi/market/alml/lib/ApiUtil;->getAlmlErrorCode(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;I)I

    move-result v1

    invoke-virtual {p3, v1, v3, v3, v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V
    .locals 2

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;

    invoke-direct {v0, p0, p2}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    new-instance v1, Lcom/kddi/market/alml/lib/al;

    invoke-direct {v1, p0, p2}, Lcom/kddi/market/alml/lib/al;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    invoke-static {p1, v0, v1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->createConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/util/Map;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V
    .locals 2

    new-instance v0, Lcom/kddi/market/alml/lib/am;

    invoke-direct {v0, p0, p3, p2}, Lcom/kddi/market/alml/lib/am;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Ljava/util/Map;)V

    new-instance v1, Lcom/kddi/market/alml/lib/an;

    invoke-direct {v1, p0, p3, p2}, Lcom/kddi/market/alml/lib/an;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Ljava/util/Map;)V

    invoke-static {p1, v0, v1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->createConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kddi/market/alml/lib/ApiUtil;->existsAuthenticator(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ApiUtil;->getCannotGetError(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;)I

    move-result v0

    invoke-virtual {p1, v0, v6, v6, v6}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->f:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/kddi/market/alml/lib/ApiUtil;->createLoginOption(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_4

    :cond_1
    const-string v0, "com.kddi.ast.au"

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.kddi.ast.auoneid"

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Landroid/app/Activity;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    goto :goto_0

    :cond_3
    const/16 v0, -0x63

    invoke-virtual {p1, v0, v6, v6, v6}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    new-instance v5, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;

    invoke-direct {v5, p0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor;)Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kddi/market/alml/lib/AccountManagerAccessor;ILjava/lang/String;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "error_code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xbbf

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    new-instance v2, Lcom/kddi/market/alml/lib/am;

    invoke-direct {v2, p0, p3, v0}, Lcom/kddi/market/alml/lib/am;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Ljava/util/Map;)V

    new-instance v3, Lcom/kddi/market/alml/lib/an;

    invoke-direct {v3, p0, p3, v0}, Lcom/kddi/market/alml/lib/an;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Ljava/util/Map;)V

    invoke-static {v1, v2, v3}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->createConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-static {v1, p1}, Lcom/kddi/market/alml/lib/ApiUtil;->getAlmlErrorCode(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;I)I

    move-result v1

    invoke-virtual {p3, v1, v3, v3, v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic access$2(Lcom/kddi/market/alml/lib/AccountManagerAccessor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kddi/market/alml/lib/AccountManagerAccessor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->b(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/kddi/market/alml/lib/AccountManagerAccessor;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Landroid/app/Activity;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V
    .locals 4

    new-instance v0, Lcom/kddi/market/alml/lib/ao;

    invoke-direct {v0, p0, p2}, Lcom/kddi/market/alml/lib/ao;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    new-instance v1, Lcom/kddi/market/alml/lib/ap;

    invoke-direct {v1, p0, p2}, Lcom/kddi/market/alml/lib/ap;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

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

.method private b(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V
    .locals 7

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    const-string v2, "com.kddi.ast.auoneid"

    invoke-static {v1, v2}, Lcom/kddi/market/alml/lib/ApiUtil;->existsAuthenticator(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    const-string v3, "com.kddi.market.auoneid"

    invoke-static {v2, v3}, Lcom/kddi/market/alml/lib/ApiUtil;->existsAuthenticator(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_1

    const-string v2, "com.kddi.ast.auoneid"

    iput-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->f:Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lcom/kddi/market/alml/lib/ApiUtil;->createLoginOption(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_5

    :cond_0
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Landroid/app/Activity;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    :goto_1
    return-void

    :cond_1
    if-eqz v2, :cond_2

    const-string v2, "com.kddi.market.auoneid"

    iput-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->installedMarketApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    new-instance v1, Lcom/kddi/market/alml/lib/ao;

    invoke-direct {v1, p0, p1}, Lcom/kddi/market/alml/lib/ao;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    new-instance v2, Lcom/kddi/market/alml/lib/ap;

    invoke-direct {v2, p0, p1}, Lcom/kddi/market/alml/lib/ap;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "au one Market\u672a\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v4, "\u3053\u306e\u6a5f\u80fd\u3092\u5229\u7528\u3059\u308b\u305f\u3081\u306b\u306f\u3001au one Market\u30a2\u30d7\u30ea\u304c\u5fc5\u8981\u3067\u3059\u3002\n\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9\u30da\u30fc\u30b8\u3092\u8868\u793a\u3057\u307e\u3059\u3002"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v4, "OK"

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v4, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    new-instance v1, Lcom/kddi/market/alml/lib/aq;

    invoke-direct {v1, p0, p1}, Lcom/kddi/market/alml/lib/aq;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    new-instance v2, Lcom/kddi/market/alml/lib/ar;

    invoke-direct {v2, p0, p1}, Lcom/kddi/market/alml/lib/ar;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\u30d0\u30fc\u30b8\u30e7\u30f3\u30a2\u30c3\u30d7\u78ba\u8a8d"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v4, "\u3053\u306e\u6a5f\u80fd\u3092\u5229\u7528\u3059\u308b\u305f\u3081\u306b\u306f\u3001au one Market\u30a2\u30d7\u30ea\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u30a2\u30c3\u30d7\u304c\u5fc5\u8981\u3067\u3059\u3002\n\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9\u30da\u30fc\u30b8\u3092\u8868\u793a\u3057\u307e\u3059\u3002"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v4, "OK"

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v4, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    goto :goto_1

    :cond_5
    new-instance v5, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;

    invoke-direct {v5, p0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    const/4 v1, 0x0

    aget-object v1, v2, v1

    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto/16 :goto_1
.end method

.method private c(Landroid/app/Activity;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V
    .locals 4

    new-instance v0, Lcom/kddi/market/alml/lib/aq;

    invoke-direct {v0, p0, p2}, Lcom/kddi/market/alml/lib/aq;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    new-instance v1, Lcom/kddi/market/alml/lib/ar;

    invoke-direct {v1, p0, p2}, Lcom/kddi/market/alml/lib/ar;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

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

.method private static createConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "au one ID \u8a2d\u5b9a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u3054\u5229\u7528\u3044\u305f\u3060\u304f\u306b\u306f au one ID \u3092\u8a2d\u5b9a\u3044\u305f\u3060\u304f\u5fc5\u8981\u304c\u3042\u308a\u307e\u3059\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "au one ID\u3092\u8a2d\u5b9a"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-object v0
.end method

.method private static installedMarketApp(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    const-string v3, "com.kddi.market"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/kddi/market/alml/lib/ApiUtil;->createLoginOption(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    new-instance v6, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AddAccountCallback;

    invoke-direct {v6, p0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AddAccountCallback;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->c:Landroid/app/Activity;

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method protected final a(Lcom/kddi/market/alml/lib/ab;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->c:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const-string v0, "com.kddi.ast.auoneid"

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->h:Ljava/lang/String;

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-direct {v0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;-><init>(Lcom/kddi/market/alml/lib/ab;)V

    invoke-direct {p0, v0, p3}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V

    return-void
.end method

.method protected final a(Lcom/kddi/market/alml/lib/ac;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const-string v0, "com.kddi.ast.au"

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->h:Ljava/lang/String;

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-direct {v0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;-><init>(Lcom/kddi/market/alml/lib/ac;)V

    invoke-direct {p0, v0, p3}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V

    return-void
.end method

.method protected final a(Lcom/kddi/market/alml/lib/ad;Z)V
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->b:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const-string v0, "com.kddi.ast.au"

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    const-string v0, "au_token"

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->h:Ljava/lang/String;

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-direct {v0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;-><init>(Lcom/kddi/market/alml/lib/ad;)V

    invoke-direct {p0, v0, p2}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V

    return-void
.end method

.method protected final a(Lcom/kddi/market/alml/lib/ae;Z)V
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->f:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const-string v0, "com.kddi.ast.au"

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    const-string v0, "EZNO"

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->h:Ljava/lang/String;

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-direct {v0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;-><init>(Lcom/kddi/market/alml/lib/ae;)V

    invoke-direct {p0, v0, p2}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V

    return-void
.end method

.method protected final a(Lcom/kddi/market/alml/lib/ai;Z)V
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const-string v0, "com.kddi.ast.au"

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->g:Ljava/lang/String;

    const-string v0, "OpenID"

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->h:Ljava/lang/String;

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-direct {v0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;-><init>(Lcom/kddi/market/alml/lib/ai;)V

    invoke-direct {p0, v0, p2}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V

    return-void
.end method

.method protected final a(Lcom/kddi/market/alml/lib/aj;Z)V
    .locals 1

    sget-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->a:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const-string v0, "auone_token"

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->h:Ljava/lang/String;

    new-instance v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-direct {v0, p1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;-><init>(Lcom/kddi/market/alml/lib/aj;)V

    invoke-direct {p0, v0, p2}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->b(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V

    return-void
.end method
