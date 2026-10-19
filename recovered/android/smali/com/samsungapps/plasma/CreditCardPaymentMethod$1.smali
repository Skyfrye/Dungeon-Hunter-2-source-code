.class Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Lcom/samsungapps/plasma/CreditCardPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->f:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->a:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->d:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->e:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->f:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    iget-object v1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->f:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    iget v1, v1, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->F:I

    iget-object v2, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->f:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    iget-object v2, v2, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;->f:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    iget-object v3, v3, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->m:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;->getCardType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v8}, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
