.class Lcom/samsungapps/plasma/d$4;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/samsungapps/plasma/d;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$4;->a:Lcom/samsungapps/plasma/d;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 9

    const v8, 0x1030044

    const/16 v7, 0xf

    const/4 v6, -0x2

    const/16 v5, 0xa

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsungapps/plasma/d$4;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsungapps/plasma/d$4;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/samsungapps/plasma/d$4;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsungapps/plasma/d$4;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/samsungapps/plasma/d$4;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5, v7, v5, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Lcom/samsungapps/plasma/d$4$a;

    invoke-direct {v3, p0}, Lcom/samsungapps/plasma/d$4$a;-><init>(Lcom/samsungapps/plasma/d$4;)V

    invoke-static {v3, v1}, Lcom/samsungapps/plasma/d$4$a;->a(Lcom/samsungapps/plasma/d$4$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/samsungapps/plasma/d$4$a;->b(Lcom/samsungapps/plasma/d$4$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/samsungapps/plasma/d$4;->a()Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/d$4$a;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsungapps/plasma/d$4;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsungapps/plasma/ItemInformation;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/samsungapps/plasma/d$4$a;->a(Lcom/samsungapps/plasma/d$4$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsungapps/plasma/ItemInformation;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/samsungapps/plasma/d$4$a;->b(Lcom/samsungapps/plasma/d$4$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsungapps/plasma/ItemInformation;->getItemPrice()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/samsungapps/plasma/ItemInformation;->getCurrencyUnit()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsungapps/plasma/d$4;->a:Lcom/samsungapps/plasma/d;

    invoke-static {v4}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;)Z

    move-result v4

    iget-object v5, p0, Lcom/samsungapps/plasma/d$4;->a:Lcom/samsungapps/plasma/d;

    invoke-static {v5}, Lcom/samsungapps/plasma/d;->b(Lcom/samsungapps/plasma/d;)Z

    move-result v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/samsungapps/plasma/i;->a(DLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
