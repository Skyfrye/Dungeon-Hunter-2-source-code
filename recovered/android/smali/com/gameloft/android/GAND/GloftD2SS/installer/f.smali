.class final Lcom/gameloft/android/GAND/GloftD2SS/installer/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/f;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/f;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/f;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/f;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v2, 0x29

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/f;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/f;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget-wide v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->k:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/f;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
