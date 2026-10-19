.class public final Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/c;


# static fields
.field public static g:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:I

.field public e:Z

.field public f:Z

.field h:Ljava/util/ArrayList;

.field i:Ljava/util/Vector;

.field private j:I

.field private k:I

.field private final l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;IJ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->c:J

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->d:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->k:I

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->l:I

    iput p4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->d:I

    iput-object p3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->b:Ljava/lang/String;

    iput-wide p5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->c:J

    :try_start_0
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x227

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->f:Z

    goto :goto_0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->d:I

    return-void
.end method

.method private a(J)V
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    iput v8, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->h()I

    move-result v2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    const/4 v0, 0x1

    move v7, v0

    move v0, v2

    :goto_0
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v7, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->h()I

    move-result v0

    if-ne v2, v0, :cond_2

    int-to-long v4, v1

    cmp-long v0, v4, p1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v0

    add-int/2addr v1, v0

    :goto_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->h()I

    move-result v2

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->b:Ljava/lang/String;

    iget v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->d:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;JI)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->b:Ljava/lang/String;

    iget v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->d:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;JI)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    move v2, v8

    :goto_2
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    if-ge v2, v0, :cond_0

    move v1, v8

    :goto_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method

.method private f()V
    .locals 11

    const-wide/32 v0, 0x1400000

    const/4 v10, 0x0

    iput v10, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->k:I

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->c:J

    const-wide/16 v4, 0x5

    div-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    move-wide v7, v0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    iput v10, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->h()I

    move-result v2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    const/4 v0, 0x1

    move v9, v0

    move v0, v2

    :goto_1
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->h()I

    move-result v0

    if-ne v2, v0, :cond_0

    int-to-long v4, v1

    cmp-long v0, v4, v7

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v0

    add-int/2addr v1, v0

    :goto_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->h()I

    move-result v2

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v0, v2

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->b:Ljava/lang/String;

    iget v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->d:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;JI)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v1

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->b:Ljava/lang/String;

    iget v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->d:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;JI)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    move v2, v10

    :goto_3
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    if-ge v2, v0, :cond_3

    move v1, v10

    :goto_4
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    move-wide v7, v2

    goto/16 :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/joinedFile.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->f()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static pause()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->g:Z

    return-void
.end method

.method private static resume()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->g:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    const-wide/32 v0, 0x1400000

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_4

    iput v10, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->k:I

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->c:J

    const-wide/16 v4, 0x5

    div-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    move-wide v7, v0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    iput v10, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->h()I

    move-result v2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    const/4 v0, 0x1

    move v9, v0

    move v0, v2

    :goto_1
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->h()I

    move-result v0

    if-ne v2, v0, :cond_0

    int-to-long v4, v1

    cmp-long v0, v4, v7

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v0

    add-int/2addr v1, v0

    :goto_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->h()I

    move-result v2

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v0, v2

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->b:Ljava/lang/String;

    iget v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->d:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;JI)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v1

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->b:Ljava/lang/String;

    iget v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->d:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;JI)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    move v2, v10

    :goto_3
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    if-ge v2, v0, :cond_3

    move v1, v10

    :goto_4
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    iput-boolean v10, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->e:Z

    sput-boolean v10, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->g:Z

    return-void

    :cond_4
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_5
    move-wide v7, v2

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/Vector;)V
    .locals 1

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->f:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x228

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->f:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->f:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    if-ge v1, v0, :cond_2

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    move v1, v0

    :goto_1
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->start()V

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v0, 0x229

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->f:Z

    goto :goto_0
.end method

.method public final c()V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->f:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v0

    move v2, v0

    move v3, v0

    :goto_1
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->a()V

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    new-instance v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-direct {v5, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;)V

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->start()V

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    if-lez v2, :cond_6

    add-int v0, v2, v3

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    if-ne v0, v1, :cond_6

    iput-boolean v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->f:Z

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->d()V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->k:I

    add-int v1, v2, v3

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->k:I

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->k:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->start()V

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->k:I

    :cond_7
    add-int v0, v2, v3

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    if-lt v0, v1, :cond_0

    iput-boolean v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->e:Z

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x22a

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->f:Z

    :cond_1
    return-void
.end method

.method public final e()J
    .locals 8

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    move-wide v6, v1

    move-wide v2, v6

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->j:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->e()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method
