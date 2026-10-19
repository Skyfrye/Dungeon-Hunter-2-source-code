.class public final Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->j:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->j:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->a:Ljava/lang/String;

    return-void
.end method

.method private b()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->j:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->j:Ljava/lang/String;

    const-string v2, "\\@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->b:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->c:Ljava/lang/String;

    return-void
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->d:Ljava/lang/String;

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->e:Ljava/lang/String;

    return-void
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->f:Ljava/lang/String;

    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->g:Ljava/lang/String;

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->h:Ljava/lang/String;

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method private j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->i:Ljava/lang/String;

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method private m()Z
    .locals 2

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->h:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method private q()Z
    .locals 2

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method private s()Z
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private t()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_3

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_4

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->i:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    :cond_2
    move v2, v1

    :goto_2
    if-eqz v2, :cond_6

    :goto_3
    return v0

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private u()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private v()Z
    .locals 1

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
