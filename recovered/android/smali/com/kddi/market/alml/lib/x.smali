.class final Lcom/kddi/market/alml/lib/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kddi/market/alml/lib/z;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/ALMLClient;

.field private final synthetic b:Lcom/kddi/market/alml/lib/ag;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/x;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/x;->b:Lcom/kddi/market/alml/lib/ag;

    iput-object p3, p0, Lcom/kddi/market/alml/lib/x;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/kddi/market/alml/lib/x;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/kddi/market/alml/lib/x;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/kddi/market/alml/lib/x;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/x;->b:Lcom/kddi/market/alml/lib/ag;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$12(Lcom/kddi/market/alml/lib/ag;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/x;->b:Lcom/kddi/market/alml/lib/ag;

    return-void
.end method

.method public final b()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/x;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$8(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeService;

    move-result-object v0

    iget-object v1, p0, Lcom/kddi/market/alml/lib/x;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/x;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v2}, Lcom/kddi/market/alml/lib/ALMLClient;->access$10(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback$Stub;

    move-result-object v2

    iget-object v3, p0, Lcom/kddi/market/alml/lib/x;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/kddi/market/alml/lib/x;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/kddi/market/alml/lib/x;->f:Ljava/lang/String;

    const/16 v6, 0x9

    invoke-interface/range {v0 .. v6}, Lcom/kddi/market/alml/service/IAppAuthorizeService;->c(Ljava/lang/String;Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/x;->b:Lcom/kddi/market/alml/lib/ag;

    goto :goto_0
.end method
