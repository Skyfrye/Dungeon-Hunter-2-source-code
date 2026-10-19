.class Lcom/samsungapps/plasma/d$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/samsungapps/plasma/d;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$8;->a:Lcom/samsungapps/plasma/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onDismiss"

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/d$8;->a:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->c(Lcom/samsungapps/plasma/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d$8;->a:Lcom/samsungapps/plasma/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsungapps/plasma/d;->b(Lcom/samsungapps/plasma/d;Z)Z

    iget-object v0, p0, Lcom/samsungapps/plasma/d$8;->a:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->g(Lcom/samsungapps/plasma/d;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsungapps/plasma/d$8;->a:Lcom/samsungapps/plasma/d;

    invoke-static {v1}, Lcom/samsungapps/plasma/d;->f(Lcom/samsungapps/plasma/d;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/d$8;->a:Lcom/samsungapps/plasma/d;

    invoke-static {v0, v2}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsungapps/plasma/d$8;->a:Lcom/samsungapps/plasma/d;

    invoke-static {v0, v2}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;Landroid/widget/ListView;)Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsungapps/plasma/d$8;->a:Lcom/samsungapps/plasma/d;

    invoke-static {v0, v2}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/samsungapps/plasma/d$8;->a:Lcom/samsungapps/plasma/d;

    invoke-static {v0, v2}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/samsungapps/plasma/d$8;->a:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->h(Lcom/samsungapps/plasma/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsungapps/plasma/d$8;->a:Lcom/samsungapps/plasma/d;

    invoke-static {v0, v2}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-void
.end method
