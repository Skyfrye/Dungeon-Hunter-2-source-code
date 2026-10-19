.class final Lcom/gameloft/android/GAND/GloftD2SS/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/ac;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const v7, 0x7f020035

    const/4 v6, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

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

    const v1, 0x7f020036

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

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

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->e:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->B:I

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->C:I

    invoke-direct {v2, v3, v4, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/widget/AbsoluteLayout;->clearFocus()V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2}, Landroid/widget/AbsoluteLayout;->requestFocus()Z

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    if-eq v2, v6, :cond_1

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    :cond_1
    const/16 v2, 0x37

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->by:I

    :goto_1
    const/16 v2, 0x8

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bz:I

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aP:I

    if-ge v1, v6, :cond_0

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->E:F

    const/high16 v3, 0x42340000    # 45.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->F:F

    const/high16 v4, 0x42380000    # 46.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->B:I

    sget v5, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->E:F

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->F:F

    const/high16 v6, 0x41c80000    # 25.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->k:Landroid/widget/AbsoluteLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bA:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v1}, Landroid/widget/AbsoluteLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x28

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->by:I

    goto :goto_1

    :pswitch_2
    cmpg-float v1, v2, v5

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_3

    cmpg-float v1, v3, v5

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-lez v1, :cond_4

    :cond_3
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_4
    check-cast p1, Landroid/widget/ImageButton;

    const v1, 0x7f020036

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
