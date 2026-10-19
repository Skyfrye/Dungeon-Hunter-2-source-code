.class final Lcom/gameloft/android/GAND/GloftD2SS/installer/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/c;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/c;->a:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v2, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b(I)V

    return-void

    :catch_0
    move-exception v1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    goto :goto_0
.end method
