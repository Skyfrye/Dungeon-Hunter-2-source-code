.class Lcom/samsungapps/plasma/d$11;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/samsungapps/plasma/d;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$11;->b:Lcom/samsungapps/plasma/d;

    iput-object p2, p0, Lcom/samsungapps/plasma/d$11;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/d$11;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsungapps/plasma/g;->d()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsungapps/plasma/d$11;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/g;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsungapps/plasma/g;->a_()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/d$11;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/d$11;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/16 v4, 0xa

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/samsungapps/plasma/d$11;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/g;

    if-eqz v0, :cond_0

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsungapps/plasma/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x13

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
