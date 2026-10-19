.class final Lcom/samsungapps/plasma/CreditCardPaymentMethod;
.super Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;


# static fields
.field protected static final c:I = 0x6671

.field protected static final d:I = 0x6672

.field protected static final e:I = 0x8b6

.field protected static final f:I = 0x1771

.field protected static final g:I = 0x177e

.field protected static final h:I = 0x23f4

.field protected static final i:I = 0x23f5

.field protected static final j:I = 0x23fa


# instance fields
.field protected a:Landroid/widget/ArrayAdapter;

.field protected b:Landroid/app/Dialog;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->a:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->b:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->r:Ljava/lang/String;

    const/16 v0, 0x1771

    iput v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->M:I

    return-void
.end method

.method static synthetic a(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->r:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "IDS_SAPPS_BODY_CREDIT_CARD"

    invoke-static {v0}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(IIILjava/lang/String;)V
    .locals 3

    sparse-switch p3, :sswitch_data_0

    const/16 v0, 0x1388

    if-lt p3, v0, :cond_0

    const/16 v0, 0x1770

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_POP_CREDIT_CARD_NOT_RECOGNISED_PLEASE_CHECK_ENTERED_CARD_DETAILS_OR_USE_ANOTHER_ONE"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->a(I)Z

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_HEADER_REGISTER_CREDIT_CARD"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsungapps/plasma/d;->a(Ljava/lang/String;Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->k:Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->a(IIILjava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x23f4 -> :sswitch_0
        0x23f5 -> :sswitch_0
        0x23fa -> :sswitch_0
    .end sparse-switch
.end method

.method protected final a(ILcom/samsungapps/plasma/m;)V
    .locals 5

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->d()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->a(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1, p2}, Lcom/samsungapps/plasma/d;->b(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->a:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_2

    new-instance v4, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;

    invoke-direct {v4, p0}, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;-><init>(Lcom/samsungapps/plasma/CreditCardPaymentMethod;)V

    const-string v0, "cardCompany"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;->setCardName(Ljava/lang/String;)V

    const-string v0, "cardCompanyCode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;->setCardType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    const-string v1, "IDS_SAPPS_POP_YOUR_CREDIT_CARD_INFORMATION_HAS_BEEN_SUCCESSFULLY_UPDATED"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->k:Landroid/app/Dialog;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8b6 -> :sswitch_1
        0x1771 -> :sswitch_0
        0x177e -> :sswitch_2
    .end sparse-switch
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/16 v4, 0xa

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->D:Ljava/lang/String;

    const-string v1, "UKR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v7, v7, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "IDS_SAPPS_BODY_CREDIT_CARD"

    invoke-static {v4}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v4, "IDS_SAPPS_BODY_SECURITY_CODE"

    invoke-static {v4}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v4, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v4, v5, v5}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-array v4, v5, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "IDS_SAPPS_SK3_PURCHASE"

    invoke-static {v4}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/samsungapps/plasma/CreditCardPaymentMethod$3;-><init>(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/samsungapps/plasma/CreditCardPaymentMethod$4;

    invoke-direct {v2, p0, v1, v3}, Lcom/samsungapps/plasma/CreditCardPaymentMethod$4;-><init>(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v2, "IDS_SAPPS_HEADER_PAYMENT_INFORMATION"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsungapps/plasma/d;->a(Ljava/lang/String;Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->b:Landroid/app/Dialog;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->p:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->r()Z

    goto :goto_0
.end method

.method protected final a(I)Z
    .locals 3

    new-instance v0, Lcom/samsungapps/plasma/l;

    invoke-direct {v0}, Lcom/samsungapps/plasma/l;-><init>()V

    const/16 v1, 0x8b6

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v1, "searchCard"

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p0, v2}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method protected final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/d;->c()Lcom/samsungapps/plasma/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->s()V

    new-instance v1, Lcom/samsungapps/plasma/l;

    invoke-direct {v1}, Lcom/samsungapps/plasma/l;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->a(Z)V

    const/16 v2, 0x1771

    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v2, "easybuyPurchaseItem"

    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "itemId"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "guid"

    iget-object v4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->I:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "imei"

    invoke-virtual {v0}, Lcom/samsungapps/plasma/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "loginID"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    invoke-virtual {v2, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transID"

    iget-object v3, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->L:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultCode"

    iget-object v3, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v3}, Lcom/samsungapps/plasma/d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "cvs"

    invoke-virtual {v2, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method protected final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/samsungapps/plasma/l;

    invoke-direct {v0}, Lcom/samsungapps/plasma/l;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Z)V

    const/16 v1, 0x177e

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v1, "registerCreditCardWithLoginInformation"

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "emailID"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "password"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cardType"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cardNum"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "expirationYear"

    invoke-virtual {v1, v2, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "expirationMonth"

    invoke-virtual {v1, v2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cvs"

    invoke-virtual {v1, v2, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p0, v2}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method protected final b()Landroid/view/View;
    .locals 14

    const/4 v13, -0x1

    const/4 v12, -0x2

    const/4 v10, 0x1

    const/16 v8, 0xa

    const/4 v11, 0x0

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v13, v12, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v13, v12, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v11, v11, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "IDS_SAPPS_BODY_CREDIT_CARD"

    invoke-static {v3}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    const v6, 0x1090008

    invoke-direct {v4, v5, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "IDS_SAPPS_BODY_WAITING_ING"

    invoke-static {v5}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v5, v13, v12}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v7, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->a:Landroid/widget/ArrayAdapter;

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v4, "IDS_SAPPS_BODY_CARD_NUMBER"

    invoke-static {v4}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    new-array v4, v10, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v11

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v7, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v6, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v4, "IDS_SAPPS_BODY_SECURITY_CODE"

    invoke-static {v4}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v4, 0x81

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v4, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v4, v10, v10}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-array v4, v10, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v8, 0x4

    invoke-direct {v5, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v11

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v7, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x6671

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "IDS_SAPPS_BODY_EXPIRY_DATE"

    invoke-static {v4}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IDS_SAPPS_BODY_MONTH"

    invoke-static {v8}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (MM)"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    new-array v5, v10, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v5, v11

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x6671

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setId(I)V

    const/16 v5, 0x6672

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    new-instance v5, Landroid/widget/EditText;

    iget-object v8, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IDS_SAPPS_HEADER_YEAR"

    invoke-static {v9}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (YYYY)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setInputType(I)V

    new-array v8, v10, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v8, v11

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x6672

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setId(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v0, "IDS_SAPPS_SK3_REGISTER"

    invoke-static {v0}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v0, v13, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsungapps/plasma/CreditCardPaymentMethod$1;-><init>(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;

    move-object v1, p0

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Lcom/samsungapps/plasma/CreditCardPaymentMethod$2;-><init>(Lcom/samsungapps/plasma/CreditCardPaymentMethod;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v7
.end method

.method final c()Z
    .locals 6

    iget v1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->F:I

    iget-object v2, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->G:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->r:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsungapps/plasma/CreditCardPaymentMethod;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
