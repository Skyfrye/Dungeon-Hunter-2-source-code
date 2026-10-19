.class final Lcom/kddi/market/alml/lib/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/ALMLClient;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/ALMLClient;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/d;->a:Lcom/kddi/market/alml/lib/ALMLClient;

    iput p2, p0, Lcom/kddi/market/alml/lib/d;->b:I

    iput-object p3, p0, Lcom/kddi/market/alml/lib/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/kddi/market/alml/lib/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/kddi/market/alml/lib/d;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/kddi/market/alml/lib/ALMLClient;->access$4()Lcom/kddi/market/alml/lib/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kddi/market/alml/lib/ALMLClient;->access$4()Lcom/kddi/market/alml/lib/aj;

    iget v0, p0, Lcom/kddi/market/alml/lib/d;->b:I

    iget-object v0, p0, Lcom/kddi/market/alml/lib/d;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/d;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/d;->e:Ljava/util/Map;

    :cond_0
    return-void
.end method
