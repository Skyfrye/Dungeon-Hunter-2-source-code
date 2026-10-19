.class Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3$1;->a:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3$1;->a:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;

    iget-object v0, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
