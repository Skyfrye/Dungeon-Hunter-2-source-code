.class Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/Button;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Landroid/widget/EditText;

.field final synthetic g:Landroid/widget/CheckBox;

.field final synthetic h:Landroid/widget/Button;

.field final synthetic i:Landroid/widget/Button;

.field final synthetic j:Landroid/widget/LinearLayout;

.field final synthetic k:Landroid/widget/Spinner;

.field final synthetic l:Landroid/widget/TextView;

.field final synthetic m:Landroid/widget/LinearLayout;

.field final synthetic n:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->n:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->c:Landroid/widget/Button;

    iput-object p5, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->d:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->e:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->f:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->g:Landroid/widget/CheckBox;

    iput-object p9, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->h:Landroid/widget/Button;

    iput-object p10, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->i:Landroid/widget/Button;

    iput-object p11, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->j:Landroid/widget/LinearLayout;

    iput-object p12, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->k:Landroid/widget/Spinner;

    iput-object p13, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->l:Landroid/widget/TextView;

    iput-object p14, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->m:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    const/4 v1, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->c:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_2

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->g:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->h:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->b:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-lez v4, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->k:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->i:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->k:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
