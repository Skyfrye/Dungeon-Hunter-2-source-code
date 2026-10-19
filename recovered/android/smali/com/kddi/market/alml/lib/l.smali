.class final Lcom/kddi/market/alml/lib/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kddi/market/alml/lib/z;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/ALMLClient;

.field private final synthetic b:Lcom/kddi/market/alml/lib/aa;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:J

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/aa;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/l;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/l;->b:Lcom/kddi/market/alml/lib/aa;

    iput-object p3, p0, Lcom/kddi/market/alml/lib/l;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/kddi/market/alml/lib/l;->d:J

    iput-object p6, p0, Lcom/kddi/market/alml/lib/l;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/l;->b:Lcom/kddi/market/alml/lib/aa;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$9(Lcom/kddi/market/alml/lib/aa;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/l;->b:Lcom/kddi/market/alml/lib/aa;

    return-void
.end method

.method public final b()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/l;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$8(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeService;

    move-result-object v0

    iget-object v1, p0, Lcom/kddi/market/alml/lib/l;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/l;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v2}, Lcom/kddi/market/alml/lib/ALMLClient;->access$10(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback$Stub;

    move-result-object v2

    iget-wide v3, p0, Lcom/kddi/market/alml/lib/l;->d:J

    iget-object v5, p0, Lcom/kddi/market/alml/lib/l;->e:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/kddi/market/alml/service/IAppAuthorizeService;->a(Ljava/lang/String;Lcom/kddi/market/alml/service/IAppAuthorizeServiceCallback;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/l;->b:Lcom/kddi/market/alml/lib/aa;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/l;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    sget-object v1, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    invoke-static {v0, v1}, Lcom/kddi/market/alml/lib/ALMLClient;->access$6(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/l;->b:Lcom/kddi/market/alml/lib/aa;

    goto :goto_0
.end method
