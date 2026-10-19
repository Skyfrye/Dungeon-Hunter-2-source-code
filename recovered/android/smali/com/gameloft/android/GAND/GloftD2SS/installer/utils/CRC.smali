.class public Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/CRC;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcChecksum(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/util/zip/CheckedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v4, v0, v1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v0, 0x80

    :try_start_1
    new-array v0, v0, [B

    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v0, v2

    goto :goto_0
.end method

.method public static calcChecksum(Ljava/lang/String;I)J
    .locals 8

    const-wide/16 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v4, Ljava/util/zip/CheckedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v1, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    mul-int/lit16 v1, v1, 0x800

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/CheckedInputStream;->skip(J)J

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v0, 0x80

    :try_start_2
    new-array v5, v0, [B

    move-wide v0, v2

    :goto_0
    if-eqz p1, :cond_1

    const-wide/16 v6, 0x800

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_2

    const-wide/16 v6, 0x80

    add-long/2addr v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v2

    :goto_1
    return-wide v0

    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide v0, v2

    goto :goto_1
.end method

.method public static isValidChecksum(Ljava/lang/String;J)Z
    .locals 3

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/CRC;->calcChecksum(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidChecksum(Ljava/lang/String;JI)Z
    .locals 3

    invoke-static {p0, p3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/CRC;->calcChecksum(Ljava/lang/String;I)J

    move-result-wide v0

    if-gtz p3, :cond_0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
