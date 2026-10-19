.class final Lcom/gameloft/android/GAND/GloftD2SS/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/a;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/a;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$000(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/a;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->access$100(Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;)V

    const-wide/16 v0, 0x50

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/a;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLBluetoothService;->c()V

    return-void
.end method
