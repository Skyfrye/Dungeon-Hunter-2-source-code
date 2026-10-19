.class public Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/c;


# static fields
.field public static final a:I = 0xea60

.field public static final b:I = 0x2bf20

.field public static c:I

.field public static d:I


# instance fields
.field e:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xea60

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->c:I

    const v0, 0x2bf20

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private c(Ljava/lang/String;)J
    .locals 2

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private c()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public static incrementConnectionTimeout()V
    .locals 2

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->c:I

    const v1, 0x1d4c0

    if-ge v0, v1, :cond_0

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->c:I

    add-int/lit16 v0, v0, 0x2ee0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->c:I

    :cond_0
    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d:I

    const v1, 0x57e40

    if-ge v0, v1, :cond_1

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d:I

    const v1, 0x8ca0

    add-int/2addr v0, v1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a()J
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    :cond_0
    return-wide v0
.end method

.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->c:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;JJ)Ljava/io/InputStream;
    .locals 8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;JJJ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;JJJ)Ljava/io/InputStream;
    .locals 5

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->c:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-long v3, p4, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-long v3, p4, p2

    add-long/2addr v3, p6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-long v3, p4, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "no"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->c:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, p1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->e:Ljava/net/HttpURLConnection;

    return-void
.end method
