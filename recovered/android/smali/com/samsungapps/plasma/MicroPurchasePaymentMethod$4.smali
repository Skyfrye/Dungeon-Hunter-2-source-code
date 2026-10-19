.class Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/widget/Spinner;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Landroid/widget/EditText;

.field final synthetic g:Landroid/widget/EditText;

.field final synthetic h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->d:Landroid/widget/Spinner;

    iput-object p6, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->e:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->f:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->g:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->c:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->f:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->g:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-static {v8, v0}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->a(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-static {v0, v3}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->b(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->c(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-static {v0, v6}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->d(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-static {v0, v2}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->a(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Z)Z

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-static {v0, v1}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->b(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Z)Z

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->r()Z

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->d:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->a:I

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object v4, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object v5, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-boolean v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->e:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->d:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move v1, v0

    goto/16 :goto_0
.end method
