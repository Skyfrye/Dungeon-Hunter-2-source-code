.class final Lcom/kddi/market/alml/lib/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$AddAccountCallback;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor$AddAccountCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/as;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$AddAccountCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/kddi/market/alml/lib/as;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$AddAccountCallback;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AddAccountCallback;->access$2(Lcom/kddi/market/alml/lib/AccountManagerAccessor$AddAccountCallback;)Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    move-result-object v0

    iget-object v1, p0, Lcom/kddi/market/alml/lib/as;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$AddAccountCallback;

    invoke-static {v1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$AddAccountCallback;->access$1(Lcom/kddi/market/alml/lib/AccountManagerAccessor$AddAccountCallback;)Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->access$4(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Z)V

    return-void
.end method
