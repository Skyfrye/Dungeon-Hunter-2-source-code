.class Lcom/samsungapps/plasma/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/samsungapps/plasma/d;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$3;->a:Lcom/samsungapps/plasma/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsungapps/plasma/d$3;->a:Lcom/samsungapps/plasma/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsungapps/plasma/d;->b(Lcom/samsungapps/plasma/d;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
