.class public Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->getValue()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PadString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-lez v0, :cond_0

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static crypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->PadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Base64Coder;->decodeLines(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "ECB"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "AES/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Base64Coder;->encode([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Base64Coder;->decodeLines(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "ECB"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "AES/ECB/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Base64Coder;->decodeLines(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getValue()Ljava/lang/String;
    .locals 7

    const/16 v0, 0x19

    const/16 v6, 0x18

    const/4 v5, 0x0

    new-array v1, v0, [B

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    const/16 v0, 0x76

    aput-byte v0, v1, v5

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v6, :cond_0

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, v1, v3

    aget-byte v4, v2, v0

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v5, v6}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :array_0
    .array-data 1
        -0x30t
        -0x25t
        0x4t
        0x1ft
        -0x27t
        -0x1bt
        0x34t
        -0x24t
        0x29t
        0xdt
        -0x20t
        0x20t
        -0x23t
        0x14t
        0x5t
        0xbt
        -0x8t
        -0x21t
        -0x5t
        -0x9t
        0x5t
        -0x6t
        -0x4t
        0x0t
        0x0t
    .end array-data
.end method
