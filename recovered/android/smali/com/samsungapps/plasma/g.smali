.class abstract Lcom/samsungapps/plasma/g;
.super Lcom/samsungapps/plasma/h;


# static fields
.field protected static final N:I = 0x3

.field protected static final O:I = 0x1388

.field protected static final P:I = 0x1780

.field protected static final Q:I = 0x1784

.field protected static final R:Ljava/lang/String; = "getPurchaseID"

.field protected static final S:I = 0xbc5

.field protected static final T:I = 0x2403


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Ljava/lang/String;

.field protected D:Ljava/lang/String;

.field protected E:Ljava/lang/String;

.field protected F:I

.field protected G:Ljava/lang/String;

.field protected H:Ljava/lang/String;

.field protected I:Ljava/lang/String;

.field protected J:Landroid/view/View;

.field protected K:I

.field protected L:Ljava/lang/String;

.field protected M:I

.field protected t:Lcom/samsungapps/plasma/d;

.field protected u:Landroid/content/Context;

.field protected v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/String;

.field protected y:D

.field protected z:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsungapps/plasma/h;-><init>()V

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->u:Landroid/content/Context;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->w:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->x:Ljava/lang/String;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/samsungapps/plasma/g;->y:D

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->z:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->C:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->D:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->E:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsungapps/plasma/g;->F:I

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->G:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->H:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->I:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->J:Landroid/view/View;

    iput v3, p0, Lcom/samsungapps/plasma/g;->K:I

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->L:Ljava/lang/String;

    iput v3, p0, Lcom/samsungapps/plasma/g;->M:I

    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 5

    new-instance v0, Lcom/samsungapps/plasma/l;

    invoke-direct {v0}, Lcom/samsungapps/plasma/l;-><init>()V

    const/16 v1, 0x1784

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v1, "getPurchaseID"

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "imei"

    iget-object v3, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v3}, Lcom/samsungapps/plasma/d;->c()Lcom/samsungapps/plasma/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsungapps/plasma/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "itemID"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p0, v2}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method private b(ILcom/samsungapps/plasma/m;)V
    .locals 6

    const/4 v4, 0x0

    if-nez p2, :cond_1

    const-string v0, "responseData is null"

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->d()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v2, 0x0

    if-eqz v5, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    if-gtz v3, :cond_3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/samsungapps/plasma/PurchaseTicket;

    invoke-direct {v2}, Lcom/samsungapps/plasma/PurchaseTicket;-><init>()V

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->G:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchaseTicket;->a(Ljava/lang/String;)V

    const-string v0, "purchaseID"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/g;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->H:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchaseTicket;->b(Ljava/lang/String;)V

    const-string v0, "verifyUrl"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchaseTicket;->c(Ljava/lang/String;)V

    const-string v0, "param1"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchaseTicket;->d(Ljava/lang/String;)V

    const-string v0, "param2"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchaseTicket;->e(Ljava/lang/String;)V

    const-string v0, "param3"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchaseTicket;->f(Ljava/lang/String;)V

    :cond_2
    move-object v0, v2

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsungapps/plasma/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1, v4, v2}, Lcom/samsungapps/plasma/d;->a(IILcom/samsungapps/plasma/PurchaseTicket;)V

    goto :goto_0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsungapps/plasma/g;->y:D

    return-void
.end method

.method protected a(II)V
    .locals 3

    iget v0, p0, Lcom/samsungapps/plasma/g;->M:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/samsungapps/plasma/g;->K:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsungapps/plasma/g;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungapps/plasma/g;->K:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Purchase retry count "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsungapps/plasma/g;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsungapps/plasma/g;->F:I

    iget-object v1, p0, Lcom/samsungapps/plasma/g;->G:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsungapps/plasma/g;->L:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsungapps/plasma/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    const/16 v1, 0xc8

    const-string v2, "IDS_SAPPS_POP_NETWORK_UNAVAILABLE"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected a(IIILjava/lang/String;)V
    .locals 3

    sparse-switch p3, :sswitch_data_0

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p3, p4}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_BODY_THIS_EMAIL_ADDRESS_CANNOT_BE_USED_IN_THIS_COUNTRY_SAMSUNG_APPS_LAUNCH_ERROR_MSG"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/samsungapps/plasma/g;->K:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsungapps/plasma/g;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungapps/plasma/g;->K:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Purchase retry count "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsungapps/plasma/g;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsungapps/plasma/g;->F:I

    iget-object v1, p0, Lcom/samsungapps/plasma/g;->G:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsungapps/plasma/g;->L:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsungapps/plasma/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_POP_PURCHASE_FAILED_TRY_LATER"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xbc5 -> :sswitch_0
        0x2403 -> :sswitch_1
    .end sparse-switch
.end method

.method protected a(ILcom/samsungapps/plasma/m;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1, p2}, Lcom/samsungapps/plasma/d;->b(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/samsungapps/plasma/g;->b(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1780 -> :sswitch_0
        0x1784 -> :sswitch_1
    .end sparse-switch
.end method

.method a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->u:Landroid/content/Context;

    return-void
.end method

.method a(Lcom/samsungapps/plasma/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->v:Ljava/lang/String;

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsungapps/plasma/g;->A:Z

    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    new-instance v2, Lcom/samsungapps/plasma/l;

    invoke-direct {v2}, Lcom/samsungapps/plasma/l;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/l;->a(Z)V

    const/16 v0, 0x1780

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v0, "checkPurchasedItem"

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "itemID"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    iget-object v3, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v3}, Lcom/samsungapps/plasma/d;->c()Lcom/samsungapps/plasma/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsungapps/plasma/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "transID"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mode"

    iget-object v3, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v3}, Lcom/samsungapps/plasma/d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    const/4 v4, 0x0

    const/16 v5, 0x1388

    move v1, p1

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;ZI)Z

    move-result v0

    return v0
.end method

.method abstract a_()Z
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/g;->F:I

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->w:Ljava/lang/String;

    return-void
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsungapps/plasma/g;->B:Z

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->x:Ljava/lang/String;

    return-void
.end method

.method abstract c()Z
.end method

.method abstract d()Landroid/view/View;
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->z:Ljava/lang/String;

    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->v:Ljava/lang/String;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->C:Ljava/lang/String;

    return-void
.end method

.method f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->w:Ljava/lang/String;

    return-object v0
.end method

.method f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->D:Ljava/lang/String;

    return-void
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->x:Ljava/lang/String;

    return-object v0
.end method

.method g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->E:Ljava/lang/String;

    return-void
.end method

.method h()D
    .locals 2

    iget-wide v0, p0, Lcom/samsungapps/plasma/g;->y:D

    return-wide v0
.end method

.method h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->G:Ljava/lang/String;

    return-void
.end method

.method i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->z:Ljava/lang/String;

    return-object v0
.end method

.method i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->I:Ljava/lang/String;

    return-void
.end method

.method j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsungapps/plasma/g;->A:Z

    return v0
.end method

.method k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsungapps/plasma/g;->B:Z

    return v0
.end method

.method l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->C:Ljava/lang/String;

    return-object v0
.end method

.method m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->D:Ljava/lang/String;

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->E:Ljava/lang/String;

    return-object v0
.end method

.method o()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/g;->F:I

    return v0
.end method

.method p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->G:Ljava/lang/String;

    return-object v0
.end method

.method q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->I:Ljava/lang/String;

    return-object v0
.end method

.method protected r()Z
    .locals 2

    iget v0, p0, Lcom/samsungapps/plasma/g;->F:I

    iget-object v1, p0, Lcom/samsungapps/plasma/g;->G:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsungapps/plasma/g;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected s()V
    .locals 2

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->H:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/g;->L:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsungapps/plasma/g;->K:I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/g;->L:Ljava/lang/String;

    goto :goto_0
.end method
