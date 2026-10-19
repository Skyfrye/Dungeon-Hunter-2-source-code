.class public final Lcom/gameloft/android/GAND/GloftD2SS/iab/b;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field public e:Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

.field public f:Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

.field private g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->a:Z

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->b:Z

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->e:Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->f:Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->h:Z

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->i:Z

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->j:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/gameloft/android/GAND/GloftD2SS/iab/e;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    return-object v0
.end method

.method public final characters([CII)V
    .locals 3

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->a:Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->h:Z

    if-eqz v0, :cond_8

    const-string v0, "country"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "operator"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "product"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "language"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "shop_info"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->h:Z

    goto :goto_0

    :cond_5
    const-string v0, "promo_description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "promo_endtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "server_time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->j:Z

    if-eqz v0, :cond_b

    const-string v0, "billing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->e:Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->f:Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->a(Lcom/gameloft/android/GAND/GloftD2SS/iab/f;)V

    :cond_9
    :goto_1
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "billing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->f:Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "billing_list"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->j:Z

    goto :goto_1

    :cond_b
    const-string v0, "content"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->e:Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->a(Lcom/gameloft/android/GAND/GloftD2SS/iab/g;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->e:Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v0, "billing_type_pref"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->e:Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "content_list"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->i:Z

    goto/16 :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->c:Ljava/lang/String;

    :cond_0
    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->a:Z

    const-string v0, "shop_info"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->h:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->h:Z

    if-eqz v0, :cond_7

    const-string v0, "country"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "operator"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "product"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "platform"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "language"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->g:Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "content_list"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->i:Z

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->j:Z

    if-eqz v0, :cond_9

    const-string v0, "billing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->f:Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->f:Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "content"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->e:Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    const-string v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->e:Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->c(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->e:Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v0, "billing_list"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/b;->j:Z

    goto/16 :goto_0
.end method
