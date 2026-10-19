.class final Lcom/kddi/market/alml/lib/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kddi/market/alml/lib/z;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/ALMLClient;

.field private final synthetic b:Lcom/kddi/market/alml/lib/ah;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ah;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/s;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/s;->b:Lcom/kddi/market/alml/lib/ah;

    iput-object p3, p0, Lcom/kddi/market/alml/lib/s;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/s;->b:Lcom/kddi/market/alml/lib/ah;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$11(Lcom/kddi/market/alml/lib/ah;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/s;->b:Lcom/kddi/market/alml/lib/ah;

    return-void
.end method

.method public final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/s;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$8(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeService;

    move-result-object v0

    iget-object v1, p0, Lcom/kddi/market/alml/lib/s;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/s;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v2}, Lcom/kddi/market/alml/lib/ALMLClient;->access$10(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback$Stub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kddi/market/alml/service/IAppAuthorizeService;->a(Ljava/lang/String;Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/s;->b:Lcom/kddi/market/alml/lib/ah;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/s;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    sget-object v1, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    invoke-static {v0, v1}, Lcom/kddi/market/alml/lib/ALMLClient;->access$6(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/s;->b:Lcom/kddi/market/alml/lib/ah;

    goto :goto_0
.end method
