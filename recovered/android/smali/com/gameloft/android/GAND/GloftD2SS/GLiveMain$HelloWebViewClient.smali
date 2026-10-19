.class final Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method private constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V
    .locals 1

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V

    return-void
.end method

.method private static CheckValidity(Ljava/lang/String;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/leaderboards/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "http://livewebapp.gameloft.com/glive/leaderboards"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_0
    :goto_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/leaderboards/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aI:Z

    if-eqz v0, :cond_1

    sput-boolean v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/ranking/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "http://livewebapp.gameloft.com/glive/ranking/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_2
    :goto_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/ranking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aI:Z

    if-eqz v0, :cond_3

    sput-boolean v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fb_send/yes/fb_q/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/inv/fb_q/1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/src/fb_q/1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    :cond_5
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    :cond_6
    const-string v0, "https://www.facebook.com/login.php?login_attempt=1&popup=1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fb_send/yes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fb_send/yes/fb_in/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    :cond_9
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/?iDelete=1&tweet=sent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?iDelete=1&tweet=sent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://livewebapp.gameloft.com/glive/games/trophies/gid/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://livewebapp.gameloft.com/glive/games/trophies/gid/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/id/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "/fb_new/yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_e
    const-string v0, "http://livewebapp.gameloft.com/glive/account/index/uid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_f

    const-string v0, "Delete="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_f

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_f
    const-string v0, "http://livewebapp.gameloft.com/glive/friends/?iDelete="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_10

    const-string v0, "http://livewebapp.gameloft.com/glive/friends?iDelete="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_12

    :cond_10
    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    :cond_11
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    :cond_12
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/login/recover-password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_13
    const-string v0, "http://livewebapp.gameloft.com/glive/account/username"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "http://livewebapp.gameloft.com/glive/account/password"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "http://livewebapp.gameloft.com/glive/account/email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_15
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/account/avatar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "http://livewebapp.gameloft.com/glive/account/edit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aI:Z

    if-nez v0, :cond_16

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    :cond_16
    const-string v0, "http://livewebapp.gameloft.com/glive/friends?select=yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/index/select/yes?user_name="

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "http://livewebapp.gameloft.com/glive/signal-back"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_18
    const-string v0, "http://livewebapp.gameloft.com/glive/friends/show-invite-email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_19
    const-string v0, "http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_1a
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v1, "http://wapshop.gameloft.com/wifi/hdplus_full_shop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_1b
    const-string v0, "http://ingameads.gameloft.com/redir/?from"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "market://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_1d
    return-void

    :cond_1e
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/leaderboards"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    goto/16 :goto_0

    :cond_1f
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/ranking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    goto/16 :goto_1
.end method

.method private static ReSetStack(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/index"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://livewebapp.gameloft.com/glive/friends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://livewebapp.gameloft.com/glive/games"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 9

    const/high16 v8, 0x42200000    # 40.0f

    const/16 v7, 0xf

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/index"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://livewebapp.gameloft.com/glive/friends"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://livewebapp.gameloft.com/glive/games"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    sput-object p2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    :cond_3
    const-string v0, "facebook.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_3a

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ci:Z

    const-string v0, "twitter.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_3b

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ch:Z

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ci:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ch:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->updateWebView()V

    :cond_5
    const-string v0, "javascript:window.GLIVE.getUserID(sUserUid)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getInboxMessages(iInboxMessages)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getGamesMessages(iGamesMessages)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getFriendsMessages(iFriendsMessages)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getGameId(iGameId)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getSubject(sSubject)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.checkIsFriend(bIsFriend)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.showAddFriendOption(bShowAdd)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.showRateOption(bShowEvaluate)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getCurentUserUid(iUserId)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getCurentUserName(sUserName)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.showTitle(sTitle)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v3, "http://livewebapp.gameloft.com/glive/leaderboards/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "http://livewebapp.gameloft.com/glive/leaderboards"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_6
    :goto_4
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v3, "http://livewebapp.gameloft.com/glive/leaderboards/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aI:Z

    if-eqz v0, :cond_7

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_7
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v3, "http://livewebapp.gameloft.com/glive/ranking/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "http://livewebapp.gameloft.com/glive/ranking/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_8
    :goto_5
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v3, "http://livewebapp.gameloft.com/glive/ranking"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aI:Z

    if-eqz v0, :cond_9

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/fb_send/yes/fb_q/1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/inv/fb_q/1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/src/fb_q/1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    :cond_b
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    :cond_c
    const-string v0, "https://www.facebook.com/login.php?login_attempt=1&popup=1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/fb_send/yes"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/fb_send/yes/fb_in/1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    :cond_f
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/?iDelete=1&tweet=sent"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?iDelete=1&tweet=sent"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://livewebapp.gameloft.com/glive/games/trophies/gid/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/tid/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://livewebapp.gameloft.com/glive/games/trophies/gid/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/id/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "/fb_new/yes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_14
    const-string v0, "http://livewebapp.gameloft.com/glive/account/index/uid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_15

    const-string v0, "Delete="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_15

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_15
    const-string v0, "http://livewebapp.gameloft.com/glive/friends/?iDelete="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_16

    const-string v0, "http://livewebapp.gameloft.com/glive/friends?iDelete="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_18

    :cond_16
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    :cond_17
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    :cond_18
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v3, "http://livewebapp.gameloft.com/glive/login/recover-password"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_19
    const-string v0, "http://livewebapp.gameloft.com/glive/account/username"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "http://livewebapp.gameloft.com/glive/account/password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "http://livewebapp.gameloft.com/glive/account/email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_1b
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v3, "http://livewebapp.gameloft.com/glive/account/avatar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "http://livewebapp.gameloft.com/glive/account/edit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aI:Z

    if-nez v0, :cond_1c

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    :cond_1c
    const-string v0, "http://livewebapp.gameloft.com/glive/friends?select=yes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/index/select/yes?user_name="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "http://livewebapp.gameloft.com/glive/signal-back"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_1e
    const-string v0, "http://livewebapp.gameloft.com/glive/friends/show-invite-email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_1f
    const-string v0, "http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_20
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v3, "http://wapshop.gameloft.com/wifi/hdplus_full_shop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_21
    const-string v0, "http://ingameads.gameloft.com/redir/?from"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    :cond_23
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aI:Z

    if-eqz v0, :cond_3e

    sput-object p2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aI:Z

    :cond_24
    :goto_6
    const-string v0, "http://livewebapp.gameloft.com/glive/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aU:Landroid/widget/ImageButton;

    const v3, 0x7f02004e

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aV:Landroid/widget/ImageButton;

    const v3, 0x7f020053

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aW:Landroid/widget/ImageButton;

    const v3, 0x7f020053

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aX:Landroid/widget/ImageButton;

    const v3, 0x7f020053

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_25
    const-string v0, "http://livewebapp.gameloft.com/glive/games/show-game/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_26
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bi:Z

    if-nez v0, :cond_27

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bi:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->E:F

    const/high16 v4, 0x42340000    # 45.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->F:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aZ:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_27
    :goto_7
    const-string v0, "http://livewebapp.gameloft.com/glive/account/index/uid/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "javascript:window.GLIVE.getCurentUserName(sUserName)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/gameloft/android/GAND/GloftD2SS/ar;

    invoke-direct {v3, p0}, Lcom/gameloft/android/GAND/GloftD2SS/ar;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_8
    const-string v0, "http://livewebapp.gameloft.com/glive/friends"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "http://livewebapp.gameloft.com/glive/friends?iDelete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_28

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/index/page"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_46

    :cond_28
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bj:Z

    if-nez v0, :cond_29

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bj:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->E:F

    const/high16 v4, 0x42340000    # 45.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->F:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ba:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_29
    :goto_9
    const-string v0, "http://livewebapp.gameloft.com/glive/login/index"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cl:Z

    if-nez v0, :cond_2a

    const-string v0, "http://livewebapp.gameloft.com/glive/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "http://livewebapp.gameloft.com/glive/index/index"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "http://livewebapp.gameloft.com/glive/login"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "http://livewebapp.gameloft.com/glive/login?iDelete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_2a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bk:Z

    if-nez v0, :cond_2b

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bk:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->E:F

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->F:F

    const/high16 v5, 0x42340000    # 45.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bb:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b
    :goto_a
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->af:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4a

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bn:Z

    if-nez v0, :cond_2c

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bn:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->E:F

    const/high16 v4, 0x42f40000    # 122.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->F:F

    const/high16 v5, 0x42340000    # 45.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->i:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2c
    :goto_b
    const-string v0, "http://livewebapp.gameloft.com/glive/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "http://livewebapp.gameloft.com/glive/index/index"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cl:Z

    if-eqz v0, :cond_4c

    :cond_2d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bl:Z

    if-nez v0, :cond_2e

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bl:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->E:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->F:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bc:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2e
    const-string v0, "javascript:window.GLIVE.getUserName(strUserName)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getPassword(strPassword)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getAutoLogin(blnRememberMe)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_c
    const-string v0, "http://livewebapp.gameloft.com/glive/friends/show-invite-email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "www.facebook.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_30

    :cond_2f
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearFocus()V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    :cond_30
    const-string v0, "http://livewebapp.gameloft.com/glive/messages/index"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_4e

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bg:Z

    if-nez v0, :cond_31

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bg:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->E:F

    const/high16 v4, 0x42340000    # 45.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->F:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aY:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_31
    :goto_d
    const-string v0, "http://livewebapp.gameloft.com/glive/messages/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/show/mid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/show-sent/mid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    :cond_32
    const-string v0, "http://livewebapp.gameloft.com/glive/messages/friend/uid/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/play/id/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_33
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    :cond_34
    const-string v0, "http://livewebapp.gameloft.com/glive/logout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "http://livewebapp.gameloft.com/glive/login?iDelete=2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_35
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cj:Z

    const-string v0, "0"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->az:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->av:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aw:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->as:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ax:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->at:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ay:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->au:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a()V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->needToRemoveFacebook()Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "http://livewebapp.gameloft.com/glive/?lg=LANG&country=COUNTRY_DETECTED&d=DEVICE_ANDROID&f=FIRMWARE_ANDROID&udid=UDIDPHONE&GGI=GGIGAME&device_token=DEV_TOKEN&username=USER_NAME&pass=PASSWORD&remember_me=AUTOLOGIN&type=ANDROID&height=SCREEN_HEIGHT"

    const-string v3, "LANG"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cp:[Ljava/lang/String;

    sget v5, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    :goto_e
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ap:Ljava/lang/String;

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ap:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->as:Ljava/lang/String;

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->as:Ljava/lang/String;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->at:Ljava/lang/String;

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->at:Ljava/lang/String;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ao:Ljava/lang/String;

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ao:Ljava/lang/String;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aq:Ljava/lang/String;

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aq:Ljava/lang/String;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v5, "COUNTRY_DETECTED"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v4, "UDIDPHONE"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v3, "GGIGAME"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ao:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v3, "DEV_TOKEN"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ar:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v3, "USER_NAME"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->as:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v3, "PASSWORD"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->at:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v3, "AUTOLOGIN"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->az:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v3, "DEVICE_ANDROID"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ap:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v3, "FIRMWARE_ANDROID"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aq:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v3, "SCREEN_HEIGHT"

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->D:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&enc=1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v3, "remember_me=1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_36

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    const-string v3, "remember_me=1"

    const-string v4, "remember_me="

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    :cond_36
    const-string v0, "http://livewebapp.gameloft.com/glive/login"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cj:Z

    :cond_37
    const-string v0, "http://livewebapp.gameloft.com/glive/info/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "http://livewebapp.gameloft.com/glive/info"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_52

    :cond_38
    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cg:Z

    :goto_f
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_39

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    :cond_39
    return-void

    :cond_3a
    move v0, v2

    goto/16 :goto_2

    :cond_3b
    move v0, v2

    goto/16 :goto_3

    :cond_3c
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v3, "http://livewebapp.gameloft.com/glive/leaderboards"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput-object p2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    goto/16 :goto_4

    :cond_3d
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v3, "http://livewebapp.gameloft.com/glive/ranking"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sput-object p2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aK:Z

    goto/16 :goto_5

    :cond_3e
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aJ:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3f

    sput-object p2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    goto/16 :goto_6

    :cond_3f
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_24

    const-string v0, "wapshop.gameloft.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_24

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aD:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    new-instance v3, Ljava/lang/Integer;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    goto/16 :goto_6

    :cond_40
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_24

    const-string v0, "http://twitter.com/oauth/authorize?oauth_token"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "https://www.facebook.com/login.php?api_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aG:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aH:Ljava/util/Stack;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    goto/16 :goto_6

    :cond_41
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bi:Z

    if-eqz v0, :cond_42

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aZ:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_42
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bi:Z

    goto/16 :goto_7

    :cond_43
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bm:Z

    if-eqz v0, :cond_44

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bd:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_44
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bm:Z

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bn:Z

    if-eqz v0, :cond_45

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_45
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bn:Z

    goto/16 :goto_8

    :cond_46
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bj:Z

    if-eqz v0, :cond_47

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ba:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_47
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bj:Z

    goto/16 :goto_9

    :cond_48
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bk:Z

    if-eqz v0, :cond_49

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bb:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_49
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bk:Z

    goto/16 :goto_a

    :cond_4a
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bn:Z

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_4b
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bn:Z

    goto/16 :goto_b

    :cond_4c
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bl:Z

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bc:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_4d
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bl:Z

    goto/16 :goto_c

    :cond_4e
    const-string v0, "http://livewebapp.gameloft.com/glive/messages/sent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_4f

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/friends"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_4f

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/plays"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_4f

    const-string v0, "http://livewebapp.gameloft.com/glive/games"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_4f

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_4f

    const-string v0, "http://livewebapp.gameloft.com/glive/login"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_4f

    const-string v0, "http://livewebapp.gameloft.com/glive/?lg="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_4f

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/show/mid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_31

    :cond_4f
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bg:Z

    if-eqz v0, :cond_50

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aY:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_50
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bg:Z

    goto/16 :goto_d

    :cond_51
    const-string v0, "http://livewebapp.gameloft.com/glive/?lg=LANG&country=COUNTRY_DETECTED&d=DEVICE_ANDROID&f=FIRMWARE_ANDROID&udid=UDIDPHONE&GGI=GGIGAME&device_token=DEV_TOKEN&username=USER_NAME&pass=PASSWORD&remember_me=AUTOLOGIN&type=ANDROID&height=SCREEN_HEIGHT&fb=1"

    const-string v3, "LANG"

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cp:[Ljava/lang/String;

    sget v5, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->al:Ljava/lang/String;

    goto/16 :goto_e

    :cond_52
    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cg:Z

    goto/16 :goto_f

    :catch_0
    move-exception v0

    goto/16 :goto_10
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cN:[I

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bQ:I

    aget v2, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "http://livewebapp.gameloft.com/scripts/banners_click.php"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cl:Z

    :goto_0
    const-string v2, "http://dl.gameloft.com"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_4

    invoke-direct {p0, p2}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a(Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_0
    sget-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cl:Z

    if-eqz v2, :cond_1

    const-string v2, "http://ingameads.gameloft.com/redir/?from"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "market://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cl:Z

    goto :goto_0

    :cond_3
    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cl:Z

    goto :goto_0

    :cond_4
    const-string v2, "http://ingameads.gameloft.com/redir/?from"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p2}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_5
    const-string v2, "youtube.com"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_6

    invoke-direct {p0, p2}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_6
    const-string v2, "market://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p2}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_7
    const-string v2, "http://livewebapp.gameloft.com/glive/signal-back"

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->b:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :try_start_0
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->B:I

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->C:I

    invoke-direct {v2, v3, v4, v0, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/widget/AbsoluteLayout;->clearFocus()V

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ck:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->requestFocus()Z

    move v0, v1

    goto :goto_1

    :cond_8
    const-string v2, "http://livewebapp.gameloft.com/glive/friends/show-invite-email"

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->e:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->B:I

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->C:I

    invoke-direct {v2, v3, v4, v0, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->n:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bh:Z

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bN:Landroid/widget/EditText;

    const-string v3, "john@example.com, alex@example.com"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bN:Landroid/widget/EditText;

    const v3, -0x858586

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bN:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bL:Landroid/webkit/WebView;

    invoke-virtual {v2, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bO:Z

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bP:Z

    :goto_3
    move v0, v1

    goto/16 :goto_1

    :cond_9
    const-string v2, "http://livewebapp.gameloft.com/glive/friends/index/select/yes?user_name="

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "http://livewebapp.gameloft.com/glive/friends/index/select/yes/?user_name="

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string v2, "user_name="

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "&user_id="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aM:[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    aget-object v5, v2, v0

    aput-object v5, v3, v4

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aN:[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    aget-object v2, v2, v1

    aput-object v2, v3, v4

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->b:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->B:I

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->C:I

    invoke-direct {v2, v3, v4, v0, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/widget/AbsoluteLayout;->clearFocus()V

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->ck:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->m:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain$HelloWebViewClient;->b:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aM:[Ljava/lang/String;

    sget v3, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aO:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_b
    const-string v2, "http://livewebapp.gameloft.com/glive/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aQ:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->aF:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_c
    const-string v0, "about:blank"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_0
    move-exception v2

    goto/16 :goto_2
.end method
