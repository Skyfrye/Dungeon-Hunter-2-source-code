.class final Lcom/gameloft/android/GAND/GloftD2SS/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/ay;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->a(Z)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    invoke-virtual {v0}, Lcom/samsung/zirconia/Zirconia;->getError()I

    move-result v1

    const-string v0, ""

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0x17

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_6

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0x51

    if-ne v1, v2, :cond_7

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0x15

    if-ne v1, v2, :cond_8

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0x16

    if-ne v1, v2, :cond_9

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0x32

    if-ne v1, v2, :cond_a

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0x47

    if-ne v1, v2, :cond_b

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/ay;->b:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ba;->a:Lcom/gameloft/android/GAND/GloftD2SS/ay;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ay;->a:Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Zirconia_DRM;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method
