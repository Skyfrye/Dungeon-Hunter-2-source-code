.class final Lcom/kddi/market/alml/lib/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

.field private final synthetic b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

.field private final synthetic c:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/an;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/an;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    iput-object p3, p0, Lcom/kddi/market/alml/lib/an;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/an;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    const/4 v1, -0x4

    iget-object v2, p0, Lcom/kddi/market/alml/lib/an;->c:Ljava/util/Map;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
