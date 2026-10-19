.class Lcom/samsungapps/plasma/PSMSPaymentMethod$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/samsungapps/plasma/PSMSPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$5;->b:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$5;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$5;->b:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->c(Lcom/samsungapps/plasma/PSMSPaymentMethod;)Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    move-result-object v0

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->j(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$5;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$5;->b:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    iget-object v0, v0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$5;->b:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    iget-object v0, v0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$5;->b:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$5;->b:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    sget-object v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->f:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    invoke-static {v0, v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod;Lcom/samsungapps/plasma/PSMSPaymentMethod$c;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$5;->b:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->b(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$5;->b:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    iget-object v0, v0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const/4 v1, 0x0

    const-string v2, "IDS_SAPPS_POP_INVALID_PASSWORD"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method
