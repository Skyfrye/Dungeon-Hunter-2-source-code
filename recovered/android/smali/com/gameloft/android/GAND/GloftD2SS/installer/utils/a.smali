.class public final Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/a;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:Ljava/util/zip/Checksum;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/a;->a:Ljava/util/zip/Checksum;

    return-void
.end method

.method private a()Ljava/util/zip/Checksum;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/a;->a:Ljava/util/zip/Checksum;

    return-object v0
.end method


# virtual methods
.method public final read()I
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/a;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/a;->a:Ljava/util/zip/Checksum;

    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/a;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/a;->a:Ljava/util/zip/Checksum;

    invoke-interface {v1, p1, p2, v0}, Ljava/util/zip/Checksum;->update([BII)V

    :cond_0
    return v0
.end method

.method public final skip(J)J
    .locals 12

    const-wide/16 v10, 0x400

    const/4 v9, 0x0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p1, p2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    new-array v5, v2, [B

    move v4, v2

    move-wide v2, v0

    :goto_1
    cmp-long v6, p1, v0

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/a;->in:Ljava/io/InputStream;

    invoke-virtual {v6, v5, v9, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v4, -0x1

    if-eq v6, v4, :cond_1

    int-to-long v7, v6

    sub-long/2addr p1, v7

    int-to-long v7, v6

    add-long/2addr v2, v7

    invoke-static {p1, p2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v4, v7

    iget-object v7, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/a;->a:Ljava/util/zip/Checksum;

    invoke-interface {v7, v5, v9, v6}, Ljava/util/zip/Checksum;->update([BII)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/a;->a:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->reset()V

    move-wide v0, v2

    goto :goto_0
.end method
