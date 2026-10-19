.class Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/CyberCashPaymentMethod;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->a:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;

    iget-object v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->a:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    invoke-static {v4, v1}, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->a(Lcom/samsungapps/plasma/CyberCashPaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    invoke-static {v4, v2}, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->b(Lcom/samsungapps/plasma/CyberCashPaymentMethod;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    invoke-static {v4, v0}, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->a(Lcom/samsungapps/plasma/CyberCashPaymentMethod;Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;)Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->r()Z

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    iput-object v1, v0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    iput-object v2, v0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    iput v3, v0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->b:I

    return-void
.end method
