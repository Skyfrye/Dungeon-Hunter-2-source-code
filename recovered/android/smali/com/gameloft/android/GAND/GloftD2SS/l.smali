.class final Lcom/gameloft/android/GAND/GloftD2SS/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/l;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f020053

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    check-cast p1, Landroid/widget/ImageButton;

    const v1, 0x7f02004e

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    cmpg-float v4, v2, v6

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    cmpg-float v2, v3, v6

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    :cond_0
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aV:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aW:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aX:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->o:I

    if-ne v2, v0, :cond_2

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->g:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sput v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->o:I

    :cond_2
    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
