.class final Lcom/gameloft/android/GAND/GloftD2SS/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/v;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bN:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/v;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    iget-object v4, v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aT:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/v;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cv:[I

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget v2, v2, v4

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/v;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cr:[I

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget v2, v2, v4

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/w;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/w;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/v;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,6}$"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/v;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bN:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->n:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bh:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bi:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bP:Z

    if-eqz v0, :cond_3

    sput-boolean v5, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bi:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->E:F

    const/high16 v4, 0x42340000    # 45.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->F:F

    const/high16 v5, 0x42200000    # 40.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aZ:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bP:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/android_uid/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/store/FVGL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v5, v2

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    array-length v5, v2

    if-ge v1, v5, :cond_5

    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "name[]"

    aget-object v7, v2, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "email[]"

    aget-object v7, v2, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "http://livewebapp.gameloft.com/glive/friends/show-invite-email/android_uid/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/store/FVGL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    :try_start_1
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
