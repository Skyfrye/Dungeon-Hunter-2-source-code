.class public Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;
.super Ljava/lang/Object;


# static fields
.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field static n:Ljava/lang/String;


# instance fields
.field private A:Ljava/util/Vector;

.field private B:J

.field private C:I

.field private D:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

.field private E:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

.field private F:Z

.field private G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

.field private H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

.field public a:Ljava/lang/String;

.field b:Ljava/util/Vector;

.field c:I

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:Z

.field o:I

.field p:Z

.field private final q:I

.field private r:Ljava/lang/String;

.field private s:J

.field private t:Ljava/lang/String;

.field private u:Ljava/io/DataInputStream;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "/data/data/com.gameloft.android.GAND.GloftD2SS/libs/"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->l:Ljava/lang/String;

    const-string v0, "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->q:I

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    iput-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->s:J

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->w:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->x:Z

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->y:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->z:Ljava/lang/String;

    iput-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->B:J

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->C:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->F:Z

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->e:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->f:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->g:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->j:J

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->k:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->o:I

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->p:Z

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/com.gameloft.android.GAND.GloftD2SS/pack"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->z:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->q:I

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    iput-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->s:J

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->w:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->x:Z

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->y:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->z:Ljava/lang/String;

    iput-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->B:J

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->C:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->F:Z

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->e:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->f:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->g:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->j:J

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->k:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->o:I

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->p:Z

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r:Ljava/lang/String;

    iput-object p3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->w:Ljava/lang/String;

    iput-object p4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->t:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/com.gameloft.android.GAND.GloftD2SS/pack"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->z:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->q:I

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    iput-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->s:J

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->w:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->x:Z

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->y:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->z:Ljava/lang/String;

    iput-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->B:J

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->C:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->F:Z

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->e:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->f:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->g:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->j:J

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->k:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->o:I

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->p:Z

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r:Ljava/lang/String;

    iput-object p3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->w:Ljava/lang/String;

    iput-object p4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    iput-wide p5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->s:J

    iput-boolean p7, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->p:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/com.gameloft.android.GAND.GloftD2SS/pack"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->z:Ljava/lang/String;

    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    return-object v0
.end method

.method private B()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->D:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->D:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    :goto_0
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->D:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->D:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->D:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->incrementConnectionTimeout()V

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->u:Ljava/io/DataInputStream;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->u:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->u:Ljava/io/DataInputStream;

    :cond_2
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->u:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private C()Ljava/util/ArrayList;
    .locals 4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".so"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)I
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".\\\\"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".\\"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\"

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/Utils;->getSplitName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->e()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->a(J)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->d()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    iget-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v3

    if-le v3, v2, :cond_2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v0

    :goto_1
    add-int/lit8 p2, p2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/Utils;->markAsSaved(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;)V

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->a()V

    return v2
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->o:I

    return-void
.end method

.method private a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->s:J

    return-void
.end method

.method private a(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;ZZLjava/lang/String;)Z
    .locals 13

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r:Ljava/lang/String;

    const-string v3, "patch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r:Ljava/lang/String;

    const-string v3, "main"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->marketPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".\\\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->e()J

    move-result-wide v5

    const-string v3, ".split_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move v12, v2

    move-object v2, v1

    move v1, v12

    :goto_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v1, :cond_7

    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/Utils;->hasBeenDownloaded(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->goodSize(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_c

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-eqz v8, :cond_c

    invoke-virtual {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-gtz v1, :cond_d

    :cond_2
    if-gtz v1, :cond_d

    if-nez p2, :cond_9

    const/4 v2, 0x0

    :goto_3
    if-nez v4, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    iget-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->x:Z

    if-nez v3, :cond_e

    invoke-virtual {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->d()J

    invoke-virtual {v7}, Ljava/io/File;->length()J

    invoke-virtual {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    invoke-virtual {v7}, Ljava/io/File;->length()J

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->j:J

    :cond_4
    :goto_4
    if-nez v4, :cond_5

    if-eqz v2, :cond_f

    :cond_5
    const/4 v1, 0x1

    :goto_5
    return v1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".\\\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->d()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-nez v4, :cond_1

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->i()Ljava/lang/String;

    move-result-object v3

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v2, v5, v6, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/CRC;->isValidChecksum(Ljava/lang/String;JI)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/MD5;->isValidChecksum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_3

    :cond_c
    if-lez v1, :cond_d

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/Utils;->hasBeenDownloaded(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;Z)Z

    :cond_d
    move v2, v3

    goto/16 :goto_3

    :cond_e
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->x:Z

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->j:J

    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    if-gtz v1, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v1

    goto/16 :goto_4

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_10
    move v12, v2

    move-object v2, v1

    move v1, v12

    goto/16 :goto_1
.end method

.method private b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->p:Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->w:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    return-void
.end method

.method public static goodSize(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;)Z
    .locals 10

    const/4 v1, 0x1

    const-wide/16 v8, 0x800

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".\\\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v4, v8

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    long-to-int v2, v4

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/Utils;->getSplitNumber(Ljava/lang/String;)I

    move-result v4

    if-ne v2, v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    rem-long/2addr v2, v8

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->d()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/Utils;->getSplitNumber(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x800

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static verifySplitChecksum(Z)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->z:Ljava/lang/String;

    return-object v0
.end method

.method private x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->w:Ljava/lang/String;

    return-object v0
.end method

.method private y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->x:Z

    return v0
.end method

.method private z()J
    .locals 2

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(Z)I
    .locals 14

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->o:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    const/4 v4, 0x0

    const/4 v1, -0x1

    const-string v3, ""

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_a

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    const/4 v5, 0x0

    invoke-direct {p0, v0, p1, v5, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;ZZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-wide v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->d()J

    move-result-wide v9

    add-long/2addr v5, v9

    iput-wide v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    iget-wide v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v7

    int-to-long v9, v7

    add-long/2addr v5, v9

    iput-wide v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v5

    if-le v5, v4, :cond_e

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v0

    :goto_2
    iget-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    iget-wide v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->j:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    iget-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    iget-wide v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->j:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    iget-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    iget-wide v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->j:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    move-object v13, v3

    move v3, v0

    move-object v0, v13

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move-object v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/Utils;->getSplitName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/Utils;->hasBeenDownloaded(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->goodSize(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_3
    const-string v5, ""

    if-eq v3, v5, :cond_d

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v7, v1

    :goto_4
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v7, v1, :cond_7

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    if-nez v5, :cond_4

    new-instance v5, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->n:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".\\\\"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ".\\"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\"

    const-string v12, "/"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;-><init>(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gameloft/android/GAND/GloftD2SS/installer/Utils;->getSplitName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->e()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->a(J)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-wide v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->d()J

    move-result-wide v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    iget-wide v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v9

    if-le v9, v6, :cond_6

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v6

    move v1, v6

    :goto_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v1

    goto/16 :goto_4

    :cond_5
    iget-wide v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/Utils;->markAsSaved(Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;)V

    :cond_6
    move v1, v6

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->a()V

    if-le v6, v4, :cond_d

    move v3, v6

    :goto_6
    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".split_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/Utils;->getSplitName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_7
    iget-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    iget-wide v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->j:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    goto/16 :goto_3

    :cond_8
    const/4 v1, -0x1

    const-string v0, ""

    goto :goto_7

    :cond_9
    iget-wide v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v0

    int-to-long v9, v0

    add-long/2addr v5, v9

    iput-wide v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    move-object v0, v3

    move v3, v4

    goto/16 :goto_3

    :cond_a
    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->g:J

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    const/16 v2, 0x14

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->f:J

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    const/16 v2, 0x14

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->e:J

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->k:Z

    :cond_b
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    move v3, v4

    goto :goto_6

    :cond_e
    move v0, v4

    goto/16 :goto_2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;

    invoke-direct {v0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    iget-wide v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->e:J

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->B:J

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->C:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->e()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v1, ".amz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    if-nez v0, :cond_3

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->c:I

    add-int/lit8 v4, v2, 0x4

    iget-wide v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;IJ)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    :goto_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->b()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    iput-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->i:Ljava/util/Vector;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->f:Z

    :try_start_0
    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const/16 v1, 0x228

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->addErrorNumber(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->f:Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    if-nez v0, :cond_5

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    iget-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->j:J

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;J)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->start()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    iget-boolean v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    iget-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->j:J

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;J)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->start()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->y:Z

    return v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->x:Z

    return-void
.end method

.method public final d()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->w:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->i:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->e:J

    return-wide v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->g:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->h:J

    return-wide v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->p:Z

    return v0
.end method

.method public final l()J
    .locals 2

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->B:J

    return-wide v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->C:I

    return v0
.end method

.method public final n()Z
    .locals 10

    const v3, 0x8000

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->u:Ljava/io/DataInputStream;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->B()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->D:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    invoke-virtual {v4, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;)Ljava/io/InputStream;

    invoke-virtual {v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V

    cmp-long v4, v5, v8

    if-lez v4, :cond_6

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/16 v7, 0x2e

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->lastIndexOf(II)I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    iput-wide v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->s:J

    iget-wide v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->s:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    cmp-long v2, v4, v8

    if-lez v2, :cond_0

    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->z:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->z:Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v4, ".amz"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    const-string v4, ".jar"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->u:Ljava/io/DataInputStream;

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->u:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->c:I

    move v4, v0

    :goto_2
    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->c:I

    if-ge v4, v2, :cond_7

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->c:I

    sub-int/2addr v2, v4

    if-le v2, v3, :cond_5

    move v2, v3

    :cond_5
    new-array v6, v2, [B

    iget-object v7, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->u:Ljava/io/DataInputStream;

    invoke-virtual {v7, v6}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v2, v4

    move v4, v2

    goto :goto_2

    :cond_6
    :try_start_3
    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->o:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->o:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v2, :cond_2

    move v0, v1

    goto/16 :goto_0

    :cond_7
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->u:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->u:Ljava/io/DataInputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v1

    goto/16 :goto_0

    :cond_8
    :try_start_5
    const-string v0, ".\\"

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->s:J

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->s:J

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".zip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_0
.end method

.method public final o()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->w:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&head=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->E:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    if-nez v2, :cond_1

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-direct {v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;-><init>()V

    iput-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->E:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    :goto_0
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->E:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v2, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;)Ljava/io/InputStream;

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->E:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    invoke-virtual {v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->w:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->E:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    const-string v1, "x-gl-version"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->E:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;

    const-string v1, "x-gl-generic"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/HttpClient;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->y:Z

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->a()V

    goto :goto_0
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->c()V

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->update()V

    :cond_1
    return-void
.end method

.method public final s()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->k:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    iget-boolean v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->e:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public final t()J
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->d()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    iget-boolean v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->f:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->b()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->H:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Downloader;->f:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->G:Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/SimpleDownload;->a()V

    goto :goto_0
.end method
