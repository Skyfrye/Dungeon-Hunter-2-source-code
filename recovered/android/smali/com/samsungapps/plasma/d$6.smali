.class Lcom/samsungapps/plasma/d$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/samsungapps/plasma/d;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$6;->c:Lcom/samsungapps/plasma/d;

    iput p2, p0, Lcom/samsungapps/plasma/d$6;->a:I

    iput p3, p0, Lcom/samsungapps/plasma/d$6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsungapps/plasma/d$6;->c:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->c(Lcom/samsungapps/plasma/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d$6;->c:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->e(Lcom/samsungapps/plasma/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p4, p4, -0x1

    iget-object v0, p0, Lcom/samsungapps/plasma/d$6;->c:Lcom/samsungapps/plasma/d;

    invoke-static {v0, v4}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;Z)Z

    :cond_2
    iget v0, p0, Lcom/samsungapps/plasma/d$6;->a:I

    if-ge p3, v0, :cond_0

    iget v0, p0, Lcom/samsungapps/plasma/d$6;->a:I

    if-ge p4, v0, :cond_0

    mul-int/lit8 v0, p3, 0x2

    sub-int v0, p4, v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d$6;->c:Lcom/samsungapps/plasma/d;

    invoke-static {v0, v5}, Lcom/samsungapps/plasma/d;->b(Lcom/samsungapps/plasma/d;Z)Z

    iget-object v0, p0, Lcom/samsungapps/plasma/d$6;->c:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->g(Lcom/samsungapps/plasma/d;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsungapps/plasma/d$6;->c:Lcom/samsungapps/plasma/d;

    invoke-static {v1}, Lcom/samsungapps/plasma/d;->f(Lcom/samsungapps/plasma/d;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/d$6;->c:Lcom/samsungapps/plasma/d;

    iget v1, p0, Lcom/samsungapps/plasma/d$6;->b:I

    add-int/lit8 v2, p4, 0x1

    add-int/lit8 v3, p4, 0xf

    invoke-static {v0, v1, v2, v3, v5}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;IIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d$6;->c:Lcom/samsungapps/plasma/d;

    invoke-static {v0, v4}, Lcom/samsungapps/plasma/d;->b(Lcom/samsungapps/plasma/d;Z)Z

    iget-object v0, p0, Lcom/samsungapps/plasma/d$6;->c:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->g(Lcom/samsungapps/plasma/d;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsungapps/plasma/d$6;->c:Lcom/samsungapps/plasma/d;

    invoke-static {v1}, Lcom/samsungapps/plasma/d;->f(Lcom/samsungapps/plasma/d;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
