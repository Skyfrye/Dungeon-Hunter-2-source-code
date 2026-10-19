.class final Lcom/gameloft/android/GAND/GloftD2SS/bw;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bw;->a:Z

    iput-object p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/bw;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/bw;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    const-string v1, ""

    iput-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->i:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    const-string v1, ""

    iput-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->j:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    const-string v1, ""

    iput-object v1, v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->k:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    iput-object v2, v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->i:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    iput-object v2, v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->j:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    iput-object v2, v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->k:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->setsUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/bw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->a(Ljava/lang/String;)Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->a()Z

    :cond_1
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->b()I

    move-result v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->getsResponse()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->getsResponse()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->getsResponse()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->access$000(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->U:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->access$100(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->V:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->f:Ljava/lang/String;

    sput-boolean v4, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->c:Z

    :goto_1
    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->b:Z

    return-void

    :cond_2
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->W:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->f:Ljava/lang/String;

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->c:Z

    goto :goto_1

    :cond_3
    const-string v0, "A network error has occurred.\nPlease try again later."

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->f:Ljava/lang/String;

    sput-boolean v4, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->c:Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
