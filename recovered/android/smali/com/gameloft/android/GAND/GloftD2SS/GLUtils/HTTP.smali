.class public final Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;
.implements Ljava/lang/Runnable;


# static fields
.field public static w:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lorg/apache/http/HttpConnection;

.field private C:Ljava/net/HttpURLConnection;

.field private D:Ljavax/net/ssl/HttpsURLConnection;

.field private E:Ljava/io/InputStream;

.field private F:Ljava/io/OutputStream;

.field public t:Ljava/lang/String;

.field u:Z

.field public v:Z

.field private final x:I

.field private y:Ljava/lang/Thread;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->x:I

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->y:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->B:Lorg/apache/http/HttpConnection;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->E:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->F:Ljava/io/OutputStream;

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/e;

    invoke-direct {v4, p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/e;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;)V

    aput-object v4, v2, v3

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/d;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/d;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;)V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    return v0
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->z:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static onValidationHandled()V
    .locals 0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/ConnectionTimer;->stop()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/32 v4, 0xea60

    :goto_0
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->bj:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->b()V

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x32

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "&"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->z:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->bh:Ljava/lang/String;

    const-string v1, "TextHtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->bh:Ljava/lang/String;

    const-string v1, "texthtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->bh:Ljava/lang/String;

    const-string v1, "TEXTHTML"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&texthtml=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->z:Ljava/lang/String;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->y:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->y:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_3
    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/ConnectionTimer;->start(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->y:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->y:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_5
    const-string v0, "?"

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->bh:Ljava/lang/String;

    const-string v1, "TextPlain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->bh:Ljava/lang/String;

    const-string v1, "textplain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->bh:Ljava/lang/String;

    const-string v1, "TEXTPLAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&textplain=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->z:Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    return v0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->B:Lorg/apache/http/HttpConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->B:Lorg/apache/http/HttpConnection;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->E:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->B:Lorg/apache/http/HttpConnection;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->B:Lorg/apache/http/HttpConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_1
    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->E:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->B:Lorg/apache/http/HttpConnection;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->y:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->t:Ljava/lang/String;

    return-void
.end method

.method public final run()V
    .locals 9

    const/4 v8, -0x2

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->z:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_6

    move v0, v2

    :goto_0
    if-nez v0, :cond_b

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getCarrier()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;

    move-result-object v0

    const-string v3, "http.keepAlive"

    const-string v4, "false"

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->z:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;->c()I

    move-result v0

    invoke-direct {v5, v4, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    :goto_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "Connection"

    const-string v4, "close"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "User-Agent"

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getDevice()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "x-up-subno"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->w:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "x-gl-d"

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->GetSerialKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "x-android-os-build-model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "x-up-gl-subno"

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getDevice()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getLineNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "x-up-gl-imei"

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getDevice()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getIMEI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "x-up-gl-ggi"

    const-string v4, "52297"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "x-up-gl-gamecode  "

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getDevice()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getDemoCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->C:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "x-up-gl-acnum"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->C:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->E:Ljava/lang/String;

    const-string v3, ""

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "x-up-gl-purchaseid"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->E:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;->b_:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "x-up-calling-line-id"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;->b_:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;->c_:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "x-up-uplink"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;->c_:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;->d_:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    const-string v3, "x-Nokia-MSISDN"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;->d_:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/ConnectionTimer;->stop()V

    :goto_2
    return-void

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    invoke-static {v8}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->setLastErrorMessage(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->b()V

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/ConnectionTimer;->stop()V

    goto :goto_2

    :cond_8
    :try_start_1
    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    monitor-enter v3
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->C:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->E:Ljava/io/InputStream;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x10

    new-array v4, v0, [B

    move v0, v1

    :cond_9
    :goto_4
    if-eq v0, v7, :cond_a

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->E:Ljava/io/InputStream;

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v7, :cond_9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_1
    move-exception v0

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    invoke-static {v8}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->setLastErrorMessage(I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3

    throw v0
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    goto :goto_3

    :cond_a
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->t:Ljava/lang/String;
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getCarrier()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;

    move-result-object v0

    const-string v3, "http.keepAlive"

    const-string v4, "false"

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->z:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;->a()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/a;->c()I

    move-result v0

    invoke-direct {v5, v4, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    :goto_5
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "Connection"

    const-string v4, "close"

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "User-Agent"

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getDevice()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->w:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "x-up-subno"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->w:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "x-gl-d"

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->GetSerialKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "x-android-os-build-model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "x-up-gl-subno"

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getDevice()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getLineNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "x-up-gl-imei"

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getDevice()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getIMEI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "x-up-gl-ggi"

    const-string v4, "52297"

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "x-up-gl-gamecode  "

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getDevice()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getDemoCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->C:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "x-up-gl-acnum"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->C:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->E:Ljava/lang/String;

    const-string v3, ""

    if-eq v0, v3, :cond_e

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "x-up-gl-purchaseid"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->E:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;->b_:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "x-up-calling-line-id"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;->b_:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;->c_:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "x-up-uplink"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;->c_:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;->d_:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "x-Nokia-MSISDN"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Config;->d_:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_13

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/ConnectionTimer;->stop()V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_2

    :catch_3
    move-exception v0

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    invoke-static {v8}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->setLastErrorMessage(I)V

    :goto_6
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->b()V

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/ConnectionTimer;->stop()V

    goto/16 :goto_2

    :cond_12
    :try_start_7
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_5

    :catch_4
    move-exception v0

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    invoke-static {v8}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->setLastErrorMessage(I)V

    goto :goto_6

    :cond_13
    :try_start_8
    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    monitor-enter v3
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :try_start_9
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->D:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->E:Ljava/io/InputStream;

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x10

    new-array v4, v0, [B

    move v0, v1

    :cond_14
    :goto_7
    if-eq v0, v7, :cond_15

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->E:Ljava/io/InputStream;

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v7, :cond_14

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    goto :goto_6

    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v3

    throw v0

    :cond_15
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->t:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_6
.end method
