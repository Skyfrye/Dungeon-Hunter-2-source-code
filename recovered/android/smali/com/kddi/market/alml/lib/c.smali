.class final Lcom/kddi/market/alml/lib/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kddi/market/alml/lib/z;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/ALMLClient;

.field private final synthetic b:Lcom/kddi/market/alml/lib/aj;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/aj;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/c;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/c;->b:Lcom/kddi/market/alml/lib/aj;

    iput-object p3, p0, Lcom/kddi/market/alml/lib/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/kddi/market/alml/lib/c;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/kddi/market/alml/lib/c;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/c;->b:Lcom/kddi/market/alml/lib/aj;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$14(Lcom/kddi/market/alml/lib/aj;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/c;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v0, p1, v1, v1, v1}, Lcom/kddi/market/alml/lib/ALMLClient;->access$15(Lcom/kddi/market/alml/lib/ALMLClient;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final b()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/c;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$8(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeService;

    move-result-object v0

    iget-object v1, p0, Lcom/kddi/market/alml/lib/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/kddi/market/alml/lib/c;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v3}, Lcom/kddi/market/alml/lib/ALMLClient;->access$10(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback$Stub;

    move-result-object v3

    iget-boolean v4, p0, Lcom/kddi/market/alml/lib/c;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kddi/market/alml/service/IAppAuthorizeService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, -0x63

    invoke-virtual {p0, v0}, Lcom/kddi/market/alml/lib/c;->a(I)V

    goto :goto_0
.end method
