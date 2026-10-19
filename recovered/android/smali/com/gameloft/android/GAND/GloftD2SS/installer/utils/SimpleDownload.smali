.class public final Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;
.super Ljava/lang/Thread;


# instance fields
.field public a:Z

.field private final b:I

.field private final c:I

.field private d:Ljava/lang/Thread;

.field private e:Ljava/io/FileOutputStream;

.field private f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:J

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:[B

.field private p:Ljava/io/DataInputStream;

.field private q:Ljava/util/Vector;

.field private r:J

.field private s:I

.field private t:I


# direct methods
.method private constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->b:I

    const v0, 0x8000

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->c:I

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->d:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->e:Ljava/io/FileOutputStream;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->g:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->h:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->i:Z

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->j:J

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->k:J

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->m:Ljava/lang/String;

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->n:I

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->o:[B

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->q:Ljava/util/Vector;

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->r:J

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->s:I

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->t:I

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->a:Z

    iget-object v0, p1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->l:Ljava/lang/String;

    iget-object v0, p1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->m:Ljava/lang/String;

    iget v0, p1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->n:I

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->n:I

    iget-object v0, p1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->q:Ljava/util/Vector;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->q:Ljava/util/Vector;

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->g:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;J)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->b:I

    const v0, 0x8000

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->c:I

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->d:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->e:Ljava/io/FileOutputStream;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->g:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->h:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->i:Z

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->j:J

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->k:J

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->m:Ljava/lang/String;

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->n:I

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->o:[B

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->q:Ljava/util/Vector;

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->r:J

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->s:I

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->t:I

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->a:Z

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->m:Ljava/lang/String;

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->n:I

    iput-object p3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->q:Ljava/util/Vector;

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->g:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->h:Z

    iput-wide p4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->r:J

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 10

    const/4 v6, 0x0

    const/16 v9, 0x231

    const/16 v8, 0x230

    const/4 v7, 0x1

    :try_start_0
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v0, ""

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->l:Ljava/lang/String;

    const-wide/16 v4, 0x0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;JJ)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-wide/16 v1, 0xbb8

    :try_start_3
    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->p:Ljava/io/DataInputStream;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->p:Ljava/io/DataInputStream;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_0
    move-exception v0

    invoke-static {v9}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->incrementConnectionTimeout()V

    iput-boolean v7, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->i:Z

    :goto_2
    return-void

    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;JJ)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->incrementConnectionTimeout()V

    const/16 v0, 0x231

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    move-object v0, v6

    goto :goto_0

    :catch_2
    move-exception v0

    const/16 v0, 0x230

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    move-object v0, v6

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v0

    iput-boolean v7, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->i:Z

    invoke-static {v8}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_3
    const v0, 0x8000

    :try_start_7
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->o:[B
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->g:Z

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->h:Z

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->i:Z

    return-void
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/.nomedia"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x234

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private h()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->q:Ljava/util/Vector;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->m:Ljava/lang/String;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static update()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->d:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->h:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->i:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->g:Z

    return v0
.end method

.method public final d()J
    .locals 4

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->j:J

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->k:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->k:J

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->j:J

    return-void
.end method

.method public final run()V
    .locals 11

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->d:Ljava/lang/Thread;

    iput-wide v7, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->j:J

    iput-wide v7, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->k:J

    :try_start_0
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->h:Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v0, :cond_4

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x8000

    :try_start_1
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->o:[B
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    invoke-static {v9}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->getOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->e:Ljava/io/FileOutputStream;

    :cond_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->p:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->o:[B

    const/4 v2, 0x0

    const v3, 0x8000

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->e:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->o:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    iget-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->k:J

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->k:J

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->d:Ljava/lang/Thread;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->h:Z

    :cond_3
    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->j:J

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->j:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->k:J

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->n:I

    :cond_4
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->n:I

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->q:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result v1

    if-ge v0, v1, :cond_a

    const-wide/16 v0, 0xa

    :try_start_3
    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->q:Ljava/util/Vector;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->n:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".\\\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/io/File;

    const-string v1, "//"

    const-string v2, "/"

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    :goto_3
    const-string v1, ""
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    const-string v0, ""

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->l:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;JJ)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    :goto_4
    if-nez v0, :cond_5

    :try_start_7
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    const-wide/16 v1, 0xbb8

    :try_start_8
    invoke-static {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_5
    :goto_5
    if-eqz v0, :cond_9

    :try_start_9
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->p:Ljava/io/DataInputStream;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->p:Ljava/io/DataInputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_0
    move-exception v0

    const/16 v0, 0x231

    :try_start_a
    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->incrementConnectionTimeout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->i:Z
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/16 v0, 0x232

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->incrementConnectionTimeout()V

    iput-boolean v10, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->i:Z

    :cond_6
    :goto_6
    iput-boolean v10, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->a:Z

    goto/16 :goto_0

    :cond_7
    move-wide v2, v7

    goto :goto_3

    :cond_8
    :try_start_b
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;JJ)Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-result-object v0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_c
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->incrementConnectionTimeout()V

    const/16 v0, 0x231

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    move-object v0, v6

    goto :goto_4

    :catch_3
    move-exception v0

    const/16 v0, 0x230

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    move-object v0, v6

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :catch_4
    move-exception v0

    const/4 v0, 0x1

    :try_start_d
    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->i:Z

    const/16 v0, 0x230

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :catch_5
    move-exception v0

    const/16 v0, 0x233

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    iput-boolean v10, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->i:Z

    iput-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->o:[B

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    iput-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    goto :goto_6

    :cond_a
    :try_start_e
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->p:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->o:[B

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->g:Z

    :cond_b
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->f:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_6

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :catch_7
    move-exception v1

    goto/16 :goto_5
.end method
