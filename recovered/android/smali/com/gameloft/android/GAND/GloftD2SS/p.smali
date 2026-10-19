.class final Lcom/gameloft/android/GAND/GloftD2SS/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/p;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const v7, 0x7f020005

    const v6, 0x7f020004

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    cmpg-float v4, v0, v5

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_0

    cmpg-float v0, v3, v5

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aI:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->o:I

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aR:Z

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :pswitch_2
    cmpg-float v2, v0, v5

    if-ltz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_4

    cmpg-float v0, v3, v5

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_5

    :cond_4
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_5
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
