.class final Lcom/gameloft/android/GAND/GloftD2SS/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/z;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    if-lez v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/z;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bo:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->k:Landroid/widget/AbsoluteLayout;

    const/4 v3, 0x2

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/AbsoluteLayout;->removeViews(II)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bo:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/z;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cw:[I

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/z;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cr:[I

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget v2, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/aa;

    invoke-direct {v2, p0}, Lcom/gameloft/android/GAND/GloftD2SS/aa;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/z;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "http://livewebapp.gameloft.com/glive/messages/send-message/android_uid/"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    if-ge v0, v1, :cond_1

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "user_id[]"

    sget-object v7, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aN:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-direct {v1, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "message"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aU:Landroid/widget/ImageButton;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aW:Landroid/widget/ImageButton;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aX:Landroid/widget/ImageButton;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aV:Landroid/widget/ImageButton;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    const-string v1, "http://livewebapp.gameloft.com/glive/messages/sent/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aP:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/z;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cv:[I

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cr:[I

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget v1, v1, v2

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/ab;

    invoke-direct {v2, p0}, Lcom/gameloft/android/GAND/GloftD2SS/ab;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/z;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
