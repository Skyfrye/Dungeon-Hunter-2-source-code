.class final Lcom/kddi/market/alml/lib/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/av;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "accesstoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accesstoken_secret"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/av;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "intent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/kddi/market/alml/lib/av;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;

    const/4 v2, -0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kddi/market/alml/lib/av;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;

    const/16 v1, -0x63

    invoke-virtual {v0, v1, v5, v5, v5}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "errorCode"

    const/16 v2, -0x29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "error_code"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "error_message"

    const-string v4, "errorMessage"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/av;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;

    iget-object v3, p0, Lcom/kddi/market/alml/lib/av;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;

    invoke-static {v3}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;)Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/kddi/market/alml/lib/ApiUtil;->getAlmlErrorCode(Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/kddi/market/alml/lib/AccountManagerAccessorSilent;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
