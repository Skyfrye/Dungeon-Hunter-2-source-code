.class final Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(IIZZLjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->a:I

    iput p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->b:I

    iput-boolean p3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->c:Z

    iput-boolean p4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->d:Z

    iput-object p5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->a:I

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->b:I

    iget-boolean v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->c:Z

    iget-boolean v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->d:Z

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->access$000(IIZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->b:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/j;->d:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const-string v3, "DungeonHunter2TInfo"

    invoke-static {v0, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceBoolean(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-direct {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;-><init>()V

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->n:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->n:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-direct {v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;)V

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->o:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    invoke-virtual {v2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->a(Ljava/lang/String;)V

    :goto_1
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/Tracker;->o:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

    invoke-virtual {v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getLastErrorCode()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "DungeonHunter2TInfo"

    invoke-static {v0, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
