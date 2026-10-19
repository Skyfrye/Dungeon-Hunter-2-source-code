.class final enum Lcom/samsungapps/plasma/PSMSPaymentMethod$c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

.field public static final enum b:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

.field public static final enum c:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

.field public static final enum d:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

.field public static final enum e:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

.field public static final enum f:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

.field public static final enum g:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

.field public static final enum h:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

.field public static final enum i:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

.field private static final synthetic j:[Lcom/samsungapps/plasma/PSMSPaymentMethod$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    const-string v1, "INIT_PURCHASE"

    invoke-direct {v0, v1, v4}, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->b:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    const-string v1, "WAIT_CONFIRM_TNC"

    invoke-direct {v0, v1, v5}, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->c:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    const-string v1, "WAIT_CONFIRM_PAYMENTINFORMATION"

    invoke-direct {v0, v1, v6}, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->d:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    const-string v1, "WAIT_CONFIRM_RANDOMKEY"

    invoke-direct {v0, v1, v7}, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->e:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    const-string v1, "SEND_SMS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->f:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    const-string v1, "CHECK_MO_DELIVERY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->g:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    const-string v1, "CONFIRM_PURCHASE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->h:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    new-instance v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    const-string v1, "COMPLETED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    sget-object v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->a:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->b:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->c:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->d:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->e:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->f:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->g:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->h:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->i:Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->j:[Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsungapps/plasma/PSMSPaymentMethod$c;
    .locals 1

    const-class v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    return-object v0
.end method

.method public static values()[Lcom/samsungapps/plasma/PSMSPaymentMethod$c;
    .locals 1

    sget-object v0, Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->j:[Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    invoke-virtual {v0}, [Lcom/samsungapps/plasma/PSMSPaymentMethod$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsungapps/plasma/PSMSPaymentMethod$c;

    return-object v0
.end method
