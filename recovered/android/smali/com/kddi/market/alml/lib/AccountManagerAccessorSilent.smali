.class Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;
.super Ljava/lang/Object;


# static fields
.field private static synthetic g:[I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/kddi/market/alml/lib/aw;

.field private e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

.field private f:Landroid/accounts/AccountManagerCallback;


# direct methods
.method static synthetic $SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[I
    .locals 3

    sget-object v0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->values()[Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->c:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->a:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->b:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->f:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->g:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    new-instance v0, Lcom/kddi/market/alml/lib/av;

    invoke-direct {v0, p0}, Lcom/kddi/market/alml/lib/av;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;)V

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->f:Landroid/accounts/AccountManagerCallback;

    iput-object p1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;)Landroid/accounts/Account;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-static {}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->$SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "com.kddi.ast.au"

    :goto_1
    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :pswitch_1
    const-string v0, "com.kddi.ast.auoneid"

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;)Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->d:Lcom/kddi/market/alml/lib/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->d:Lcom/kddi/market/alml/lib/aw;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kddi/market/alml/lib/aw;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->d:Lcom/kddi/market/alml/lib/aw;

    return-void
.end method

.method protected final a(Lcom/kddi/market/alml/lib/aw;Z)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->d:Lcom/kddi/market/alml/lib/aw;

    sget-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->b:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a:Landroid/content/Context;

    const-string v1, "com.kddi.ast.au"

    invoke-static {v0, v1}, Lcom/kddi/market/alml/lib/ApiUtil;->existsAuthenticator(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x29

    invoke-virtual {p0, v0, v6, v6, v6}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-direct {p0, v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, -0x28

    invoke-virtual {p0, v0, v6, v6, v6}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->c:Ljava/lang/String;

    invoke-static {v0, v2, p2}, Lcom/kddi/market/alml/lib/ApiUtil;->createLoginOption(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "au_token"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->f:Landroid/accounts/AccountManagerCallback;

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method protected final b(Lcom/kddi/market/alml/lib/aw;Z)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->d:Lcom/kddi/market/alml/lib/aw;

    sget-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->a:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a:Landroid/content/Context;

    const-string v1, "com.kddi.ast.auoneid"

    invoke-static {v0, v1}, Lcom/kddi/market/alml/lib/ApiUtil;->existsAuthenticator(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x29

    invoke-virtual {p0, v0, v6, v6, v6}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-direct {p0, v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, -0x28

    invoke-virtual {p0, v0, v6, v6, v6}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->c:Ljava/lang/String;

    invoke-static {v0, v2, p2}, Lcom/kddi/market/alml/lib/ApiUtil;->createLoginOption(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "auone_token"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->f:Landroid/accounts/AccountManagerCallback;

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method
