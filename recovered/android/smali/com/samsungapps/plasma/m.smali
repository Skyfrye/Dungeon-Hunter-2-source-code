.class final Lcom/samsungapps/plasma/m;
.super Lcom/samsungapps/plasma/j;


# instance fields
.field protected Q:Ljava/util/ArrayList;

.field protected R:I

.field protected S:I

.field protected T:I

.field protected U:I

.field protected V:I

.field protected W:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/samsungapps/plasma/j;-><init>()V

    iput-object v1, p0, Lcom/samsungapps/plasma/m;->Q:Ljava/util/ArrayList;

    iput v0, p0, Lcom/samsungapps/plasma/m;->R:I

    iput v0, p0, Lcom/samsungapps/plasma/m;->S:I

    iput v0, p0, Lcom/samsungapps/plasma/m;->T:I

    iput v0, p0, Lcom/samsungapps/plasma/m;->U:I

    iput v0, p0, Lcom/samsungapps/plasma/m;->V:I

    iput-object v1, p0, Lcom/samsungapps/plasma/m;->W:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/m;->Q:Ljava/util/ArrayList;

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/m;->W:Ljava/lang/String;

    return-void
.end method

.method final c(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/m;->R:I

    return-void
.end method

.method final d()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/m;->Q:Ljava/util/ArrayList;

    return-object v0
.end method

.method final d(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/m;->S:I

    return-void
.end method

.method final e()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/m;->R:I

    return v0
.end method

.method final e(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/m;->T:I

    return-void
.end method

.method final f()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/m;->S:I

    return v0
.end method

.method final f(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/m;->U:I

    return-void
.end method

.method final g()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/m;->T:I

    return v0
.end method

.method final g(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/m;->V:I

    return-void
.end method

.method final h()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/m;->U:I

    return v0
.end method

.method final i()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/m;->V:I

    return v0
.end method

.method final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/m;->W:Ljava/lang/String;

    return-object v0
.end method
