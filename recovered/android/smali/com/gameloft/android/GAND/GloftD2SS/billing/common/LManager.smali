.class public Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;
.super Ljava/lang/Object;


# static fields
.field private static F:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device; = null

.field public static final a:Ljava/lang/String; = "DungeonHunter2BInfo"

.field public static final b:Ljava/lang/String; = "PREFERENCES_GAME_MESSAGE_SEND"

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static h:Z


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private G:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/XPlayer;

.field private H:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

.field private final I:J

.field private final J:I

.field private final K:I

.field private final L:I

.field private final M:J

.field private final N:J

.field private final O:J

.field private final P:B

.field private final Q:B

.field private final R:B

.field public final f:I

.field public final g:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PREFERENCES_GAME_UNLOCKED"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->i:Ljava/lang/String;

    const-string v0, "PREFERENCES_NEED_VALIDATION_ON_SERVER"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->j:Ljava/lang/String;

    const-string v0, "PREFERENCES_GAME_UNLOCK_CODE"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->k:Ljava/lang/String;

    const-string v0, "PREFERENCES_GAME_RANDOM_CODE"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->l:Ljava/lang/String;

    const-string v0, "PREFERENCES_GAME_SERVER_NUMBER"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->m:Ljava/lang/String;

    const-string v0, "PREFERENCES_USER_IDVALID"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->n:Ljava/lang/String;

    const-string v0, "PREFERENCES_USER_CC"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->o:Ljava/lang/String;

    const-string v0, "PREFERENCES_USER_CC_LAST_NUMBERS"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->p:Ljava/lang/String;

    const-string v0, "PREFERENCES_USER_EMAIL"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->q:Ljava/lang/String;

    const-string v0, "PREFERENCES_USER_PASSWORD"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->r:Ljava/lang/String;

    const-string v0, "PREFERENCES_USER_LAST_PAYMENT"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->s:Ljava/lang/String;

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->f:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->g:I

    iput v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->t:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->u:I

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->v:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->w:I

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->x:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->y:I

    const-string v0, "PREFERENCES_FULL_LICENSE"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->z:Ljava/lang/String;

    const-string v0, "PREFERENCES_MRC_ACTIVE"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->A:Ljava/lang/String;

    const-string v0, "PREFERENCES_MRC_COUNT"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->B:Ljava/lang/String;

    const-string v0, "PREFERENCES_MRC_VALID"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->C:Ljava/lang/String;

    const-string v0, "PREFERENCES_MRC_LICENSE"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->D:Ljava/lang/String;

    const-string v0, "$JS6&GJH5$3%H&4@KECVF$56$Y$N792$&44O8B"

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->E:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->H:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->I:J

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->J:I

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->K:I

    const/16 v0, 0x1f

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->L:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->M:J

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->N:J

    const-wide v0, 0x9fa52400L

    iput-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->O:J

    iput-byte v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->P:B

    iput-byte v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->Q:B

    iput-byte v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->R:B

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->F:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;-><init>()V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->F:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->H:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "H229"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->F:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->H:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    :cond_1
    return-void
.end method

.method private static ContainsUnlockCode(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "("

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static TrackingPurchaseFailed$134632()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static TrackingPurchaseSuccess$134632()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private a()I
    .locals 2

    const-string v0, "PREFERENCES_MRC_COUNT"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;I)I
    .locals 4

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "H229"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->F:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->H:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    const-string v0, "DungeonHunter2BInfo"

    invoke-static {p1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    :try_start_0
    const-string v2, ""

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->H:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    invoke-virtual {v2, v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->F:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->F:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->H:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)V
    .locals 3

    const-string v0, "PREFERENCES_GAME_UNLOCKED"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DungeonHunter2BInfo"

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PREFERENCES_NEED_VALIDATION_ON_SERVER"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "DungeonHunter2BInfo"

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private b()I
    .locals 2

    const-string v0, "PREFERENCES_GAME_UNLOCKED"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "H229"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->F:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->H:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->F:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->H:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "H229"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->F:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->H:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    const-string v0, "DungeonHunter2BInfo"

    invoke-static {p1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->H:Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->F:Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/Device;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "PREFERENCES_GAME_UNLOCK_CODE"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DungeonHunter2BInfo"

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static debugSavedValues()V
    .locals 0

    return-void
.end method

.method public static getRandomCodeNumber()I
    .locals 3

    const-string v0, "PREFERENCES_GAME_RANDOM_CODE"

    const/4 v1, -0x1

    const-string v2, "DungeonHunter2BInfo"

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getServerNumber()Ljava/lang/String;
    .locals 2

    const-string v0, "PREFERENCES_GAME_SERVER_NUMBER"

    const-string v1, "DungeonHunter2BInfo"

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUnlockCodeNumber()I
    .locals 3

    const-string v0, "PREFERENCES_GAME_UNLOCK_CODE"

    const/4 v1, -0x1

    const-string v2, "DungeonHunter2BInfo"

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setRandomCodeNumber(I)V
    .locals 3

    const-string v0, "PREFERENCES_GAME_RANDOM_CODE"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DungeonHunter2BInfo"

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static setServerNumber(Ljava/lang/String;)V
    .locals 2

    const-string v0, "PREFERENCES_GAME_SERVER_NUMBER"

    const-string v1, "DungeonHunter2BInfo"

    invoke-static {v0, p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static setUnlockCodeNumber(I)V
    .locals 3

    const-string v0, "PREFERENCES_GAME_UNLOCK_CODE"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DungeonHunter2BInfo"

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static today()J
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/LManager;->getRandomCodeNumber()I

    move-result v0

    const v1, 0xd0a4

    xor-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
