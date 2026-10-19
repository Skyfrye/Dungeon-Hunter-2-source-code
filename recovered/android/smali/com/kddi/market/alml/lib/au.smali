.class final Lcom/kddi/market/alml/lib/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    iput p2, p0, Lcom/kddi/market/alml/lib/au;->b:I

    iput-object p3, p0, Lcom/kddi/market/alml/lib/au;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/kddi/market/alml/lib/au;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/kddi/market/alml/lib/au;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kddi/market/alml/lib/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;

    iget v0, p0, Lcom/kddi/market/alml/lib/au;->b:I

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->e:Ljava/util/Map;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kddi/market/alml/lib/ad;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;

    iget v0, p0, Lcom/kddi/market/alml/lib/au;->b:I

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->e:Ljava/util/Map;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kddi/market/alml/lib/ai;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;

    iget v0, p0, Lcom/kddi/market/alml/lib/au;->b:I

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->e:Ljava/util/Map;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kddi/market/alml/lib/ae;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;

    iget v0, p0, Lcom/kddi/market/alml/lib/au;->b:I

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->e:Ljava/util/Map;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kddi/market/alml/lib/ac;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;

    iget v0, p0, Lcom/kddi/market/alml/lib/au;->b:I

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->e:Ljava/util/Map;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kddi/market/alml/lib/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)Ljava/lang/Object;

    iget v0, p0, Lcom/kddi/market/alml/lib/au;->b:I

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/kddi/market/alml/lib/au;->e:Ljava/util/Map;

    goto :goto_0
.end method
