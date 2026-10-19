.class public final Lcom/kddi/market/alml/lib/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/ALMLClient;

.field private b:Lcom/kddi/market/alml/lib/z;


# direct methods
.method public constructor <init>(Lcom/kddi/market/alml/lib/ALMLClient;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/y;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/kddi/market/alml/lib/z;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/y;->b:Lcom/kddi/market/alml/lib/z;

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Lcom/kddi/market/alml/lib/ALMLClient;->access$7()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    sget-object v2, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->b:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    invoke-static {v0, v2}, Lcom/kddi/market/alml/lib/ALMLClient;->access$6(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;)V

    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {p2}, Lcom/kddi/market/alml/service/IAppAuthorizeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kddi/market/alml/service/IAppAuthorizeService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kddi/market/alml/lib/ALMLClient;->access$5(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/service/IAppAuthorizeService;)V

    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/ALMLClient;->access$8(Lcom/kddi/market/alml/lib/ALMLClient;)Lcom/kddi/market/alml/service/IAppAuthorizeService;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->b:Lcom/kddi/market/alml/lib/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->b:Lcom/kddi/market/alml/lib/z;

    const/16 v2, -0x63

    invoke-interface {v0, v2}, Lcom/kddi/market/alml/lib/z;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    sget-object v2, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    invoke-static {v0, v2}, Lcom/kddi/market/alml/lib/ALMLClient;->access$6(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    sget-object v2, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->c:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    invoke-static {v0, v2}, Lcom/kddi/market/alml/lib/ALMLClient;->access$6(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;)V

    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->b:Lcom/kddi/market/alml/lib/z;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->b:Lcom/kddi/market/alml/lib/z;

    invoke-interface {v0}, Lcom/kddi/market/alml/lib/z;->b()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->b:Lcom/kddi/market/alml/lib/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->b:Lcom/kddi/market/alml/lib/z;

    const/16 v1, -0x62

    invoke-interface {v0, v1}, Lcom/kddi/market/alml/lib/z;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kddi/market/alml/lib/ALMLClient;->access$5(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/service/IAppAuthorizeService;)V

    iget-object v0, p0, Lcom/kddi/market/alml/lib/y;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    sget-object v1, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    invoke-static {v0, v1}, Lcom/kddi/market/alml/lib/ALMLClient;->access$6(Lcom/kddi/market/alml/lib/ALMLClient;Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;)V

    return-void
.end method
