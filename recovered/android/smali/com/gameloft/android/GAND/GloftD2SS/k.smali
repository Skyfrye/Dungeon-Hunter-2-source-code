.class final Lcom/gameloft/android/GAND/GloftD2SS/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/k;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const v7, 0x7f020008

    const v6, 0x7f020003

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    cmpg-float v4, v2, v5

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    cmpg-float v2, v3, v5

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_0

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cf:Z

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/k;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    const-class v3, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/k;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-virtual {v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->finish()V

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    cmpg-float v1, v2, v5

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_1

    cmpg-float v1, v3, v5

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-lez v1, :cond_2

    :cond_1
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
