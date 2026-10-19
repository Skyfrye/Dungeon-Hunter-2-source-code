.class final Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field final synthetic b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V
    .locals 1

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;->a:I

    return-void
.end method


# virtual methods
.method public final checkIsFriend(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->v:Ljava/lang/String;

    return-void
.end method

.method public final getAutoLogin(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->az:Ljava/lang/String;

    return-void
.end method

.method public final getCurentUserName(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->A:Ljava/lang/String;

    return-void
.end method

.method public final getCurentUserUid(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->z:Ljava/lang/String;

    return-void
.end method

.method public final getEmail(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ay:Ljava/lang/String;

    return-void
.end method

.method public final getFriendsMessages(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->t:Ljava/lang/String;

    return-void
.end method

.method public final getGameId(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    return-void
.end method

.method public final getGamesMessages(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->s:Ljava/lang/String;

    return-void
.end method

.method public final getInboxMessages(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->r:Ljava/lang/String;

    return-void
.end method

.method public final getPassword(Ljava/lang/String;)V
    .locals 4

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ax:Ljava/lang/String;

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cj:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aw:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ax:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aw:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->as:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ax:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->at:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cj:Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->needToRemoveFacebook()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://livewebapp.gameloft.com/glive/?lg=LANG&country=COUNTRY_DETECTED&d=DEVICE_ANDROID&f=FIRMWARE_ANDROID&udid=UDIDPHONE&GGI=GGIGAME&device_token=DEV_TOKEN&username=USER_NAME&pass=PASSWORD&remember_me=AUTOLOGIN&type=ANDROID&height=SCREEN_HEIGHT"

    const-string v1, "LANG"

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cp:[Ljava/lang/String;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ap:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ap:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->as:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->as:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->at:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->at:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ao:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ao:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aq:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aq:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v3, "COUNTRY_DETECTED"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v2, "UDIDPHONE"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v1, "GGIGAME"

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ao:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v1, "DEV_TOKEN"

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v1, "USER_NAME"

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->as:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v1, "PASSWORD"

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->at:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v1, "AUTOLOGIN"

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->az:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v1, "DEVICE_ANDROID"

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v1, "FIRMWARE_ANDROID"

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v1, "SCREEN_HEIGHT"

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->D:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&enc=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const-string v0, "http://livewebapp.gameloft.com/glive/?lg=LANG&country=COUNTRY_DETECTED&d=DEVICE_ANDROID&f=FIRMWARE_ANDROID&udid=UDIDPHONE&GGI=GGIGAME&device_token=DEV_TOKEN&username=USER_NAME&pass=PASSWORD&remember_me=AUTOLOGIN&type=ANDROID&height=SCREEN_HEIGHT&fb=1"

    const-string v1, "LANG"

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cp:[Ljava/lang/String;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public final getSubject(Ljava/lang/String;)V
    .locals 4

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->y:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cO:[I

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cc:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/aq;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/aq;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getUserID(Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->q:Ljava/lang/String;

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bq:I

    if-lez v0, :cond_1

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/android_uid/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/ggi_game/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ao:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bq:I

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    sget v5, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bq:I

    if-ge v0, v5, :cond_0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "trophy_id[]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bp:[I

    aget v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bq:I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final getUserName(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aw:Ljava/lang/String;

    return-void
.end method

.method public final showAddFriendOption(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->w:Ljava/lang/String;

    return-void
.end method

.method public final showRateOption(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->x:Ljava/lang/String;

    return-void
.end method

.method public final showTitle(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    :cond_0
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aR:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aL:[Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p1, v0, v1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cT:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;->a:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/ao;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/ao;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aR:Z

    return-void

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/ap;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/ap;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
