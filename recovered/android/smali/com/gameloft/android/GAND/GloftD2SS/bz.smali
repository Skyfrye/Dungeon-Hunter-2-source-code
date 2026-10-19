.class final Lcom/gameloft/android/GAND/GloftD2SS/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bz;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bz;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bz;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->access$002(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;Z)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bz;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bz;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->b(Z)V

    goto :goto_0
.end method
