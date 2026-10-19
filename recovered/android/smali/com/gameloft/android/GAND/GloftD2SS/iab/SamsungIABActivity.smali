.class public Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/samsungapps/plasma/PlasmaListener;


# static fields
.field private static final a:Ljava/lang/String; = "SamsungIABActivity"

.field private static final b:Ljava/lang/String; = "samsung"

.field private static final c:Ljava/lang/String; = "\n"

.field private static final f:I = 0xf

.field private static g:Z


# instance fields
.field private d:Lcom/samsungapps/plasma/Plasma;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->d:Lcom/samsungapps/plasma/Plasma;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->e:I

    return-void
.end method

.method static LaunchSamsungBilling()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/16 v3, 0x6f

    invoke-static {v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->getServerInfo()Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    move-result-object v1

    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static LaunchSamsungRestore()V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->g:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/16 v3, 0x6f

    invoke-static {v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->getServerInfo()Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;

    move-result-object v1

    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/billing/common/AServerInfo;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const-string v0, "%s (%d)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->IABResultCallBack(I)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->finish()V

    return-void
.end method

.method private static getPriceStringWithCurrencyUnit(Lcom/samsungapps/plasma/ItemInformation;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/samsungapps/plasma/ItemInformation;->getCurrencyUnitHasPenny()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%.2f"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsungapps/plasma/ItemInformation;->getItemPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/samsungapps/plasma/ItemInformation;->getCurrencyUnitPrecedes()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsungapps/plasma/ItemInformation;->getCurrencyUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "%.0f"

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/samsungapps/plasma/ItemInformation;->getCurrencyUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static matchInApp(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsungapps/plasma/ItemInformation;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/ItemInformation;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/ItemInformation;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsungapps/plasma/Plasma;

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->GetGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsungapps/plasma/Plasma;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->d:Lcom/samsungapps/plasma/Plasma;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->d:Lcom/samsungapps/plasma/Plasma;

    invoke-virtual {v0, p0}, Lcom/samsungapps/plasma/Plasma;->setPlasmaListener(Lcom/samsungapps/plasma/PlasmaListener;)V

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->g:Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->d:Lcom/samsungapps/plasma/Plasma;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->e:I

    const/4 v2, 0x1

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsungapps/plasma/Plasma;->requestPurchasedItemInformationList(III)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->d:Lcom/samsungapps/plasma/Plasma;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->e:I

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->GetItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsungapps/plasma/Plasma;->requestPurchaseItem(ILjava/lang/String;)Z

    goto :goto_0
.end method

.method public onItemInformationListReceived(IILjava/util/ArrayList;)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    const-string v0, "Failed to retrieve the item list"

    invoke-direct {p0, p2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->GetItemId()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/ItemInformation;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/ItemInformation;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_2
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->d:Lcom/samsungapps/plasma/Plasma;

    iget v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->e:I

    invoke-virtual {v0}, Lcom/samsungapps/plasma/ItemInformation;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/samsungapps/plasma/Plasma;->requestPurchaseItem(ILjava/lang/String;)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const-string v0, "Failed to retrieve the item list"

    invoke-direct {p0, p2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->IABResultCallBack(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPurchaseItemFinished(IILcom/samsungapps/plasma/PurchasedItemInformation;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sparse-switch p2, :sswitch_data_0

    const-string v0, "Failed to purchase the item"

    invoke-direct {p0, p2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->a(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->finish()V

    return-void

    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Item name: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsungapps/plasma/PurchasedItemInformation;->getItemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Item ID: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsungapps/plasma/PurchasedItemInformation;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Payment ID: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsungapps/plasma/PurchasedItemInformation;->getPaymentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Purchase date: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsungapps/plasma/PurchasedItemInformation;->getPurchaseDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Price: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsungapps/plasma/ItemInformation;->getCurrencyUnitHasPenny()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%.2f"

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/samsungapps/plasma/ItemInformation;->getItemPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3}, Lcom/samsungapps/plasma/ItemInformation;->getCurrencyUnitPrecedes()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3}, Lcom/samsungapps/plasma/ItemInformation;->getCurrencyUnit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Purchase information"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->IABResultCallBack(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_0
    const-string v0, "%.0f"

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lcom/samsungapps/plasma/ItemInformation;->getCurrencyUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :sswitch_1
    invoke-static {v3}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->IABResultCallBack(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPurchaseItemInitialized(IILcom/samsungapps/plasma/PurchaseTicket;)V
    .locals 0

    return-void
.end method

.method public onPurchasedItemInformationListReceived(IILjava/util/ArrayList;)V
    .locals 11

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a:Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/ServerInfo;->A()Lcom/gameloft/android/GAND/GloftD2SS/iab/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/e;->a()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    const-string v0, "Failed to retrieve the purchase list"

    invoke-direct {p0, p2, v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->a(ILjava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungIABActivity;->finish()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsungapps/plasma/PurchasedItemInformation;

    const/4 v0, 0x0

    move v3, v2

    move v2, v0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->a()Lcom/gameloft/android/GAND/GloftD2SS/iab/f;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->getItemId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "samsung_item_id"

    invoke-virtual {v6, v8}, Lcom/gameloft/android/GAND/GloftD2SS/iab/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "managed"

    invoke-virtual {v0, v6}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x0

    const/16 v8, 0x22

    invoke-static {v7, v8}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v7, 0x0

    const/16 v8, 0x26

    invoke-static {v7, v8}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->b()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_3
    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    const/16 v7, 0x27

    invoke-static {v0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_4
    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    const/16 v7, 0x2a

    invoke-static {v0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_5
    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    const/16 v7, 0x28

    invoke-static {v0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_6
    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    const/16 v7, 0x24

    invoke-static {v0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    const/16 v7, 0x23

    invoke-static {v0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x5

    const/16 v7, 0x6c

    :try_start_0
    invoke-static {v0, v7}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v7, 0x0

    const/16 v8, 0x76

    invoke-static {v7, v8}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->a(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/os/Bundle;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v2, v3

    goto/16 :goto_1

    :cond_7
    if-nez v2, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/SamsungHelper;->IABResultCallBack(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
