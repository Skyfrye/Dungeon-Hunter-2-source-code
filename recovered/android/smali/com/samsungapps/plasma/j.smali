.class abstract Lcom/samsungapps/plasma/j;
.super Ljava/lang/Object;


# static fields
.field static final A:Ljava/lang/String; = "cardNum"

.field static final B:Ljava/lang/String; = "expirationYear"

.field static final C:Ljava/lang/String; = "expirationMonth"

.field static final D:Ljava/lang/String; = "countryURL"

.field static final E:Ljava/lang/String; = "countryCode"

.field static final F:Ljava/lang/String; = "currencyUnitPrecedes"

.field static final G:Ljava/lang/String; = "currencyUnitHasPenny"

.field static final H:Ljava/lang/String; = "paymentMethod"

.field static final I:Ljava/lang/String; = "Company"

.field static final J:Ljava/lang/String; = "itemPrice"

.field static final K:Ljava/lang/String; = "currencyUnit"

.field static final L:Ljava/lang/String; = "paymentTypeId"

.field static final M:Ljava/lang/String; = "paymentID"

.field static final N:Ljava/lang/String; = "orderID"

.field static final O:Ljava/lang/String; = "lastReqYn"

.field static final P:Ljava/lang/String; = "result"

.field static final d:Ljava/lang/String; = "itemID"

.field static final e:Ljava/lang/String; = "itemGroupID"

.field static final f:Ljava/lang/String; = "guid"

.field static final g:Ljava/lang/String; = "imei"

.field static final h:Ljava/lang/String; = "mcc"

.field static final i:Ljava/lang/String; = "mnc"

.field static final j:Ljava/lang/String; = "cvs"

.field static final k:Ljava/lang/String; = "latestCountryCode"

.field static final l:Ljava/lang/String; = "whoAmI"

.field static final m:Ljava/lang/String; = "startNum"

.field static final n:Ljava/lang/String; = "endNum"

.field static final o:Ljava/lang/String; = "mode"

.field static final p:Ljava/lang/String; = "resultCode"

.field static final q:Ljava/lang/String; = "transID"

.field static final r:Ljava/lang/String; = "reserved01"

.field static final s:Ljava/lang/String; = "reserved02"

.field static final t:Ljava/lang/String; = "reserved03"

.field static final u:Ljava/lang/String; = "reserved04"

.field static final v:Ljava/lang/String; = "reserved05"

.field static final w:Ljava/lang/String; = "loginID"

.field static final x:Ljava/lang/String; = "emailID"

.field static final y:Ljava/lang/String; = "password"

.field static final z:Ljava/lang/String; = "cardType"


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsungapps/plasma/j;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsungapps/plasma/j;->b:Ljava/lang/String;

    iput v1, p0, Lcom/samsungapps/plasma/j;->c:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/j;->a:I

    return v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/j;->a:I

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/j;->b:Ljava/lang/String;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/j;->c:I

    return-void
.end method

.method c()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/j;->c:I

    return v0
.end method
