.class public final Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->b:J

    return-void
.end method

.method private declared-synchronized c()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->b:J

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized read()I
    .locals 6

    const-wide/16 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J

    add-long/2addr v0, v4

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x2

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->b:J

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    long-to-int p3, v0

    if-gtz p3, :cond_1

    const/4 v0, -0x2

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
