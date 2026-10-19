.class Lcom/samsung/zirconia/LicenseRetriever;
.super Ljava/lang/Object;


# instance fields
.field private applicationID:Ljava/lang/String;

.field private deviceIMEI:Ljava/lang/String;

.field private deviceIMSI:Ljava/lang/String;

.field private deviceMIN:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private errorCode:I

.field private executableFilePath:Ljava/lang/String;

.field private httpURL:Ljava/net/URL;

.field private httpUrlConnection:Ljava/net/HttpURLConnection;

.field private licenseFilePath:Ljava/lang/String;

.field private numRedirects:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/samsung/zirconia/LicenseRetriever;->disableSSLCertificateChecking()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    iput-object p1, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceIMEI:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/zirconia/LicenseRetriever;->applicationID:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceIMSI:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceModel:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceMIN:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/zirconia/LicenseRetriever;->licenseFilePath:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/zirconia/LicenseRetriever;->executableFilePath:Ljava/lang/String;

    return-void
.end method

.method private close()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpURL:Ljava/net/URL;

    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    iput-object v1, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private static disableSSLCertificateChecking()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/zirconia/LicenseRetriever$1;

    invoke-direct {v2}, Lcom/samsung/zirconia/LicenseRetriever$1;-><init>()V

    aput-object v2, v0, v1

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeParameter()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "%02d%03d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceid=%s&applicationid=%s&subscriberid=%s&model=%s&min=%s&version=%s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceIMEI:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/zirconia/LicenseRetriever;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/samsung/zirconia/LicenseRetriever;->applicationID:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/zirconia/LicenseRetriever;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceIMSI:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/zirconia/LicenseRetriever;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceModel:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/zirconia/LicenseRetriever;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceMIN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/zirconia/LicenseRetriever;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/zirconia/LicenseRetriever;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private open()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "https://zirconia.samsungapps.com:443/chkLicense.as"

    const-string v1, "POST"

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->makeParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput v3, p0, Lcom/samsung/zirconia/LicenseRetriever;->numRedirects:I

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpURL:Ljava/net/URL;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    return-void
.end method

.method private receiveResponse()V
    .locals 7

    const/16 v6, 0xc

    const/4 v5, 0x0

    const/16 v4, 0xb

    const/4 v3, 0x0

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x200

    new-array v1, v1, [B

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->read([BII)I

    new-array v0, v6, [B

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "ZrO2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x47

    iput v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    new-instance v0, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;

    invoke-direct {v0, p0, v5}, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;-><init>(Lcom/samsung/zirconia/LicenseRetriever;Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;)V

    throw v0

    :cond_0
    const/16 v0, 0x9

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v0, :cond_1

    iput v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    new-instance v0, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;

    invoke-direct {v0, p0, v5}, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;-><init>(Lcom/samsung/zirconia/LicenseRetriever;Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;)V

    throw v0

    :cond_1
    const/16 v0, 0x28

    new-array v0, v0, [B

    const/16 v2, 0x14

    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/samsung/zirconia/LicenseRetriever;->licenseFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/zirconia/LicenseRetriever;->executableFilePath:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/samsung/zirconia/NativeInterface;->storeLicenseKey(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x51

    iput v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    new-instance v0, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;

    invoke-direct {v0, p0, v5}, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;-><init>(Lcom/samsung/zirconia/LicenseRetriever;Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;)V

    throw v0

    :cond_2
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    return-void
.end method

.method private sendRequest()V
    .locals 4

    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Acceept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-agent"

    const-string v2, "ZrO2-ADR"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->numRedirects:I

    if-nez v0, :cond_0

    const-string v0, "POST"

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->makeParameter()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v1, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_4

    const/16 v1, 0x133

    if-gt v0, v1, :cond_4

    const/16 v1, 0x132

    if-eq v0, v1, :cond_4

    const/16 v1, 0x130

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpURL:Ljava/net/URL;

    :cond_1
    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpURL:Ljava/net/URL;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->numRedirects:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "illegal URL redirect"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->numRedirects:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->numRedirects:I

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public retrieveLicense()I
    .locals 1

    const/16 v0, 0x3e

    :try_start_0
    iput v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->open()V

    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->sendRequest()V

    const/16 v0, 0x3d

    iput v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->receiveResponse()V

    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->close()V
    :try_end_0
    .catch Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
