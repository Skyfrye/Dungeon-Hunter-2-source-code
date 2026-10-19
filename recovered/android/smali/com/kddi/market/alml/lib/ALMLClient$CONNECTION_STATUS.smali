.class public final enum Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

.field public static final enum b:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

.field public static final enum c:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

.field private static final synthetic d:[Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    const-string v1, "DISCONNECT"

    invoke-direct {v0, v1, v2}, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    new-instance v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->b:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    new-instance v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->c:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    sget-object v1, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->a:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->b:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->c:Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->d:[Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;
    .locals 1

    const-class v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;->d:[Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    array-length v1, v0

    new-array v2, v1, [Lcom/kddi/market/alml/lib/ALMLClient$CONNECTION_STATUS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
