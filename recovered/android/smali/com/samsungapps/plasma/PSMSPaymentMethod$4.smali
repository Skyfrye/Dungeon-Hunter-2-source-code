.class Lcom/samsungapps/plasma/PSMSPaymentMethod$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/samsungapps/plasma/PSMSPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$4;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$4;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    iget-object v0, v0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$4;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    iget-object v0, v0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$4;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$4;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    sget-object v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->f:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    invoke-static {v0, v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod;Lcom/samsungapps/plasma/PSMSPaymentMethod$c;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$4;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->b(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V

    return-void
.end method
