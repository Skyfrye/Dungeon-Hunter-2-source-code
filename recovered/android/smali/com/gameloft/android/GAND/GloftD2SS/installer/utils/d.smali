.class public final Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljavax/xml/parsers/SAXParserFactory;

.field private b:Ljavax/xml/parsers/SAXParser;

.field private c:Lorg/xml/sax/XMLReader;

.field private d:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/e;

.field private e:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->e:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->a:Ljavax/xml/parsers/SAXParserFactory;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->a:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->b:Ljavax/xml/parsers/SAXParser;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->b:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->c:Lorg/xml/sax/XMLReader;

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/e;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/e;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/e;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->c:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/e;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lorg/xml/sax/InputSource;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->c:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->e:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;->b()Ljava/util/ArrayList;

    move-result-object v3

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->a(Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/m;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/m;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/m;->a()Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v3, ""

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->e:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;->a()Ljava/util/ArrayList;

    move-result-object v4

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "default"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    move v2, v1

    move v1, v0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->a()Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->a()Z

    move-result v0

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v3, ""

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->e:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;->a()Ljava/util/ArrayList;

    move-result-object v4

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "default"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    move v2, v1

    move v1, v0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->b()Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->b()Z

    move-result v0

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v3, ""

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->e:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;->a()Ljava/util/ArrayList;

    move-result-object v4

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "default"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    move v2, v1

    move v1, v0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->c()Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->c()Z

    move-result v0

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v3, ""

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->e:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;->a()Ljava/util/ArrayList;

    move-result-object v4

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "default"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    move v2, v1

    move v1, v0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->d()Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/n;->d()Z

    move-result v0

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->c:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/e;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/e;->a()Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/d;->e:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/h;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
