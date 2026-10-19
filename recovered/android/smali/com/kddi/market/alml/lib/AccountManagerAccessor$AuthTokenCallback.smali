.class Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# static fields
.field private static synthetic c:[I


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

.field private b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;


# direct methods
.method static synthetic $SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[I
    .locals 3

    sget-object v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->c:[I

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
    sput-object v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->c:[I

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

.method public constructor <init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V
    .locals 1

    iput-object p1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "accesstoken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "accesstoken_secret"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->$SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[I

    move-result-object v4

    iget-object v5, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-static {v5}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor;)Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    return-void

    :pswitch_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "errorCode"

    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-static {v2}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor;)Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/market/alml/lib/ApiUtil;->getCannotGetError(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "errorMessage"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    iget-object v3, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v2, v1, v0, v3}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->access$1(Lcom/kddi/market/alml/lib/AccountManagerAccessor;ILjava/lang/String;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    const/4 v1, -0x4

    invoke-virtual {v0, v1, v6, v6, v6}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-static {v1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor;)Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/market/alml/lib/ApiUtil;->getCannotGetError(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-static {v1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor;)Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/market/alml/lib/ApiUtil;->getCannotGetError(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;)I

    move-result v1

    invoke-virtual {v0, v1, v6, v6, v6}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AuthTokenCallback;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    const/16 v1, -0x63

    invoke-virtual {v0, v1, v6, v6, v6}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
