.class Lcom/samsungapps/plasma/PSMSPaymentMethod$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/samsungapps/plasma/PSMSPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$1;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$1;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$1;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$1;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$1;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->b(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V

    :cond_1
    return-void
.end method
