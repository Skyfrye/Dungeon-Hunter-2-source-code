.class final Lcom/gameloft/android/GAND/GloftD2SS/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/ah;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/al;->a:Lcom/gameloft/android/GAND/GloftD2SS/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->be:Z

    if-nez p2, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/16 v0, 0x28

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->by:I

    const/16 v0, 0x8

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bz:I

    sput v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aM:[Ljava/lang/String;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->A:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aN:[Ljava/lang/String;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->z:Ljava/lang/String;

    aput-object v2, v0, v1

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->B:I

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->C:I

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->clearFocus()V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/al;->a:Lcom/gameloft/android/GAND/GloftD2SS/ah;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/ah;->f:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aM:[Ljava/lang/String;

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://livewebapp.gameloft.com/glive/games/compare/uid/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://livewebapp.gameloft.com/glive/account/add-friend/uid/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
