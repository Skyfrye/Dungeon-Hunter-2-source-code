.class final Lcom/gameloft/android/GAND/GloftD2SS/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/q;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const v6, 0x7f02003d

    const v5, 0x7f02003a

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    cmpg-float v3, v1, v4

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    cmpg-float v1, v2, v4

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_0

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->af:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/edit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    cmpg-float v3, v1, v4

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1

    cmpg-float v1, v2, v4

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    :cond_1
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
