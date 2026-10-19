.class public Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field final synthetic c:Lcom/samsungapps/plasma/CreditCardPaymentMethod;


# direct methods
.method protected constructor <init>(Lcom/samsungapps/plasma/CreditCardPaymentMethod;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;->c:Lcom/samsungapps/plasma/CreditCardPaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setCardName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;->a:Ljava/lang/String;

    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsungapps/plasma/CreditCardPaymentMethod$CreditCardType;->getCardName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
