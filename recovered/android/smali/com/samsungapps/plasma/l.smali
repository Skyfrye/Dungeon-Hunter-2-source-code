.class final Lcom/samsungapps/plasma/l;
.super Lcom/samsungapps/plasma/j;


# instance fields
.field protected Q:Ljava/util/HashMap;

.field protected R:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsungapps/plasma/j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsungapps/plasma/l;->Q:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsungapps/plasma/l;->R:Z

    return-void
.end method


# virtual methods
.method final a(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/l;->Q:Ljava/util/HashMap;

    return-void
.end method

.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsungapps/plasma/l;->R:Z

    return-void
.end method

.method final d()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/l;->Q:Ljava/util/HashMap;

    return-object v0
.end method

.method final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsungapps/plasma/l;->R:Z

    return v0
.end method
