.class public Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;
.super Ljava/lang/Thread;


# static fields
.field public static final a:J = 0x200000L

.field private static e:Ljava/lang/Object;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private f:Ljava/lang/Thread;

.field private g:Ljava/io/RandomAccessFile;

.field private h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:J

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/Vector;

.field private t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;

.field private u:Ljava/util/zip/ZipEntry;

.field private v:[B

.field private w:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->b:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->c:I

    const v0, 0x8000

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->d:I

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->f:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->g:Ljava/io/RandomAccessFile;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->i:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->j:Z

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->k:J

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->l:J

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->m:J

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->n:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->p:I

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->v:[B

    iget-object v0, p1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->q:Ljava/lang/String;

    iget-object v0, p1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->r:Ljava/lang/String;

    iget-wide v0, p1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->m:J

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->m:J

    iget v0, p1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->n:I

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->n:I

    iget-object v0, p1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    iget v0, p1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->p:I

    iget v0, p1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->i:Z

    iput-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->j:Z

    invoke-virtual {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->k:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;JI)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->b:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->c:I

    const v0, 0x8000

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->d:I

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->f:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->g:Ljava/io/RandomAccessFile;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->i:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->j:Z

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->k:J

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->l:J

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->m:J

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->n:I

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->p:I

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->v:[B

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->q:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->r:Ljava/lang/String;

    iput-wide p4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->m:J

    iput p6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->n:I

    iput-object p3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    iput v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->p:I

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->i:Z

    iput-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->j:Z

    return-void
.end method

.method private static getOutputStream(Ljava/lang/String;I)Ljava/io/RandomAccessFile;
    .locals 7

    const-wide/32 v5, 0x200000

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

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

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-lez p1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    int-to-long v3, p1

    mul-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    int-to-long v1, p1

    mul-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_2
    add-int/lit8 v1, p1, -0x1

    int-to-long v1, v1

    mul-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x234

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private h()V
    .locals 11

    const/4 v8, 0x0

    const/16 v10, 0x231

    const/16 v9, 0x230

    :try_start_0
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->g()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->m:J

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;JJJ)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->g()I

    move-result v2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->g()I

    move-result v0

    sub-int v0, v2, v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->k:J
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    if-nez v1, :cond_0

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-wide/16 v2, 0xbb8

    :try_start_4
    invoke-static {v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;

    invoke-direct {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->w:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->w:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_0
    move-exception v0

    invoke-static {v10}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->incrementConnectionTimeout()V

    :goto_3
    return-void

    :catch_1
    move-exception v0

    move-object v0, v8

    :goto_4
    :try_start_6
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->incrementConnectionTimeout()V

    const/16 v1, 0x231

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/16 v0, 0x230

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    move-object v1, v8

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v0

    invoke-static {v9}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_2
    const v0, 0x8000

    :try_start_7
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->v:[B
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :cond_3
    move-object v1, v8

    goto :goto_0
.end method

.method private i()I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->p:I

    return v0
.end method

.method private j()I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->n:I

    return v0
.end method

.method private k()J
    .locals 2

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->m:J

    return-wide v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->r:Ljava/lang/String;

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->q:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->f:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->j:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->i:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->p:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()J
    .locals 4

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->k:J

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->l:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    return v0
.end method

.method public final g()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    return-object v0
.end method

.method public run()V
    .locals 12

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->f:Ljava/lang/Thread;

    :try_start_0
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->g()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->m:J

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;JJJ)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->g()I

    move-result v2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->g()I

    move-result v0

    sub-int v0, v2, v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->k:J
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    if-nez v1, :cond_0

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-wide/16 v2, 0xbb8

    :try_start_4
    invoke-static {v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;

    invoke-direct {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->w:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->w:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_0
    move-exception v0

    const/16 v0, 0x231

    :try_start_6
    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->incrementConnectionTimeout()V

    :goto_3
    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->i:Z
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :catch_1
    move-exception v0

    move-object v0, v8

    :goto_5
    :try_start_7
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->incrementConnectionTimeout()V

    const/16 v1, 0x231

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/16 v0, 0x230

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    move-object v1, v8

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v0

    const/16 v0, 0x230

    :try_start_8
    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_4
    move-exception v0

    const/16 v0, 0x232

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->incrementConnectionTimeout()V

    iput-boolean v11, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->j:Z

    :cond_2
    :goto_6
    iput-boolean v11, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->j:Z

    goto :goto_4

    :cond_3
    const v0, 0x8000

    :try_start_9
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->v:[B
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    :cond_4
    :try_start_a
    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->k:J

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->l:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->k:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->l:J

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/Utils;->markAsSaved(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;)V

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;->closeEntry()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->w:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->b()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->w:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a()V

    :cond_5
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->f:Ljava/lang/Thread;

    if-ne v0, v10, :cond_9

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    if-le v0, v1, :cond_9

    const-wide/16 v0, 0xa

    :try_start_b
    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_4

    :goto_7
    :try_start_c
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->s:Ljava/util/Vector;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->o:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->w:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a(J)V

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->w:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;

    invoke-direct {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->u:Ljava/util/zip/ZipEntry;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->u:Ljava/util/zip/ZipEntry;

    if-nez v1, :cond_7

    const/16 v0, 0x23a

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    new-instance v0, Ljava/util/zip/DataFormatException;

    const-string v1, "m_zipEntry = null"

    invoke-direct {v0, v1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :catch_5
    move-exception v0

    const/16 v0, 0x233

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    iput-boolean v11, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->j:Z

    iput-object v8, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->v:[B

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    iput-object v8, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    :cond_6
    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->k:J

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->l:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->k:J

    goto/16 :goto_6

    :cond_7
    :try_start_d
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

    move-result-object v1

    const-string v0, ".split_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :try_start_e
    invoke-static {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->getOutputStream(Ljava/lang/String;I)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->g:Ljava/io/RandomAccessFile;

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->g:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;->closeEntry()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->u:Ljava/util/zip/ZipEntry;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->u:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_5

    const/16 v0, 0x23a

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    new-instance v0, Ljava/util/zip/DataFormatException;

    const-string v1, "m_zipEntry = null"

    invoke-direct {v0, v1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_8
    :goto_9
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->v:[B

    const/4 v2, 0x0

    const v3, 0x8000

    invoke-virtual {v0, v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;->read([BII)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->g:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->v:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->l:J

    goto :goto_9

    :cond_9
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->w:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->t:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/l;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->v:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->i:Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Section;->h:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_6

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :catch_7
    move-exception v0

    goto/16 :goto_7

    :catch_8
    move-exception v0

    move-object v0, v1

    goto/16 :goto_5

    :cond_a
    move v0, v9

    goto/16 :goto_8

    :cond_b
    move-object v1, v8

    goto/16 :goto_0
.end method
