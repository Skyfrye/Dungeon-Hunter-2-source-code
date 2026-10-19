.class final Lcom/gameloft/android/GAND/GloftD2SS/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/ar;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x1

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->A:Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bm:Z

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bm:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/as;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/as;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bn:Z

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bn:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/at;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/at;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
