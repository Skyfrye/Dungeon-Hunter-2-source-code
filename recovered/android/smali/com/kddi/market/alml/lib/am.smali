.class final Lcom/kddi/market/alml/lib/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

.field private final synthetic b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

.field private final synthetic c:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/am;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/am;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    iput-object p3, p0, Lcom/kddi/market/alml/lib/am;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, -0x4

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "com.kddi.ast.auoneid"

    iget-object v1, p0, Lcom/kddi/market/alml/lib/am;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-static {v1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->access$2(Lcom/kddi/market/alml/lib/AccountManagerAccessor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.kddi.android.auoneidsetting"

    const-string v2, "com.kddi.android.auoneidsetting.AuoneidSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/kddi/market/alml/lib/am;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-static {v1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->access$6(Lcom/kddi/market/alml/lib/AccountManagerAccessor;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/am;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    iget-object v1, p0, Lcom/kddi/market/alml/lib/am;->c:Ljava/util/Map;

    invoke-virtual {v0, v4, v3, v3, v1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/kddi/market/alml/lib/am;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    iget-object v1, p0, Lcom/kddi/market/alml/lib/am;->c:Ljava/util/Map;

    invoke-virtual {v0, v4, v3, v3, v1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
