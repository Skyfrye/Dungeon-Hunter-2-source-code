.class final Lcom/kddi/market/alml/lib/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kddi/market/alml/lib/z;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/ALMLClient;

.field private final synthetic b:Lcom/kddi/market/alml/lib/af;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/af;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/b;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/b;->b:Lcom/kddi/market/alml/lib/af;

    iput-object p3, p0, Lcom/kddi/market/alml/lib/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/b;->b:Lcom/kddi/market/alml/lib/af;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$13(Lcom/kddi/market/alml/lib/af;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/b;->b:Lcom/kddi/market/alml/lib/af;

    return-void
.end method

.method public final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/b;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$8(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeService;

    move-result-object v0

    iget-object v1, p0, Lcom/kddi/market/alml/lib/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/b;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v2}, Lcom/kddi/market/alml/lib/ALMLClient;->access$10(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback$Stub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kddi/market/alml/service/IAppAuthorizeService;->c(Ljava/lang/String;Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/b;->b:Lcom/kddi/market/alml/lib/af;

    goto :goto_0
.end method
