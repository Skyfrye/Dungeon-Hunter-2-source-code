.class Lcom/samsungapps/plasma/PSMSPaymentMethod$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/samsungapps/plasma/PSMSPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$3;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$3;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    return-void
.end method
