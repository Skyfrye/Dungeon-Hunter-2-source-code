.class final Lcom/gameloft/android/GAND/GloftD2SS/installer/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/i;->c:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iput p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/i;->a:I

    iput-boolean p3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/i;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/i;->c:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/i;->a:I

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/i;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
