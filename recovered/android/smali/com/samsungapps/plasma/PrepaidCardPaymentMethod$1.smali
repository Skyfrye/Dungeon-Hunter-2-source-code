.class Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$1;->b:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$1;->a:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$1;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->getTermsUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$1;->b:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;

    iget-object v0, v0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
