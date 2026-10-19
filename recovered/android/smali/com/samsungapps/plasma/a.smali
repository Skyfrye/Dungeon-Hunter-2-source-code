.class final Lcom/samsungapps/plasma/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "Plasma"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Exception;)V
    .locals 2

    sget-boolean v0, Lcom/samsungapps/plasma/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Plasma"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsungapps/plasma/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Plasma"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Plasma"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
