.class Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/samsungapps/plasma/CreditCardPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->d:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->d:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    iget-object v0, v0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->d:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    iget-object v0, v0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->d:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->b:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->d:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    iget-object v2, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->a(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->d:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    iget-object v2, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->b(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->d:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    invoke-static {v1, v0}, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->c(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;->d:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->r()Z

    return-void
.end method
