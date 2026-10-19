.class Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/Button;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Landroid/widget/EditText;

.field final synthetic g:Landroid/widget/CheckBox;

.field final synthetic h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->c:Landroid/widget/Button;

    iput-object p5, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->d:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->e:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->f:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->g:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->c:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->b:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method
