.class final Lcom/samsungapps/plasma/PSMSPaymentMethod;
.super Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;


# static fields
.field protected static final b:I = 0x1781

.field protected static final c:I = 0x1782

.field protected static final d:I = 0x1783

.field protected static final e:Ljava/lang/String; = "IAPPSMSBilling"

.field protected static final f:Ljava/lang/String; = "IAPPSMSMODeliveryResult"

.field protected static final g:Ljava/lang/String; = "IAPPSMSConfirmSMSPurchaseNS"


# instance fields
.field protected a:Landroid/app/Dialog;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

.field private j:Landroid/app/ProgressDialog;

.field private p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

.field private q:Lcom/samsungapps/plasma/PSMSPaymentMethod$b;

.field private final r:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;-><init>()V

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$7;

    invoke-direct {v0, p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$7;-><init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->h:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->j:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$b;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$b;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->q:Lcom/samsungapps/plasma/PSMSPaymentMethod$b;

    const-string v0, "ACTION_MSG_SENT"

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->r:Ljava/lang/String;

    const/16 v0, 0x1782

    iput v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->M:I

    return-void
.end method

.method static synthetic a(Lcom/samsungapps/plasma/PSMSPaymentMethod;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->j:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/samsungapps/plasma/PSMSPaymentMethod;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->j:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/samsungapps/plasma/PSMSPaymentMethod;Lcom/samsungapps/plasma/PSMSPaymentMethod$b;)Lcom/samsungapps/plasma/PSMSPaymentMethod$b;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->q:Lcom/samsungapps/plasma/PSMSPaymentMethod$b;

    return-object p1
.end method

.method private a(Lcom/samsungapps/plasma/PSMSPaymentMethod$c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    return-void
.end method

.method static synthetic a(Lcom/samsungapps/plasma/PSMSPaymentMethod;Lcom/samsungapps/plasma/PSMSPaymentMethod$c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    return-void
.end method

.method private a(Lcom/samsungapps/plasma/m;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsungapps/plasma/m;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;-><init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;Lcom/samsungapps/plasma/PSMSPaymentMethod$1;)V

    iput-object v2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    iget-object v2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v3}, Lcom/samsungapps/plasma/d;->a()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v0, v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;Ljava/util/HashMap;Z)Z

    move-result v1

    :cond_1
    return v1
.end method

.method static synthetic b(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/d;->c()Lcom/samsungapps/plasma/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->s()V

    new-instance v1, Lcom/samsungapps/plasma/l;

    invoke-direct {v1}, Lcom/samsungapps/plasma/l;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->a(Z)V

    const/16 v2, 0x1781

    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v2, "IAPPSMSBilling"

    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "itemID"

    iget-object v4, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->G:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "itemGroupID"

    iget-object v4, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->I:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "imei"

    invoke-virtual {v0}, Lcom/samsungapps/plasma/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mcc"

    invoke-virtual {v0}, Lcom/samsungapps/plasma/b;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mnc"

    invoke-virtual {v0}, Lcom/samsungapps/plasma/b;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "reserved01"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "reserved02"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "reserved03"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "reserved04"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "reserved05"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "loginID"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transID"

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->L:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mode"

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v3}, Lcom/samsungapps/plasma/d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    iget v2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->F:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p0, v3}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 9

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xa

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    const v5, 0x1030042

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v7, 0xa

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-wide v4, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->y:D

    iget-object v6, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->z:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->A:Z

    iget-boolean v8, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->B:Z

    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsungapps/plasma/i;->a(DLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    const v5, 0x1030044

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v7, 0xa

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x7

    const/4 v5, 0x7

    const/4 v6, 0x7

    const/4 v7, 0x7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v4, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    const v5, 0x103003e

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x7

    const/4 v6, 0x7

    const/4 v7, 0x7

    const/4 v8, 0x7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/samsungapps/plasma/PSMSPaymentMethod$4;

    invoke-direct {v2, p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$4;-><init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method static synthetic c(Lcom/samsungapps/plasma/PSMSPaymentMethod;)Lcom/samsungapps/plasma/PSMSPaymentMethod$a;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    return-object v0
.end method

.method static synthetic d(Lcom/samsungapps/plasma/PSMSPaymentMethod;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->h:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private u()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$8;->a:[I

    iget-object v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    invoke-virtual {v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$2;

    invoke-direct {v1, p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$2;-><init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$3;

    invoke-direct {v1, p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$3;-><init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->m:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->f:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "Terms and conditions"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsungapps/plasma/d;->a(Ljava/lang/String;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "Payment information"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsungapps/plasma/d;->a(Ljava/lang/String;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_BODY_CONFIRM_PASSWORD"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsungapps/plasma/d;->a(Ljava/lang/String;Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$8;->b:[I

    iget-object v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->q:Lcom/samsungapps/plasma/PSMSPaymentMethod$b;

    invoke-virtual {v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->g:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    :goto_1
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/d;->a()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Send fake message on developer mode."

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->j:Landroid/app/ProgressDialog;

    :cond_3
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "IDS_SAPPS_BODY_WAITING_ING"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->j:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$1;

    invoke-direct {v0, p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$1;-><init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->d:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$b;->c:Lcom/samsungapps/plasma/PSMSPaymentMethod$b;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->q:Lcom/samsungapps/plasma/PSMSPaymentMethod$b;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const/16 v1, 0x2328

    const-string v2, "IDS_SAPPS_POP_FAILED_TO_SEND_MESSAGE"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->h:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    goto/16 :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->w()Z

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method private v()Z
    .locals 4

    new-instance v0, Lcom/samsungapps/plasma/l;

    invoke-direct {v0}, Lcom/samsungapps/plasma/l;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Z)V

    const/16 v1, 0x1782

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v1, "IAPPSMSMODeliveryResult"

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "paymentID"

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v3}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->f(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "result"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    iget v2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->F:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method private w()Z
    .locals 6

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->g(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Retry count left "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->e(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/samsungapps/plasma/l;

    invoke-direct {v2}, Lcom/samsungapps/plasma/l;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/l;->a(Z)V

    const/16 v0, 0x1783

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v0, "IAPPSMSConfirmSMSPurchaseNS"

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "orderID"

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v3}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->h(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "paymentID"

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v3}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->f(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->e(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "lastReqYn"

    const-string v3, "Y"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    iget v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->F:I

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v3}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->i(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)I

    move-result v3

    mul-int/lit16 v5, v3, 0x3e8

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;ZI)Z

    move-result v0

    return v0

    :cond_0
    const-string v1, "lastReqYn"

    const-string v3, "N"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private x()Landroid/view/View;
    .locals 15

    const/4 v14, -0x1

    const/4 v13, -0x2

    const/16 v4, 0xa

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v11, v11, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v4, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v0, "IDS_SAPPS_BODY_PASSWORD"

    invoke-static {v0}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v0, 0x81

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v0, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v0, v12, v12}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-array v0, v12, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v11

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v5}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->j(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->A:Z

    if-eqz v0, :cond_0

    const-string v0, "%.2f"

    :goto_0
    new-array v5, v12, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->y:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    const v9, 0x1030044

    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const-string v8, "IDS_SAPPS_BODY_ENTER_NUMBERS_ABOVE_TO_BUY"

    invoke-static {v8}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v8, "IDS_SAPPS_BODY_PS_APPLICATION_IS_PS_TL"

    invoke-static {v8}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    const v10, 0x1030044

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->x:Ljava/lang/String;

    aput-object v10, v9, v11

    aput-object v0, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    const v8, 0x1030044

    invoke-virtual {v7, v0, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const-string v0, "IDS_SAPPS_BODY_NOT_ENOUGTH_BALANCE_AND_NOTIFICATION_MSG_BASARI"

    invoke-static {v0}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x14

    const/16 v5, 0x28

    invoke-virtual {v0, v11, v3, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "IDS_SAPPS_SK3_CONFIRM"

    invoke-static {v3}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$5;

    invoke-direct {v0, p0, v4}, Lcom/samsungapps/plasma/PSMSPaymentMethod$5;-><init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;Landroid/widget/EditText;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$6;

    invoke-direct {v0, p0, v2, v4}, Lcom/samsungapps/plasma/PSMSPaymentMethod$6;-><init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v1

    :cond_0
    const-string v0, "%.0f"

    goto/16 :goto_0
.end method

.method private y()Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v0, "Send to SMS..."

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->k(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/d;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->q:Lcom/samsungapps/plasma/PSMSPaymentMethod$b;

    sget-object v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$b;->c:Lcom/samsungapps/plasma/PSMSPaymentMethod$b;

    if-ne v0, v1, :cond_3

    move v0, v6

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->l(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v2}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->m(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "ACTION_MSG_SENT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v2, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->h:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "ACTION_MSG_SENT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->j:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->j:Landroid/app/ProgressDialog;

    :cond_2
    iget-object v2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u:Landroid/content/Context;

    const-string v5, ""

    const-string v8, "IDS_SAPPS_BODY_WAITING_ING"

    invoke-static {v8}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v2, v5, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->j:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v6

    :goto_2
    move v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V

    move v0, v7

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V

    move v0, v7

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V

    move v0, v7

    goto :goto_2

    :cond_3
    move v0, v7

    goto/16 :goto_1
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "IDS_SAPPS_HEADER_PHONE_BILL"

    invoke-static {v0}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(II)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    invoke-super {p0, p1, p2}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->a(II)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1783
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(IIILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->a(IIILjava/lang/String;)V

    return-void
.end method

.method protected final a(ILcom/samsungapps/plasma/m;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x2328

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, v3, v4}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    invoke-direct {p0, v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod$c;)V

    invoke-super {p0, p1, p2}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->a(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a(Lcom/samsungapps/plasma/m;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->c(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->c:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$b;->b:Lcom/samsungapps/plasma/PSMSPaymentMethod$b;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->q:Lcom/samsungapps/plasma/PSMSPaymentMethod$b;

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->d(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->e:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    goto :goto_1

    :cond_3
    const-string v0, "PSMS cannot initialized"

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, v3, v4}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "successYn"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSuccessPurchase = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1, p2}, Lcom/samsungapps/plasma/d;->b(ILcom/samsungapps/plasma/m;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->e(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)I

    move-result v0

    if-gtz v0, :cond_6

    move v0, v1

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->h:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    invoke-direct {p0, v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod$c;)V

    invoke-direct {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u()V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1781
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->r()Z

    return-void
.end method

.method protected final b()Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$8;->a:[I

    iget-object v2, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    invoke-virtual {v2}, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->x()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->a(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IDS_SAPPS_SK3_AGREE"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$a;

    invoke-static {v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->b(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IDS_SAPPS_SK3_PURCHASE"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final c()Z
    .locals 2

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->b:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    invoke-direct {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod;->u()V

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod;->p:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    sget-object v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
