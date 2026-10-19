.class final Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;
.super Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;


# static fields
.field protected static final b:I = 0x1779

.field protected static final c:I = 0x177f

.field protected static final d:I = 0x23fa

.field protected static final e:I = 0x23fe

.field protected static final f:I = 0x23ff


# instance fields
.field protected a:Landroid/widget/ArrayAdapter;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->a:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->h:Ljava/lang/String;

    const/16 v0, 0x1779

    iput v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->M:I

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "IDS_SAPPS_BUTTON_PREPAID_CARD"

    invoke-static {v0}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(IIILjava/lang/String;)V
    .locals 3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x1388

    if-lt p3, v0, :cond_0

    const/16 v0, 0x1770

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_POP_FAILED_TO_REGISTER_PREPAID_CARD"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_HEADER_PREPAID_CARD_REGISTRATION_ABB"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsungapps/plasma/d;->a(Ljava/lang/String;Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->k:Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->a(IIILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x23fa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(ILcom/samsungapps/plasma/m;)V
    .locals 3

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->a(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1, p2}, Lcom/samsungapps/plasma/d;->b(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    const-string v1, "IDS_SAPPS_BODY_PREPAID_CARD_REGISTERED_PAYMENTS_WILL_AUTOMATICALLY_BE_DEDUCTED_FROM_REGISTERED_CARD"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->k:Landroid/app/Dialog;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1779 -> :sswitch_0
        0x177f -> :sswitch_1
    .end sparse-switch
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->r()Z

    return-void
.end method

.method protected final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/d;->c()Lcom/samsungapps/plasma/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->s()V

    new-instance v1, Lcom/samsungapps/plasma/l;

    invoke-direct {v1}, Lcom/samsungapps/plasma/l;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->a(Z)V

    const/16 v2, 0x1779

    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v2, "appItemPurchasePrepaid"

    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "itemID"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "itemGroupID"

    iget-object v4, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->I:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "imei"

    invoke-virtual {v0}, Lcom/samsungapps/plasma/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "itemPrice"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "paymentTypeId"

    invoke-virtual {v2, v0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "loginID"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    invoke-virtual {v2, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transID"

    iget-object v3, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->L:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mode"

    iget-object v3, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v3}, Lcom/samsungapps/plasma/d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method protected final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/samsungapps/plasma/l;

    invoke-direct {v0}, Lcom/samsungapps/plasma/l;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Z)V

    const/16 v1, 0x177f

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v1, "registerPrepaidCardWithLoginInformation"

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "emailID"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "password"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cardCorpSEQ"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cardValue"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cardNumber"

    invoke-virtual {v1, v2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cardPassword"

    invoke-virtual {v1, v2, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p0, v2}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method protected final b()Landroid/view/View;
    .locals 15

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/16 v7, 0xa

    new-instance v14, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v14, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v12, v12, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "IDS_SAPPS_BODY_NOTE_C_YOU_CAN_ONLY_USE_NATIONAL_PREPAID_CARDS"

    invoke-static {v3}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "IDS_SAPPS_BODY_PREPAID_CARD_TYPE_ABB"

    invoke-static {v3}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    const v6, 0x1090008

    invoke-direct {v4, v5, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "IDS_SAPPS_BODY_WAITING_ING"

    invoke-static {v5}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v5, v11, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v14, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v14, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->a:Landroid/widget/ArrayAdapter;

    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v4, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->E:Ljava/lang/String;

    const-string v5, ";"

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;

    invoke-direct {v4, p0}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;-><init>(Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;)V

    new-instance v5, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const-string v7, "@"

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->setProviderName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :cond_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->setTermsUrl(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->setProviderType(Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "IDS_SAPPS_BODY_PREPAID_CARD_INFORMATION_ABB"

    invoke-static {v4}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IDS_SAPPS_BODY_PREPAID_CARD_FACE_VALUE"

    invoke-static {v5}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v14, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v5, "IDS_SAPPS_BODY_CARD_NUMBER"

    invoke-static {v5}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v14, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v6, "IDS_SAPPS_BODY_SECURITY_CODE"

    invoke-static {v6}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v6, 0x81

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v6, Landroid/text/method/DigitsKeyListener;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-virtual {v14, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v7, "IDS_SAPPS_HEADER_TERMS_AND_CONDITIONS"

    invoke-static {v7}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$1;

    invoke-direct {v7, p0, v2}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$1;-><init>(Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;Landroid/widget/Spinner;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v7, "IDS_SAPPS_BODY_I_HAVE_READ_AND_ACCEPT_THE_TERMS_AND_CONDITIONS"

    invoke-static {v7}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v0, "IDS_SAPPS_SK3_REGISTER"

    invoke-static {v0}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;-><init>(Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$3;

    move-object v1, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$3;-><init>(Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    new-instance v7, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;

    move-object v8, p0

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;-><init>(Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v14
.end method

.method final c()Z
    .locals 8

    iget v1, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->F:I

    iget-object v2, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->G:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->h:Ljava/lang/String;

    iget-wide v5, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->y:D

    iget-object v7, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->C:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Z

    move-result v0

    return v0
.end method
