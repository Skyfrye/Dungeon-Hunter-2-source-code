.class final Lcom/gameloft/android/GAND/GloftD2SS/installer/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/a;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/a;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/a;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->ba:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
