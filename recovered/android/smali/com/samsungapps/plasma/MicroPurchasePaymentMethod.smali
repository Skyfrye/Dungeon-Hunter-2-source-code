.class final Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;
.super Lcom/samsungapps/plasma/g;


# static fields
.field protected static final f:Ljava/lang/String; = "+82"

.field protected static final g:Ljava/lang/String; = "SKT"

.field protected static final h:Ljava/lang/String; = "LGT"

.field protected static final i:Ljava/lang/String; = "KT"

.field protected static final j:I = 0x6661

.field protected static final k:I = 0x6662

.field protected static final l:I = 0x177c

.field protected static final m:I = 0x177d

.field protected static final n:I = 0x16a8

.field protected static final o:I = 0x16a9

.field protected static final p:I = 0x16aa

.field protected static final q:I = 0x16ab

.field protected static final r:I = 0x16ac

.field protected static final s:I = 0x16ad


# instance fields
.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Z

.field private Z:Z

.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Z


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsungapps/plasma/g;-><init>()V

    iput-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->U:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->V:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->W:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->X:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->Y:Z

    iput-boolean v2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->Z:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->a:I

    iput-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->d:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->e:Z

    const/16 v0, 0x177c

    iput v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->M:I

    return-void
.end method

.method static synthetic a(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->U:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->Y:Z

    return p1
.end method

.method static synthetic b(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->V:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->Z:Z

    return p1
.end method

.method static synthetic c(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->W:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->X:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "IDS_SAPPS_HEADER_PHONE_BILL"

    invoke-static {v0}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(IIILjava/lang/String;)V
    .locals 5

    packed-switch p3, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsungapps/plasma/g;->a(IIILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p3, p4}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_POP_SERVICE_PROVIDER_SELECTION_ERROR_OCCURRED"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_POP_INVALID_RESIDENT_REGISTRATION_NUMBER"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_POP_INCORRECT_VERIFICATION_CODE"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_POP_TRANSACTION_CANCELLED_TIMED_OUT"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_BODY_PROHIBITED_FOR_AGES_UNDER_PD"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x16a8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/samsungapps/plasma/g;->a(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1, p2}, Lcom/samsungapps/plasma/d;->b(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const/4 v1, 0x0

    const-string v2, "IDS_SAPPS_POP_VERIFICATION_CODE_HAS_BEEN_SENT_CHECK_SMS_AND_ENTER_VERIFICATION_CODE"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x177c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 8

    if-eqz p8, :cond_0

    const-string v0, "U"

    :goto_0
    const-string v4, "01"

    if-eqz p7, :cond_1

    const/16 v2, 0x177c

    const-string v1, "microPurchase"

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_1
    iget-object v5, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v5}, Lcom/samsungapps/plasma/d;->c()Lcom/samsungapps/plasma/b;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->s()V

    new-instance v6, Lcom/samsungapps/plasma/l;

    invoke-direct {v6}, Lcom/samsungapps/plasma/l;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsungapps/plasma/l;->a(Z)V

    invoke-virtual {v6, v3}, Lcom/samsungapps/plasma/l;->b(I)V

    invoke-virtual {v6, v2}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "itemID"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "itemGroupID"

    iget-object v7, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->I:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "imei"

    invoke-virtual {v5}, Lcom/samsungapps/plasma/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mcc"

    invoke-virtual {v5}, Lcom/samsungapps/plasma/b;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mnc"

    invoke-virtual {v5}, Lcom/samsungapps/plasma/b;->c()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "authNID"

    invoke-virtual {v2, v3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "authPNum"

    invoke-virtual {v2, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "usimCD"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "agreeCD"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "carrier"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "typeCD"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "otp"

    invoke-virtual {v2, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "udid"

    invoke-virtual {v5}, Lcom/samsungapps/plasma/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transID"

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->L:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mode"

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v1}, Lcom/samsungapps/plasma/d;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v6, p0, v1}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "K"

    goto/16 :goto_0

    :cond_1
    const-string v1, "A"

    const/16 v3, 0x177d

    const-string v2, "microPurchaseAuthCode"

    goto/16 :goto_1
.end method

.method protected final a_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final c()Z
    .locals 9

    iget v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->F:I

    iget-object v2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->G:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->U:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->V:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->W:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->X:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->Y:Z

    iget-boolean v8, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->Z:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method final d()Landroid/view/View;
    .locals 36

    new-instance v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v9, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "IDS_SAPPS_BODY_ENTER_PHONE_NUMBER_CHARGES_WILL_BE_ADDED_TO_YOUR_PHONE_BILL_NEXT_MONTH"

    invoke-static {v3}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    const v4, 0x1010040

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "IDS_SAPPS_BODY_MOBILE_PHONE"

    invoke-static {v3}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v4, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    const v5, 0x1090008

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v10, "SKT"

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const-string v10, "KT"

    aput-object v10, v6, v7

    const/4 v7, 0x2

    const-string v10, "LGT"

    aput-object v10, v6, v7

    invoke-direct {v2, v3, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v7, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v2, "IDS_SAPPS_BODY_PHONE_NUMBER"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x6661

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    new-instance v27, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "IDS_SAPPS_BODY_RESIDENT_REGISTRATION_NUMBER"

    invoke-static {v3}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v5, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    const/4 v11, 0x6

    invoke-direct {v10, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v3, v6

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x6661

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setId(I)V

    const/16 v3, 0x6662

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "-"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v6, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x81

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    const/4 v12, 0x7

    invoke-direct {v11, v12}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v3, v10

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v3, Landroid/text/method/DigitsKeyListener;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {v3, v10, v11}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v3, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x6662

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setId(I)V

    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "IDS_SAPPS_MBODY_VERIFICATION_CODE"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v31, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v26, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "IDS_SAPPS_BODY_REQUEST"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;-><init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v16, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v10, -0x2

    invoke-direct {v2, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "IDS_SAPPS_HEADER_TERMS_AND_CONDITIONS"

    invoke-static {v3}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$2;-><init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v2, "IDS_SAPPS_BODY_I_HAVE_READ_AND_ACCEPT_THE_TERMS_AND_CONDITIONS"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v3}, Lcom/samsungapps/plasma/d;->c()Lcom/samsungapps/plasma/b;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/samsungapps/plasma/b;->f()Ljava/lang/String;

    move-result-object v2

    const-string v9, "+82"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "+82"

    const-string v10, "0"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v3}, Lcom/samsungapps/plasma/b;->c()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v12, ""

    const-string v2, ""

    move-object v10, v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$3;-><init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Landroid/widget/EditText;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v21, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "IDS_SAPPS_SK3_PURCHASE"

    invoke-static {v3}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;

    move-object/from16 v9, p0

    move-object v11, v7

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    invoke-direct/range {v8 .. v16}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;-><init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v17, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;

    move-object/from16 v18, p0

    move-object/from16 v19, v10

    move-object/from16 v20, v7

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v16

    move-object/from16 v29, v4

    invoke-direct/range {v17 .. v31}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$5;-><init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    new-instance v26, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;

    move-object/from16 v27, p0

    move-object/from16 v28, v10

    move-object/from16 v29, v7

    move-object/from16 v30, v21

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v16

    move-object/from16 v34, v25

    invoke-direct/range {v26 .. v34}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$6;-><init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v2}, Lcom/samsungapps/plasma/d;->b()Ljava/util/Date;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    if-eqz v2, :cond_5

    invoke-virtual {v3, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->a:I

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->a:I

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->b:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->d:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->e:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->e:Z

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    return-object v35

    :pswitch_1
    const-string v12, "SKT"

    move-object v10, v2

    goto/16 :goto_0

    :pswitch_2
    const-string v12, "LGT"

    move-object v10, v2

    goto/16 :goto_0

    :pswitch_3
    const-string v12, "KT"

    move-object v10, v2

    goto/16 :goto_0

    :cond_6
    move-object v10, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
