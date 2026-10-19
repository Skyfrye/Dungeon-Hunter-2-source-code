.class Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->a:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->d:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-static {v2, v0}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->a(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iget-object v2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->b(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->c(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->d(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-static {v0, v3}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->a(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Z)Z

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-static {v0, v3}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->b(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Z)Z

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->r()Z

    return-void
.end method
