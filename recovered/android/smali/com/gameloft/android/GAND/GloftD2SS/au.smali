.class final Lcom/gameloft/android/GAND/GloftD2SS/au;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/au;->a:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    sput p1, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->r:I

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void

    :pswitch_0
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->q:Z

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->r:I

    if-eq v0, v2, :cond_1

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_1
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/au;->a:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;

    const-class v2, Lcom/gameloft/android/GAND/GloftD2SS/DungeonHunter2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/au;->a:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ringing ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->d:Z

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->q:Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/au;->a:Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/IGPActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
