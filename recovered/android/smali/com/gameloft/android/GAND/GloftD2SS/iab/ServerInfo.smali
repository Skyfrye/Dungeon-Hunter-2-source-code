.class public final Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;
.super Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;


# instance fields
.field private f:Lcom/gameloft/android/GAND/GloftD2SS/iab/b;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a:Ljavax/xml/parsers/SAXParserFactory;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->a:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->b:Ljavax/xml/parsers/SAXParser;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->b:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->c:Lorg/xml/sax/XMLReader;

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->f:Lcom/gameloft/android/GAND/GloftD2SS/iab/b;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->c:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->f:Lcom/gameloft/android/GAND/GloftD2SS/iab/b;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->d:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->d:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-direct {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->e:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private F()Z
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private G()Z
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private H()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x3a

    const/16 v5, 0x3b

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v2

    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->StringCurrencytoChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private I()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    return-object v0
.end method

.method private static StringCurrencytoChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "\ufffd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\ufffd"

    const-string v1, "&#8364"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    const-string v1, "\ufffd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\ufffd"

    const-string v2, "&#163"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "$"

    const-string v2, "&#36"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, p0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method private a(Lcom/gameloft/android/GAND/GloftD2SS/iab/e;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    return-void
.end method

.method private a(Lorg/xml/sax/InputSource;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->c:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->f:Lcom/gameloft/android/GAND/GloftD2SS/iab/b;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->a()Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/gameloft/android/GAND/GloftD2SS/iab/f;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v1, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->c(Ljava/lang/String;)Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->b(Ljava/lang/String;)Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A()Lcom/gameloft/android/GAND/GloftD2SS/iab/e;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    return-object v0
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->b()I

    move-result v0

    goto :goto_0
.end method

.method public final C()[B
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final D()[B
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final E()[B
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x4f

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->c(Ljava/lang/String;)Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p4, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    invoke-virtual {v0, p2, p3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0, v2, p2, p3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 7

    const/4 v2, 0x0

    const/16 v0, 0x69

    invoke-static {v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->e:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->sendIABProfileRequest(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->e:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    invoke-virtual {v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->d()Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v5, 0x5dc

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getLastErrorCode()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->g:Ljava/lang/String;

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getWHTTP()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;

    move-result-object v2

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->t:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    :try_start_1
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->c:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->f:Lcom/gameloft/android/GAND/GloftD2SS/iab/b;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->a()Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_2
    move v0, v2

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->c(Ljava/lang/String;)Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)[B
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    invoke-virtual {v0, p2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->c(Ljava/lang/String;)Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->a()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->h:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->g:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;I)[B
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->a()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x3a

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->c(Ljava/lang/String;)Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v1, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3a

    const/16 v4, 0x3b

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    invoke-static {v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v5}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)Lcom/gameloft/android/GAND/GloftD2SS/iab/g;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->c(Ljava/lang/String;)Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x55

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x53

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x4f

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x51

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x52

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x3d

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x3e

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x42

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x43

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x44

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x45

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x46

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x3f

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->i:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final w()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x47

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->K()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x48

    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y()Z
    .locals 1

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->G()Z

    move-result v0

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->g:Ljava/lang/String;

    return-object v0
.end method
