.class public Lcom/samsungapps/plasma/ItemInformation;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:D

.field private g:Ljava/net/URL;

.field private h:Ljava/net/URL;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsungapps/plasma/ItemInformation;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/ItemInformation;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/ItemInformation;->c:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsungapps/plasma/ItemInformation;->d:Z

    iput-boolean v0, p0, Lcom/samsungapps/plasma/ItemInformation;->e:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/samsungapps/plasma/ItemInformation;->f:D

    iput-object v2, p0, Lcom/samsungapps/plasma/ItemInformation;->g:Ljava/net/URL;

    iput-object v2, p0, Lcom/samsungapps/plasma/ItemInformation;->h:Ljava/net/URL;

    iput-object v2, p0, Lcom/samsungapps/plasma/ItemInformation;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/ItemInformation;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/ItemInformation;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsungapps/plasma/ItemInformation;->l:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/ItemInformation;->l:I

    return v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/ItemInformation;->l:I

    return-void
.end method

.method public getCurrencyUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/ItemInformation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyUnitHasPenny()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsungapps/plasma/ItemInformation;->e:Z

    return v0
.end method

.method public getCurrencyUnitPrecedes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsungapps/plasma/ItemInformation;->d:Z

    return v0
.end method

.method public getItemDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/ItemInformation;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getItemDownloadUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/ItemInformation;->g:Ljava/net/URL;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/ItemInformation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getItemImageUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/ItemInformation;->h:Ljava/net/URL;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/ItemInformation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/samsungapps/plasma/ItemInformation;->f:D

    return-wide v0
.end method

.method public getReserved1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/ItemInformation;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getReserved2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/ItemInformation;->k:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrencyUnit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/ItemInformation;->c:Ljava/lang/String;

    return-void
.end method

.method public setCurrencyUnitHasPenny(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsungapps/plasma/ItemInformation;->e:Z

    return-void
.end method

.method public setCurrencyUnitPrecedes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsungapps/plasma/ItemInformation;->d:Z

    return-void
.end method

.method public setItemDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/ItemInformation;->i:Ljava/lang/String;

    return-void
.end method

.method public setItemDownloadUrl(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/ItemInformation;->g:Ljava/net/URL;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/ItemInformation;->a:Ljava/lang/String;

    return-void
.end method

.method public setItemImageUrl(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/ItemInformation;->h:Ljava/net/URL;

    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/ItemInformation;->b:Ljava/lang/String;

    return-void
.end method

.method public setItemPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsungapps/plasma/ItemInformation;->f:D

    return-void
.end method

.method public setReserved1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/ItemInformation;->j:Ljava/lang/String;

    return-void
.end method

.method public setReserved2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/ItemInformation;->k:Ljava/lang/String;

    return-void
.end method
