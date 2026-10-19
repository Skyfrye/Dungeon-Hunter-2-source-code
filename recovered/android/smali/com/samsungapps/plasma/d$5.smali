.class Lcom/samsungapps/plasma/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:I

.field final synthetic c:Lcom/samsungapps/plasma/d;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d;Ljava/util/ArrayList;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$5;->c:Lcom/samsungapps/plasma/d;

    iput-object p2, p0, Lcom/samsungapps/plasma/d$5;->a:Ljava/util/ArrayList;

    iput p3, p0, Lcom/samsungapps/plasma/d$5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/samsungapps/plasma/d$5;->c:Lcom/samsungapps/plasma/d;

    invoke-static {v0}, Lcom/samsungapps/plasma/d;->c(Lcom/samsungapps/plasma/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/d$5;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/ItemInformation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsungapps/plasma/ItemInformation;->getItemId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsungapps/plasma/d$5;->c:Lcom/samsungapps/plasma/d;

    invoke-static {v1}, Lcom/samsungapps/plasma/d;->d(Lcom/samsungapps/plasma/d;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/samsungapps/plasma/d$5;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsungapps/plasma/d$5;->c:Lcom/samsungapps/plasma/d;

    iget v2, p0, Lcom/samsungapps/plasma/d$5;->b:I

    invoke-static {v1, v2, v0}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;ILjava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v0, "Selected item is null."

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/d$5;->c:Lcom/samsungapps/plasma/d;

    iget v1, p0, Lcom/samsungapps/plasma/d$5;->b:I

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;II)V

    goto :goto_0
.end method
