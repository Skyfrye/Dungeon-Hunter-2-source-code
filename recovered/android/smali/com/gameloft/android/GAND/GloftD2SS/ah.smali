.class final Lcom/gameloft/android/GAND/GloftD2SS/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:[[Ljava/lang/CharSequence;

.field final synthetic b:[[Ljava/lang/CharSequence;

.field final synthetic c:[[Ljava/lang/CharSequence;

.field final synthetic d:[[Ljava/lang/CharSequence;

.field final synthetic e:[[Ljava/lang/CharSequence;

.field final synthetic f:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;[[Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->f:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->a:[[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->b:[[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->c:[[Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->d:[[Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->e:[[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const v7, 0x7f02003c

    const v6, 0x7f02003b

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    cmpg-float v0, v3, v5

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-gtz v0, :cond_0

    cmpg-float v0, v4, v5

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_0

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->be:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->be:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->f:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    iget-object v3, v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aT:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->f:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cz:[I

    sget v5, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget v4, v4, v5

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->v:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->x:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->a:[[Ljava/lang/CharSequence;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget-object v2, v2, v3

    new-instance v3, Lcom/gameloft/android/GAND/GloftD2SS/ai;

    invoke-direct {v3, p0}, Lcom/gameloft/android/GAND/GloftD2SS/ai;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/ah;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    new-instance v2, Lcom/gameloft/android/GAND/GloftD2SS/an;

    invoke-direct {v2, p0}, Lcom/gameloft/android/GAND/GloftD2SS/an;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/ah;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->c:[[Ljava/lang/CharSequence;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget-object v2, v2, v3

    new-instance v3, Lcom/gameloft/android/GAND/GloftD2SS/ak;

    invoke-direct {v3, p0}, Lcom/gameloft/android/GAND/GloftD2SS/ak;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/ah;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->w:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->d:[[Ljava/lang/CharSequence;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget-object v2, v2, v3

    new-instance v3, Lcom/gameloft/android/GAND/GloftD2SS/al;

    invoke-direct {v3, p0}, Lcom/gameloft/android/GAND/GloftD2SS/al;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/ah;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->e:[[Ljava/lang/CharSequence;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget-object v2, v2, v3

    new-instance v3, Lcom/gameloft/android/GAND/GloftD2SS/am;

    invoke-direct {v3, p0}, Lcom/gameloft/android/GAND/GloftD2SS/am;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/ah;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_2
    cmpg-float v0, v3, v5

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-gtz v0, :cond_5

    cmpg-float v0, v4, v5

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_6

    :cond_5
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_2
    move v0, v1

    goto/16 :goto_0

    :cond_6
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
