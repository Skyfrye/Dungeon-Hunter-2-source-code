.class final Lcom/kddi/market/alml/lib/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/ALMLClient;

.field private final synthetic b:Lcom/kddi/market/alml/lib/z;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/z;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/j;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/j;->b:Lcom/kddi/market/alml/lib/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/kddi/market/alml/lib/ALMLClient;->access$7()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/j;->b:Lcom/kddi/market/alml/lib/z;

    invoke-interface {v0}, Lcom/kddi/market/alml/lib/z;->a()V

    iget-object v0, p0, Lcom/kddi/market/alml/lib/j;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$8(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/j;->b:Lcom/kddi/market/alml/lib/z;

    invoke-interface {v0}, Lcom/kddi/market/alml/lib/z;->b()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/j;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$8(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeService;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->b:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/j;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v2}, Lcom/kddi/market/alml/lib/ALMLClient;->access$21(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/j;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$22(Lcom/kddi/market/alml/lib/ALMLClient;)Landroid/content/ServiceConnection;

    move-result-object v0

    check-cast v0, Lcom/kddi/market/alml/lib/y;

    iget-object v2, p0, Lcom/kddi/market/alml/lib/j;->b:Lcom/kddi/market/alml/lib/z;

    invoke-virtual {v0, v2}, Lcom/kddi/market/alml/lib/y;->a(Lcom/kddi/market/alml/lib/z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kddi/market/alml/lib/j;->b:Lcom/kddi/market/alml/lib/z;

    const/16 v2, -0x63

    invoke-interface {v0, v2}, Lcom/kddi/market/alml/lib/z;->a(I)V

    iget-object v0, p0, Lcom/kddi/market/alml/lib/j;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    sget-object v2, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    invoke-static {v0, v2}, Lcom/kddi/market/alml/lib/ALMLClient;->access$6(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
