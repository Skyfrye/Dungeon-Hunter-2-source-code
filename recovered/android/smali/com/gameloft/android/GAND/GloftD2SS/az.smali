.class final Lcom/gameloft/android/GAND/GloftD2SS/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/ay;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/az;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/az;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->a(Z)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/az;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/az;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->a(Ljava/lang/String;)V

    return-void
.end method
