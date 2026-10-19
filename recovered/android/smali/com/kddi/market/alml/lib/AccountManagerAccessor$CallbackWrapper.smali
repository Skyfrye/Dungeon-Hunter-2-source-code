.class Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/kddi/market/alml/lib/ab;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/kddi/market/alml/lib/ac;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/kddi/market/alml/lib/ad;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/kddi/market/alml/lib/ae;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/kddi/market/alml/lib/ai;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/kddi/market/alml/lib/aj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    iget-object v6, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->b:Landroid/os/Handler;

    new-instance v0, Lcom/kddi/market/alml/lib/au;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kddi/market/alml/lib/au;-><init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
