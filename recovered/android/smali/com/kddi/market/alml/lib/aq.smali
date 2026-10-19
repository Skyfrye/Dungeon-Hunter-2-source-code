.class final Lcom/kddi/market/alml/lib/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

.field private final synthetic b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;


# direct methods
.method constructor <init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/aq;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/aq;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "http://market.kddi.com/update_info/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/kddi/market/alml/lib/aq;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-static {v0}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->access$6(Lcom/kddi/market/alml/lib/AccountManagerAccessor;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :pswitch_1
    iget-object v0, p0, Lcom/kddi/market/alml/lib/aq;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    const/4 v1, -0x6

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
