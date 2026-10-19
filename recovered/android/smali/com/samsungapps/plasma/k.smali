.class final Lcom/samsungapps/plasma/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = ""

.field private static final b:Ljava/lang/String; = "SamsungProtocol"

.field private static final c:Ljava/lang/String; = "request"

.field private static final d:Ljava/lang/String; = "response"

.field private static final e:Ljava/lang/String; = "list"

.field private static final f:Ljava/lang/String; = "param"

.field private static final g:Ljava/lang/String; = "value"

.field private static final h:Ljava/lang/String; = "errorString"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/samsungapps/plasma/m;
    .locals 12

    const/4 v2, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    invoke-interface {v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v1, ""

    const-string v4, ""

    const-string v3, ""

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v5, v0

    move-object v6, v1

    move-object v1, v2

    move-object v0, v2

    :goto_0
    const/4 v10, 0x1

    if-eq v5, v10, :cond_9

    packed-switch v5, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    :goto_1
    :try_start_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v11, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v11

    goto :goto_0

    :pswitch_1
    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    goto :goto_1

    :pswitch_2
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v5, "SamsungProtocol"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/samsungapps/plasma/m;

    invoke-direct {v5}, Lcom/samsungapps/plasma/m;-><init>()V

    move-object v11, v1

    move-object v1, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v11

    goto :goto_1

    :cond_1
    const-string v5, "response"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_0

    const-string v5, ""

    const-string v10, "id"

    invoke-interface {v9, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsungapps/plasma/m;->b(I)V

    const-string v5, ""

    const-string v10, "name"

    invoke-interface {v9, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsungapps/plasma/m;->a(Ljava/lang/String;)V

    const-string v5, ""

    const-string v10, "transactionId"

    invoke-interface {v9, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsungapps/plasma/m;->a(I)V

    const-string v5, ""

    const-string v10, "totalCount"

    invoke-interface {v9, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsungapps/plasma/m;->c(I)V

    const-string v5, ""

    const-string v10, "startNum"

    invoke-interface {v9, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsungapps/plasma/m;->d(I)V

    const-string v5, ""

    const-string v10, "endNum"

    invoke-interface {v9, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsungapps/plasma/m;->e(I)V

    const-string v5, ""

    const-string v10, "returnCode"

    invoke-interface {v9, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsungapps/plasma/m;->f(I)V

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_1

    :cond_2
    const-string v5, "errorString"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_0

    const-string v5, ""

    const-string v10, "errorCode"

    invoke-interface {v9, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsungapps/plasma/m;->g(I)V

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_1

    :cond_3
    const-string v5, "list"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_1

    :cond_4
    const-string v5, "value"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, ""

    const-string v5, "name"

    invoke-interface {v9, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_1

    :pswitch_3
    const-string v5, "value"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_1

    :cond_5
    const-string v5, "errorString"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsungapps/plasma/m;->b(Ljava/lang/String;)V

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_1

    :pswitch_4
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SamsungProtocol"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {v0, v7}, Lcom/samsungapps/plasma/m;->a(Ljava/util/ArrayList;)V

    :cond_6
    :goto_2
    const-string v6, ""

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_1

    :cond_7
    const-string v6, "list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_2

    :cond_8
    const-string v6, "value"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ""

    const-string v3, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_9
    invoke-virtual {v8}, Ljava/io/StringReader;->close()V

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_4
    :try_start_3
    invoke-static {v1}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v8}, Ljava/io/StringReader;->close()V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_5
    :try_start_4
    invoke-static {v1}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v8}, Ljava/io/StringReader;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Ljava/io/StringReader;->close()V

    throw v0

    :catch_2
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static a(Lcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/b;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsungapps/plasma/l;->d()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v1, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, ""

    const-string v5, "SamsungProtocol"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v5, "deviceModel"

    invoke-virtual {p1}, Lcom/samsungapps/plasma/b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v5, "networkType"

    const-string v6, "1"

    invoke-interface {v3, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/samsungapps/plasma/b;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/samsungapps/plasma/d;->b:Z

    if-eqz v5, :cond_1

    const-string v1, "000"

    :cond_1
    const-string v5, ""

    const-string v6, "mcc"

    invoke-interface {v3, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/samsungapps/plasma/b;->c()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    const-string v6, "mnc"

    invoke-interface {v3, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v5, "csc"

    invoke-virtual {p1}, Lcom/samsungapps/plasma/b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v5, "lang"

    const-string v6, "EN"

    invoke-interface {v3, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v5, "version"

    const-string v6, "1.0"

    invoke-interface {v3, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v5, "request"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v5, "id"

    invoke-virtual {p0}, Lcom/samsungapps/plasma/l;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v5, "name"

    invoke-virtual {p0}, Lcom/samsungapps/plasma/l;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v5, "numParam"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, ""

    const-string v1, "transactionId"

    invoke-virtual {p0}, Lcom/samsungapps/plasma/l;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, ""

    const-string v6, "param"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, ""

    const-string v6, "name"

    invoke-interface {v3, v5, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    const-string v0, ""

    const-string v5, "param"

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/StringWriter;->flush()V

    invoke-virtual {v4}, Ljava/io/StringWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_5
    const-string v0, ""

    const-string v1, "request"

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, ""

    const-string v1, "SamsungProtocol"

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/StringWriter;->flush()V

    invoke-virtual {v4}, Ljava/io/StringWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v4}, Ljava/io/StringWriter;->flush()V

    invoke-virtual {v4}, Ljava/io/StringWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method
