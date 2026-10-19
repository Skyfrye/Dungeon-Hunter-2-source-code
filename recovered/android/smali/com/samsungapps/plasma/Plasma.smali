.class public final Lcom/samsungapps/plasma/Plasma;
.super Lcom/samsungapps/plasma/e;


# static fields
.field public static final STATUS_CODE_CANCEL:I = 0x64

.field public static final STATUS_CODE_INVALIDACCOUNT:I = 0x23fb

.field public static final STATUS_CODE_INVALIDCREDITCARD:I = 0x23f5

.field public static final STATUS_CODE_ITEMGROUPIDNOTFOUND:I = 0x23f1

.field public static final STATUS_CODE_ITEMIDNOTFOUND:I = 0x23f7

.field public static final STATUS_CODE_NETWORKERROR:I = 0xc8

.field public static final STATUS_CODE_PAYMENTIDNOTFOUND:I = 0x23f3

.field public static final STATUS_CODE_PROCESSERROR:I = 0x2328

.field public static final STATUS_CODE_SERVICEUNAVAILABLE:I = 0x23f0

.field public static final STATUS_CODE_SUCCESS:I = 0x0

.field public static final VERSION:I = 0x4650

.field static final a:Ljava/lang/String; = "Plasma"


# instance fields
.field private b:Lcom/samsungapps/plasma/d;

.field private c:Lcom/samsungapps/plasma/PlasmaListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsungapps/plasma/e;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    iput-object v0, p0, Lcom/samsungapps/plasma/Plasma;->c:Lcom/samsungapps/plasma/PlasmaListener;

    new-instance v0, Lcom/samsungapps/plasma/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsungapps/plasma/d;-><init>(Lcom/samsungapps/plasma/e;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    return-void
.end method


# virtual methods
.method final a(IILcom/samsungapps/plasma/PurchaseTicket;)V
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->c:Lcom/samsungapps/plasma/PlasmaListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->c:Lcom/samsungapps/plasma/PlasmaListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsungapps/plasma/PlasmaListener;->onPurchaseItemInitialized(IILcom/samsungapps/plasma/PurchaseTicket;)V

    goto :goto_0
.end method

.method final a(IILcom/samsungapps/plasma/PurchasedItemInformation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->c:Lcom/samsungapps/plasma/PlasmaListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->c:Lcom/samsungapps/plasma/PlasmaListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsungapps/plasma/PlasmaListener;->onPurchaseItemFinished(IILcom/samsungapps/plasma/PurchasedItemInformation;)V

    goto :goto_0
.end method

.method final a(IILjava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->c:Lcom/samsungapps/plasma/PlasmaListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->c:Lcom/samsungapps/plasma/PlasmaListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsungapps/plasma/PlasmaListener;->onItemInformationListReceived(IILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method final b(IILjava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->c:Lcom/samsungapps/plasma/PlasmaListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->c:Lcom/samsungapps/plasma/PlasmaListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsungapps/plasma/PlasmaListener;->onPurchasedItemInformationListReceived(IILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final requestItemInformationList(III)Z
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsungapps/plasma/d;->a(III)Z

    move-result v0

    goto :goto_0
.end method

.method public final requestPurchaseItem(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1}, Lcom/samsungapps/plasma/d;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method public final requestPurchaseItem(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1, p2}, Lcom/samsungapps/plasma/d;->a(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final requestPurchasedItemInformationList(III)Z
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsungapps/plasma/d;->b(III)Z

    move-result v0

    goto :goto_0
.end method

.method public final setDeveloperFlag(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1}, Lcom/samsungapps/plasma/d;->b(I)V

    goto :goto_0
.end method

.method public final setPlasmaListener(Lcom/samsungapps/plasma/PlasmaListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/Plasma;->c:Lcom/samsungapps/plasma/PlasmaListener;

    return-void
.end method

.method public final setShowProgressDialog(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/Plasma;->b:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1}, Lcom/samsungapps/plasma/d;->a(Z)V

    goto :goto_0
.end method
