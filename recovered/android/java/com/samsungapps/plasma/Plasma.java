package com.samsungapps.plasma;

import android.app.Activity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class Plasma extends e {
    public static final int STATUS_CODE_CANCEL = 100;
    public static final int STATUS_CODE_INVALIDACCOUNT = 9211;
    public static final int STATUS_CODE_INVALIDCREDITCARD = 9205;
    public static final int STATUS_CODE_ITEMGROUPIDNOTFOUND = 9201;
    public static final int STATUS_CODE_ITEMIDNOTFOUND = 9207;
    public static final int STATUS_CODE_NETWORKERROR = 200;
    public static final int STATUS_CODE_PAYMENTIDNOTFOUND = 9203;
    public static final int STATUS_CODE_PROCESSERROR = 9000;
    public static final int STATUS_CODE_SERVICEUNAVAILABLE = 9200;
    public static final int STATUS_CODE_SUCCESS = 0;
    public static final int VERSION = 18000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f264a = "Plasma";
    private d b;
    private PlasmaListener c = null;

    public Plasma(String str, Activity activity) {
        this.b = null;
        this.b = new d(this, str, activity);
    }

    @Override // com.samsungapps.plasma.e
    final void a(int i, int i2, PurchaseTicket purchaseTicket) {
        if (this.c == null) {
            return;
        }
        this.c.onPurchaseItemInitialized(i, i2, purchaseTicket);
    }

    @Override // com.samsungapps.plasma.e
    final void a(int i, int i2, PurchasedItemInformation purchasedItemInformation) {
        if (this.c == null) {
            return;
        }
        this.c.onPurchaseItemFinished(i, i2, purchasedItemInformation);
    }

    @Override // com.samsungapps.plasma.e
    final void a(int i, int i2, ArrayList arrayList) {
        if (this.c == null) {
            return;
        }
        this.c.onItemInformationListReceived(i, i2, arrayList);
    }

    @Override // com.samsungapps.plasma.e
    final void b(int i, int i2, ArrayList arrayList) {
        if (this.c == null) {
            return;
        }
        this.c.onPurchasedItemInformationListReceived(i, i2, arrayList);
    }

    public final boolean requestItemInformationList(int i, int i2, int i3) {
        if (this.b == null) {
            return false;
        }
        return this.b.a(i, i2, i3);
    }

    public final boolean requestPurchaseItem(int i) {
        if (this.b == null) {
            return false;
        }
        return this.b.a(i);
    }

    public final boolean requestPurchaseItem(int i, String str) {
        if (this.b == null) {
            return false;
        }
        return this.b.a(i, str);
    }

    public final boolean requestPurchasedItemInformationList(int i, int i2, int i3) {
        if (this.b == null) {
            return false;
        }
        return this.b.b(i, i2, i3);
    }

    public final void setDeveloperFlag(int i) {
        if (this.b == null) {
            return;
        }
        this.b.b(i);
    }

    public final void setPlasmaListener(PlasmaListener plasmaListener) {
        this.c = plasmaListener;
    }

    public final void setShowProgressDialog(boolean z) {
        if (this.b == null) {
            return;
        }
        this.b.a(z);
    }
}
