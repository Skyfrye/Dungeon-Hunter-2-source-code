.class Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;->b:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;->b:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iget-object v1, v1, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "IDS_SAPPS_POP_PURCHASE_WITH_A_DIFFERENT_PHONE_NUMBER_Q"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "IDS_SAPPS_SK_YES_ABB"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3$1;

    invoke-direct {v2, p0}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3$1;-><init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "IDS_SAPPS_SK_NO_ABB"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3$2;

    invoke-direct {v2, p0}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3$2;-><init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
