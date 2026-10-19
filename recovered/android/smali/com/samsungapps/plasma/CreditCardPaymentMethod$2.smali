.class Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Lcom/samsungapps/plasma/CreditCardPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;->f:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;->d:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;->e:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
