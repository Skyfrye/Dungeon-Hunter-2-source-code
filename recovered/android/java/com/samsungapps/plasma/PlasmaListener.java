package com.samsungapps.plasma;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface PlasmaListener {
    void onItemInformationListReceived(int i, int i2, ArrayList arrayList);

    void onPurchaseItemFinished(int i, int i2, PurchasedItemInformation purchasedItemInformation);

    void onPurchaseItemInitialized(int i, int i2, PurchaseTicket purchaseTicket);

    void onPurchasedItemInformationListReceived(int i, int i2, ArrayList arrayList);
}
