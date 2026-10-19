.class Lcom/samsungapps/plasma/d$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/samsungapps/plasma/d;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$10;->b:Lcom/samsungapps/plasma/d;

    iput-object p2, p0, Lcom/samsungapps/plasma/d$10;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsungapps/plasma/d$10;->b:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->i(Lcom/samsungapps/plasma/d;)Lcom/samsungapps/plasma/g;

    move-result-object v0

    iget-object v1, p0, Lcom/samsungapps/plasma/d$10;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d$10;->b:Lcom/samsungapps/plasma/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;Lcom/samsungapps/plasma/g;)Lcom/samsungapps/plasma/g;

    :cond_0
    return-void
.end method
