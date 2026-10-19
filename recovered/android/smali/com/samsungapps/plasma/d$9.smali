.class Lcom/samsungapps/plasma/d$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field final synthetic a:Landroid/widget/ExpandableListView;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/samsungapps/plasma/d;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d;Landroid/widget/ExpandableListView;Ljava/util/ArrayList;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$9;->d:Lcom/samsungapps/plasma/d;

    iput-object p2, p0, Lcom/samsungapps/plasma/d$9;->a:Landroid/widget/ExpandableListView;

    iput-object p3, p0, Lcom/samsungapps/plasma/d$9;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsungapps/plasma/d$9;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsungapps/plasma/d$9;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/samsungapps/plasma/d$9;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsungapps/plasma/d$9;->d:Lcom/samsungapps/plasma/d;

    iget-object v0, p0, Lcom/samsungapps/plasma/d$9;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/g;

    invoke-static {v1, v0}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;Lcom/samsungapps/plasma/g;)Lcom/samsungapps/plasma/g;

    iget-object v0, p0, Lcom/samsungapps/plasma/d$9;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsungapps/plasma/d$9;->d:Lcom/samsungapps/plasma/d;

    invoke-static {v1}, Lcom/samsungapps/plasma/d;->i(Lcom/samsungapps/plasma/d;)Lcom/samsungapps/plasma/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsungapps/plasma/g;->h()D

    move-result-wide v1

    iget-object v3, p0, Lcom/samsungapps/plasma/d$9;->d:Lcom/samsungapps/plasma/d;

    invoke-static {v3}, Lcom/samsungapps/plasma/d;->i(Lcom/samsungapps/plasma/d;)Lcom/samsungapps/plasma/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsungapps/plasma/g;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungapps/plasma/d$9;->d:Lcom/samsungapps/plasma/d;

    invoke-static {v4}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;)Z

    move-result v4

    iget-object v5, p0, Lcom/samsungapps/plasma/d$9;->d:Lcom/samsungapps/plasma/d;

    invoke-static {v5}, Lcom/samsungapps/plasma/d;->b(Lcom/samsungapps/plasma/d;)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsungapps/plasma/i;->a(DLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
