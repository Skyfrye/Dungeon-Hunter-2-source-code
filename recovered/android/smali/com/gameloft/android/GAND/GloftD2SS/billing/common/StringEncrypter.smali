.class public Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;
.super Ljava/lang/Object;


# static fields
.field static i:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljavax/crypto/spec/SecretKeySpec;

.field c:Ljavax/crypto/Cipher;

.field d:Ljavax/crypto/Cipher;

.field e:[I

.field f:[Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/16 v1, 0xa

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AES"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->j:Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->f:[Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/4 v1, 0x0

    aput v3, v0, v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    aput v3, v0, v2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    aput v3, v0, v4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/4 v1, 0x3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/4 v1, 0x5

    aput v3, v0, v1

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getRawKey([B)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b:Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->c:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->c:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->d:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->d:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/4 v1, 0x6

    aput v3, v0, v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AES"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->j:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->f:[Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v7

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x6

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v8

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->getRawKey([B)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b:Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->c:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->c:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->d:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->d:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v9

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method static decryptBase64(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/Base64;->decode([B)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->i:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->d:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static getRawKey([B)[B
    .locals 3

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->i:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    const v2, 0x7f0501b7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->i:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->i:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->decryptBase64(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->h:I

    rem-int/lit8 v0, v0, 0x6

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->e:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->h:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->f:[Ljava/lang/String;

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->h:I

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->h:I

    invoke-static {p1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->d:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->f:[Ljava/lang/String;

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->h:I

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
