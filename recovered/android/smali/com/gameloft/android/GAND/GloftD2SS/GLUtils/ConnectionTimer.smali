.class public Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/ConnectionTimer;
.super Ljava/util/TimerTask;


# static fields
.field private static a:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public static start(J)V
    .locals 2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/ConnectionTimer;->a:Ljava/util/Timer;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/ConnectionTimer;

    invoke-direct {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/ConnectionTimer;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public static stop()V
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/ConnectionTimer;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;->getWHTTP()Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->b()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->v:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/HTTP;->u:Z

    return-void
.end method
