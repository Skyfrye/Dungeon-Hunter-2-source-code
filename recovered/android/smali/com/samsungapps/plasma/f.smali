.class final Lcom/samsungapps/plasma/f;
.super Ljava/lang/Thread;


# static fields
.field static final a:I = 0xc8

.field static final b:I = 0xef01

.field static final c:I = 0xef02

.field static final d:I = 0xef03

.field private static final k:Ljava/lang/String; = "Content-Type"

.field private static final l:Ljava/lang/String; = "text/xml"

.field private static final m:I = 0x7530

.field private static final n:I = 0x7530

.field private static final o:I = 0xea60

.field private static final p:I = 0xea60


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Z

.field private j:I


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsungapps/plasma/f;->e:I

    iput-object v1, p0, Lcom/samsungapps/plasma/f;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungapps/plasma/f;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungapps/plasma/f;->h:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/samsungapps/plasma/f;->i:Z

    iput v2, p0, Lcom/samsungapps/plasma/f;->j:I

    iput-object p1, p0, Lcom/samsungapps/plasma/f;->h:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/f;->e:I

    return v0
.end method

.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/f;->e:I

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/f;->f:Ljava/lang/String;

    return-void
.end method

.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsungapps/plasma/f;->i:Z

    return-void
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method final b(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/f;->j:I

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/f;->g:Ljava/lang/String;

    return-void
.end method

.method final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsungapps/plasma/f;->i:Z

    return v0
.end method

.method final e()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/f;->j:I

    return v0
.end method

.method public final run()V
    .locals 6

    const v0, 0xea60

    const/16 v1, 0x7530

    iget-object v2, p0, Lcom/samsungapps/plasma/f;->f:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsungapps/plasma/f;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsungapps/plasma/f;->j:I

    if-lez v2, :cond_2

    :try_start_0
    iget v2, p0, Lcom/samsungapps/plasma/f;->j:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/samsungapps/plasma/f;->i:Z

    if-eqz v2, :cond_3

    move v1, v0

    :goto_2
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/samsungapps/plasma/f;->f:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "text/xml"

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    :try_start_1
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    iget-object v4, p0, Lcom/samsungapps/plasma/f;->g:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lcom/samsungapps/plasma/f;->h:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsungapps/plasma/f;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsungapps/plasma/f;->h:Landroid/os/Handler;

    iget v4, p0, Lcom/samsungapps/plasma/f;->e:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    const v0, 0xef03

    invoke-static {v2}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v0

    const v0, 0xef02

    invoke-static {v2}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v0

    const v0, 0xef01

    invoke-static {v2}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2
.end method
