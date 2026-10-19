.class final Lcom/gameloft/android/GAND/GloftD2SS/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/ao;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ch:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aS:Landroid/widget/TextView;

    const-string v1, "Twitter"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->updateWebView()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cT:Z

    return-void

    :cond_0
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ci:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aS:Landroid/widget/TextView;

    const-string v1, "Facebook"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/ao;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;

    iget v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;->a:I

    if-lez v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aL:[Ljava/lang/String;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/ao;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;->a:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aS:Landroid/widget/TextView;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aL:[Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/ao;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;

    iget v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;->a:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aS:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
