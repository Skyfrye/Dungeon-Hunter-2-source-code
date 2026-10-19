.class final enum Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

.field public static final enum b:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

.field public static final enum c:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

.field public static final enum d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

.field public static final enum e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

.field public static final enum f:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

.field private static final synthetic g:[Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const-string v1, "GET_AUONE_TOKEN"

    invoke-direct {v0, v1, v3}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->a:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    new-instance v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const-string v1, "GET_AU_TOKEN"

    invoke-direct {v0, v1, v4}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->b:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    new-instance v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const-string v1, "GET_AUONE_OTHER"

    invoke-direct {v0, v1, v5}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->c:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    new-instance v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const-string v1, "GET_AU_OTHER"

    invoke-direct {v0, v1, v6}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    new-instance v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const-string v1, "GET_OPEN_ID"

    invoke-direct {v0, v1, v7}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    new-instance v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const-string v1, "GET_EZNO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->f:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->a:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->b:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->c:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->f:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->g:[Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;
    .locals 1

    const-class v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    return-object v0
.end method

.method public static values()[Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->g:[Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    array-length v1, v0

    new-array v2, v1, [Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
