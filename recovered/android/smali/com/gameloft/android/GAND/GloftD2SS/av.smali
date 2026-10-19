.class final Lcom/gameloft/android/GAND/GloftD2SS/av;
.super Landroid/webkit/WebViewClient;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;


# direct methods
.method private constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->b:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->a:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/av;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->b:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->a:Landroid/app/ProgressDialog;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->b:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->a:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->b:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->b:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->m:[I

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->c:I

    aget v2, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ingameads.gameloft.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->b:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "http://ingameads.gameloft.com/redir/?from"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->b:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->j:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->b:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->a()V

    goto :goto_0

    :cond_3
    const-string v0, "vnd.youtube:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/av;->b:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;

    invoke-static {v0, p2}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->access$100(Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
