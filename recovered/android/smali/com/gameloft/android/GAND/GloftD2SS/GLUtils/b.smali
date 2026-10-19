.class final Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->access$002(Landroid/webkit/WebView;)Landroid/webkit/WebView;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->access$000()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->access$102(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->access$002(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GL_EMU_001"

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->access$102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
