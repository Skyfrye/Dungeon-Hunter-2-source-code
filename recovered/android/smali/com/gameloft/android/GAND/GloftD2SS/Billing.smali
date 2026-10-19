.class public final Lcom/gameloft/android/GAND/GloftD2SS/Billing;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field private static m:Ljavax/net/ssl/HttpsURLConnection;

.field private static n:Ljava/io/InputStream;

.field private static o:Ljava/io/OutputStream;

.field private static p:Ljava/lang/String;

.field private static q:Z

.field private static r:Z

.field private static s:I

.field private static t:Ljava/lang/String;


# instance fields
.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field l:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->n:Ljava/io/InputStream;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->o:Ljava/io/OutputStream;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->p:Ljava/lang/String;

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->q:Z

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->r:Z

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->k:Ljava/lang/String;

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->l:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    return-void
.end method

.method private d()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->n:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, ""

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    const-string v1, "<ResponseRootElement><code>-1</code><desc>A network error has occurred.\nPlease try again later.</desc></ResponseRootElement>"

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    :cond_0
    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->r:Z

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->o:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->o:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getLastError()I
    .locals 1

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    return v0
.end method

.method public static getsResponse()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    return-object v0
.end method

.method private static getsUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->p:Ljava/lang/String;

    return-object v0
.end method

.method private static inProcess()Z
    .locals 1

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->r:Z

    return v0
.end method

.method private static isConnected()Z
    .locals 1

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->q:Z

    return v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v0, ""

    goto :goto_1
.end method

.method private static setsResponse(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    return-void
.end method

.method public static setsUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->r:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->l:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "x-mod-sc"

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "x-mod-rf"

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "x-mod-ss"

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "X-Method"

    const-string v2, "POST"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->r:Z

    const/4 v0, 0x0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->n:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->r:Z

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x4

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    const-string v0, "<ResponseRootElement><code>-1</code><desc>A network error has occurred.\nPlease try again later.</desc></ResponseRootElement>"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://vmediatest.verizonwireless.com/vShopWeb/VShop?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->c()V

    :try_start_0
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->q:Z

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x2

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    const-string v0, "<ResponseRootElement><code>-1</code><desc>A network error has occurred.\nPlease try again later.</desc></ResponseRootElement>"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()I
    .locals 5

    const/4 v4, 0x6

    const/4 v1, 0x0

    const/4 v0, -0x2

    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->r:Z

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handling "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    sparse-switch v0, :sswitch_data_0

    sput v4, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->r:Z

    const-string v0, "<ResponseRootElement><code>-1</code><desc>A network error has occurred.\nPlease try again later.</desc></ResponseRootElement>"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;

    :cond_0
    :goto_1
    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    return v0

    :catch_0
    move-exception v2

    sput v4, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->d()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    move v0, v1

    :goto_2
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1

    if-eqz v3, :cond_4

    :cond_1
    if-eqz v2, :cond_2

    const-string v4, "x-mod-sc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->j:Ljava/lang/String;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sput v4, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    :cond_4
    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->r:Z

    goto :goto_1

    :sswitch_1
    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    goto :goto_1

    :sswitch_2
    const/4 v0, 0x7

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->r:Z

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xca -> :sswitch_1
        0xce -> :sswitch_1
        0x198 -> :sswitch_2
        0x1f8 -> :sswitch_2
    .end sparse-switch
.end method

.method public final c()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->r:Z

    const/4 v0, 0x0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->s:I

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->o:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->o:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->n:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->n:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->n:Ljava/io/InputStream;

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->m:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->q:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
