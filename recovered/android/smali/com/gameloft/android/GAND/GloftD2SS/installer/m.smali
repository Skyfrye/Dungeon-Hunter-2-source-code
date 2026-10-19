.class final Lcom/gameloft/android/GAND/GloftD2SS/installer/m;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/m;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/m;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$300(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/DownloadComponent;->q()V

    goto :goto_0

    :cond_0
    return-void
.end method
