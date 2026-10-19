.class public Lcom/samsungapps/plasma/PurchasedItemInformation;
.super Lcom/samsungapps/plasma/ItemInformation;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsungapps/plasma/ItemInformation;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/PurchasedItemInformation;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/PurchasedItemInformation;->b:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getPaymentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PurchasedItemInformation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PurchasedItemInformation;->b:Ljava/util/Date;

    return-object v0
.end method

.method public setPaymentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PurchasedItemInformation;->a:Ljava/lang/String;

    return-void
.end method

.method public setPurchaseDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PurchasedItemInformation;->b:Ljava/util/Date;

    return-void
.end method
