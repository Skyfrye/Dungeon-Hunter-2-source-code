.class final Lcom/gameloft/android/GAND/GloftD2SS/installer/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;->c:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;->c:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;->c:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v3, 0x7f0b000e

    invoke-virtual {v0, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0012

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const v0, 0x7f0b0011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/e;->c:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method
