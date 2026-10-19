.class public Lcom/gameloft/android/GAND/GloftD2SS/ApplicationSetUp;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ApplicationSetUp"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/ApplicationSetUp;->a:Ljava/lang/String;

    const-string v0, "GA_DEBUG"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/ApplicationSetUp;->b:Ljava/lang/String;

    const-string v0, "true"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/ApplicationSetUp;->c:Ljava/lang/String;

    const-string v0, "false"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/ApplicationSetUp;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "GA_DEBUG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/ApplicationSetUp;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "GA_DEBUG"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
