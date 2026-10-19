.class public Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encoder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Blob2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v0, 0x8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v1, 0x1

    new-array v6, v5, [B

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    aput-byte v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    move v3, v2

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    aget-byte v7, v4, v3

    invoke-static {v7}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encoder;->SSEncDec_GetKeyFromChar(B)B

    move-result v7

    aget-byte v8, v6, v1

    rsub-int/lit8 v9, v0, 0x8

    shl-int v9, v7, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v1

    const/4 v8, 0x6

    if-le v0, v8, :cond_3

    add-int/lit8 v0, v0, -0x6

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v5, -0x2

    if-ge v1, v8, :cond_2

    add-int/lit8 v1, v1, 0x1

    aget-byte v8, v6, v1

    shr-int/2addr v7, v0

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v2, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static SSEncDec_GetCharFromKeyByIndex(B)B
    .locals 2

    const/16 v1, 0x3e

    const/16 v0, 0x1a

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x61

    int-to-byte v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x34

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, 0x27

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    if-ge p0, v1, :cond_2

    add-int/lit8 v0, p0, -0x4

    int-to-byte v0, v0

    goto :goto_0

    :cond_2
    if-ne p0, v1, :cond_3

    const/16 v0, 0x5f

    goto :goto_0

    :cond_3
    const/16 v0, 0x2d

    goto :goto_0
.end method

.method private static SSEncDec_GetKeyFromChar(B)B
    .locals 1

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_0

    const/16 v0, 0x3f

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_1

    const/16 v0, 0x3e

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a

    if-ge p0, v0, :cond_2

    add-int/lit8 v0, p0, 0x4

    int-to-byte v0, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x5b

    if-ge p0, v0, :cond_3

    add-int/lit8 v0, p0, -0x27

    int-to-byte v0, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p0, -0x61

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public static String2Blob(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/16 v1, 0x8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    rem-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x2

    :goto_0
    new-array v7, v0, [B

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_4

    aput-byte v2, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    aget-byte v4, v6, v1

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    rsub-int/lit8 v5, v0, 0x8

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    const/4 v5, 0x6

    if-ge v0, v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v5, v1, :cond_3

    aget-byte v1, v6, v5

    shl-int/2addr v1, v0

    or-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x2

    move v4, v1

    move v1, v5

    :goto_3
    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encoder;->SSEncDec_GetCharFromKeyByIndex(B)B

    move-result v4

    aput-byte v4, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x6

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_3
    move v1, v5

    goto :goto_3

    :cond_4
    move v0, v1

    move v3, v2

    move v1, v2

    goto :goto_2
.end method
