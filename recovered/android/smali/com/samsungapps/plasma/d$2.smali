.class Lcom/samsungapps/plasma/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsungapps/plasma/d;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$2;->b:Lcom/samsungapps/plasma/d;

    iput p2, p0, Lcom/samsungapps/plasma/d$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/samsungapps/plasma/d$2;->b:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->j(Lcom/samsungapps/plasma/d;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsungapps/plasma/d$2;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsungapps/plasma/d$2;->b:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->d(Lcom/samsungapps/plasma/d;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsungapps/plasma/d$2;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsungapps/plasma/d$2;->b:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->k(Lcom/samsungapps/plasma/d;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d$2;->b:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->k(Lcom/samsungapps/plasma/d;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/samsungapps/plasma/d$2;->b:Lcom/samsungapps/plasma/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsungapps/plasma/d;->b(Lcom/samsungapps/plasma/d;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsungapps/plasma/d$2;->b:Lcom/samsungapps/plasma/d;

    iget v1, p0, Lcom/samsungapps/plasma/d$2;->a:I

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;II)V

    goto :goto_0
.end method
