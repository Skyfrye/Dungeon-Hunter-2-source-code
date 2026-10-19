.class public final Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/zip/CRC32;

.field private b:Ljava/util/zip/CheckedInputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->a:Ljava/util/zip/CRC32;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->b:Ljava/util/zip/CheckedInputStream;

    :try_start_0
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->a:Ljava/util/zip/CRC32;

    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->a:Ljava/util/zip/CRC32;

    invoke-direct {v0, v1, v2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->b:Ljava/util/zip/CheckedInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->b:Ljava/util/zip/CheckedInputStream;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/CheckedInputStream;->skip(J)J

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->b:Ljava/util/zip/CheckedInputStream;

    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->b:Ljava/util/zip/CheckedInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->b:Ljava/util/zip/CheckedInputStream;

    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->b:Ljava/util/zip/CheckedInputStream;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->a:Ljava/util/zip/CRC32;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 2

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/i;->b()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
