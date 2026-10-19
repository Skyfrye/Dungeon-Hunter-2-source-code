.class final Lcom/gameloft/android/GAND/GloftD2SS/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/by;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/by;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
