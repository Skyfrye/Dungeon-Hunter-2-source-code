.class final Lcom/gameloft/android/GAND/GloftD2SS/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/y;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bo:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/y;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/y;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bN:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->k:Landroid/widget/AbsoluteLayout;

    const/4 v1, 0x2

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsoluteLayout;->removeViews(II)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    const/4 v0, 0x1

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aP:I

    return-void
.end method
