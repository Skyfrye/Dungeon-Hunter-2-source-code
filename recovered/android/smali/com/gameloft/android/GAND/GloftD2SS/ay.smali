.class final Lcom/gameloft/android/GAND/GloftD2SS/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/zirconia/LicenseCheckListener;


# instance fields
.field a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

.field b:Lcom/samsung/zirconia/Zirconia;

.field c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;Lcom/samsung/zirconia/Zirconia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    return-void
.end method


# virtual methods
.method public final licenseCheckedAsInvalid()V
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->c:Landroid/os/Handler;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/ba;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/ba;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/ay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final licenseCheckedAsValid()V
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->c:Landroid/os/Handler;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/az;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/az;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/ay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
