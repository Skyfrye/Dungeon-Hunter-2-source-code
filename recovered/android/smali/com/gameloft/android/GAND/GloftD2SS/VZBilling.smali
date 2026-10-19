.class public Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field static b:Z

.field public static c:Z

.field static d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

.field static e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

.field static f:Ljava/lang/String;

.field static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->a:Z

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Billing;-><init>()V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    invoke-direct {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;-><init>()V

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CodeEvaluation(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    const/16 v2, 0x6e

    if-le v1, v2, :cond_a

    :cond_2
    const/16 v2, 0xc9

    if-lt v1, v2, :cond_3

    const/16 v2, 0x12e

    if-le v1, v2, :cond_a

    :cond_3
    const/16 v2, 0x130

    if-lt v1, v2, :cond_4

    const/16 v2, 0x14a

    if-le v1, v2, :cond_a

    :cond_4
    const/16 v2, 0x190

    if-lt v1, v2, :cond_5

    const/16 v2, 0x194

    if-le v1, v2, :cond_a

    :cond_5
    const/16 v2, 0x196

    if-eq v1, v2, :cond_a

    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_a

    const/16 v2, 0x384

    if-eq v1, v2, :cond_a

    const/16 v2, 0x385

    if-eq v1, v2, :cond_a

    const/16 v2, 0x3e7

    if-lt v1, v2, :cond_6

    const/16 v2, 0x3ef

    if-le v1, v2, :cond_a

    :cond_6
    const/16 v2, 0xfbf

    if-eq v1, v2, :cond_a

    const/16 v2, 0x4e2b

    if-lt v1, v2, :cond_7

    const/16 v2, 0x4e5e

    if-le v1, v2, :cond_a

    :cond_7
    const/16 v2, 0x4e60

    if-lt v1, v2, :cond_8

    const/16 v2, 0x4ecb

    if-le v1, v2, :cond_a

    :cond_8
    const/16 v2, 0x7530

    if-lt v1, v2, :cond_9

    const/16 v2, 0x7533

    if-le v1, v2, :cond_a

    :cond_9
    const/16 v2, 0x7549

    if-eq v1, v2, :cond_a

    const/16 v2, 0x7559

    if-lt v1, v2, :cond_0

    const/16 v2, 0x755e

    if-gt v1, v2, :cond_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static GetGameName()[B
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static GetGamePrice()[B
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static GetLastServerMsg()[B
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Unknow Error"

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->f:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static IsErrorOcurred()Z
    .locals 1

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->c:Z

    return v0
.end method

.method static IsInProgress()Z
    .locals 1

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->b:Z

    return v0
.end method

.method static RequestGameCheckout()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->e:I

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->v:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%00%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->y:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%00%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->A:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->B:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->B:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->C:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->D:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->E:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->F:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->G:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%00%00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%00%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->K:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->L:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->M:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->N:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->O:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->P:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->sendAndReceiveData(Ljava/lang/String;Z)V

    return-void
.end method

.method static RequestGameData()V
    .locals 4

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->d:I

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->S:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->T:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0x9

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->i:Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    iget-object v3, v3, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    iget-object v3, v3, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v3, v3, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v3, v3, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v3, v3, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->k:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->sendAndReceiveData(Ljava/lang/String;Z)V

    return-void
.end method

.method static RequestGamePurchase()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->f:I

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->Q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->R:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->sendAndReceiveData(Ljava/lang/String;Z)V

    return-void
.end method

.method static RequestLogin()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->b:I

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    iget-object v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->sendAndReceiveData(Ljava/lang/String;Z)V

    return-void
.end method

.method static SetLastServerMsg(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->f:Ljava/lang/String;

    return-void
.end method

.method public static VZ_EndConnection()V
    .locals 1

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->d:Lcom/gameloft/android/GAND/GloftD2SS/Billing;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/Billing;->c()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->parserXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->CodeEvaluation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static parserXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    const/4 v1, 0x0

    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->g:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v11, v1

    :goto_1
    :try_start_2
    new-instance v1, Ljava/io/StringReader;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    :goto_3
    const-string v10, "\n"

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v14, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v1

    move v1, v14

    :goto_4
    const/4 v12, 0x1

    if-eq v9, v12, :cond_12

    if-eqz v9, :cond_1

    const/4 v12, 0x1

    if-eq v9, v12, :cond_1

    const/4 v12, 0x2

    if-ne v9, v12, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_5
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "desc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_6
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_7
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ItemName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "itemName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    const/4 v4, 0x1

    :goto_8
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PPPID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_9
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "purchasePrice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_a
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "confirmationID"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_b
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v12, "endUserMsg"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    move v14, v8

    move v8, v1

    move v1, v14

    move v15, v6

    move v6, v3

    move v3, v15

    move/from16 v16, v4

    move v4, v5

    move/from16 v5, v16

    move/from16 v17, v2

    move v2, v7

    move/from16 v7, v17

    :cond_1
    :goto_c
    :try_start_4
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result v9

    goto/16 :goto_4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move-object v11, v2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_5
    const/4 v4, 0x0

    goto :goto_8

    :cond_6
    const/4 v5, 0x0

    goto :goto_9

    :cond_7
    const/4 v6, 0x0

    goto :goto_a

    :cond_8
    const/4 v7, 0x0

    goto :goto_b

    :cond_9
    const/4 v8, 0x0

    move v14, v8

    move v8, v1

    move v1, v14

    move v15, v6

    move v6, v3

    move v3, v15

    move/from16 v16, v4

    move v4, v5

    move/from16 v5, v16

    move/from16 v17, v2

    move v2, v7

    move/from16 v7, v17

    goto :goto_c

    :cond_a
    const/4 v12, 0x3

    if-eq v9, v12, :cond_1

    const/4 v12, 0x4

    if-ne v9, v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v8, :cond_b

    sget-object v12, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->U:Ljava/lang/String;

    :cond_b
    if-eqz v7, :cond_c

    sget-object v12, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->V:Ljava/lang/String;

    :cond_c
    if-eqz v6, :cond_d

    sget-object v12, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->y:Ljava/lang/String;

    :cond_d
    if-eqz v5, :cond_e

    sget-object v12, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->z:Ljava/lang/String;

    :cond_e
    if-eqz v4, :cond_f

    sget-object v12, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->A:Ljava/lang/String;

    :cond_f
    if-eqz v3, :cond_10

    sget-object v12, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->B:Ljava/lang/String;

    :cond_10
    if-eqz v2, :cond_11

    sget-object v12, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->Q:Ljava/lang/String;

    :cond_11
    if-eqz v1, :cond_1

    sget-object v12, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->e:Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/gameloft/android/GAND/GloftD2SS/GetNpost;->W:Ljava/lang/String;

    goto/16 :goto_c

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    const/4 v9, 0x1

    goto/16 :goto_4

    :catch_5
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :cond_12
    return-object v10
.end method

.method private static sendAndReceiveData(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->c:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/VZBilling;->b:Z

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/bw;

    invoke-direct {v0, p1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/bw;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
