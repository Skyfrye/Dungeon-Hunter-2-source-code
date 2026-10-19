.class Lcom/samsungapps/plasma/d$4$a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/samsungapps/plasma/d$4;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d$4;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$4$a;->a:Lcom/samsungapps/plasma/d$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/d$4$a;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsungapps/plasma/d$4$a;->c:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/samsungapps/plasma/d$4$a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/d$4$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/samsungapps/plasma/d$4$a;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$4$a;->b:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/samsungapps/plasma/d$4$a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/d$4$a;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/samsungapps/plasma/d$4$a;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$4$a;->c:Landroid/widget/TextView;

    return-object p1
.end method
