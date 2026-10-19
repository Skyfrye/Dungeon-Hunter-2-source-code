.class Lcom/samsungapps/plasma/PSMSPaymentMethod$7;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/samsungapps/plasma/PSMSPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$7;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$7;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$7;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$7;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$7;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    iget-object v0, v0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$7;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-static {v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->d(Lcom/samsungapps/plasma/PSMSPaymentMethod;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$7;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "SMS message sent"

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$7;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->b(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SMS send failed code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$7;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    sget-object v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    invoke-static {v0, v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod;Lcom/samsungapps/plasma/PSMSPaymentMethod$c;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$7;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    iget-object v0, v0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const/16 v1, 0x2328

    const-string v2, "IDS_SAPPS_POP_FAILED_TO_SEND_MESSAGE"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method
