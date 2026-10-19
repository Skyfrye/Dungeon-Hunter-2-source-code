.class final Lcom/kddi/market/alml/lib/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/ALMLClient;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/ALMLClient;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/o;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/o;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    const/4 v1, -0x6

    invoke-static {v0, v1, v2, v2, v2}, Lcom/kddi/market/alml/lib/ALMLClient;->access$15(Lcom/kddi/market/alml/lib/ALMLClient;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
