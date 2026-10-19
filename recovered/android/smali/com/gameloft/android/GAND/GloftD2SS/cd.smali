.class final Lcom/gameloft/android/GAND/GloftD2SS/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/cd;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :sswitch_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
