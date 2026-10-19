.class final Lcom/samsungapps/plasma/PSMSPaymentMethod$a;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x5

.field static final b:I = 0x5


# instance fields
.field final synthetic c:Lcom/samsungapps/plasma/PSMSPaymentMethod;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method private constructor <init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V
    .locals 1

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->c:Lcom/samsungapps/plasma/PSMSPaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->l:I

    iput v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->m:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;Lcom/samsungapps/plasma/PSMSPaymentMethod$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;-><init>(Lcom/samsungapps/plasma/PSMSPaymentMethod;)V

    return-void
.end method

.method static synthetic a(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;Ljava/util/HashMap;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->a(Ljava/util/HashMap;Z)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;Z)Z
    .locals 6

    const/4 v5, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "paymentID"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "orderID"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "shortCode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "message"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, ";"

    invoke-static {v0, v4}, Lcom/samsungapps/plasma/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->f:Ljava/util/ArrayList;

    const-string v0, ";"

    invoke-static {v1, v0}, Lcom/samsungapps/plasma/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->g:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    const-string v0, "randomKey"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->h:Ljava/lang/String;

    const-string v0, "confirmMsg"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->i:Ljava/lang/String;

    const-string v0, "tncMsg"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->j:Ljava/lang/String;

    const-string v0, "sendSMS"

    invoke-static {v0}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->k:Z

    :cond_1
    const-string v0, "retryCount"

    invoke-static {v0}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->l:I

    iget v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->l:I

    if-gez v0, :cond_2

    iput v5, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->l:I

    :cond_2
    const-string v0, "responseTime"

    invoke-static {v0}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->m:I

    iget v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->m:I

    if-gez v0, :cond_3

    iput v5, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->m:I

    :cond_3
    move v0, v3

    :goto_0
    return v0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->l:I

    return v0
.end method

.method static synthetic f(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)I
    .locals 2

    iget v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->l:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->l:I

    return v0
.end method

.method static synthetic h(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->m:I

    return v0
.end method

.method static synthetic j(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->k:Z

    return v0
.end method

.method static synthetic l(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcom/samsungapps/plasma/PSMSPaymentMethod$a;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PSMSPaymentMethod$a;->g:Ljava/util/ArrayList;

    return-object v0
.end method
