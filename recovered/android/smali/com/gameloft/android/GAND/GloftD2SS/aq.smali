.class final Lcom/gameloft/android/GAND/GloftD2SS/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/aq;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$GLiveJavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->updateWebView()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    return-void
.end method
