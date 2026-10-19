package com.gameloft.android.GAND.GloftD2SS.iab;

import android.app.Activity;
import android.app.AlertDialog$Builder;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.SUtils;
import com.gameloft.android.GAND.GloftD2SS.installer.t;
import com.samsungapps.plasma.ItemInformation;
import com.samsungapps.plasma.Plasma;
import com.samsungapps.plasma.PlasmaListener;
import com.samsungapps.plasma.PurchaseTicket;
import com.samsungapps.plasma.PurchasedItemInformation;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SamsungIABActivity extends Activity implements PlasmaListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f106a = "SamsungIABActivity";
    private static final String b = "samsung";
    private static final String c = "\n";
    private static final int f = 15;
    private static boolean g = false;
    private Plasma d = null;
    private int e = 0;

    static void LaunchSamsungBilling() {
        Intent intent = new Intent();
        intent.setClassName(SUtils.getContext().getPackageName(), InAppBilling.a(5, t.b));
        SamsungHelper.getServerInfo().b(b);
        SUtils.getContext().startActivity(intent);
    }

    static void LaunchSamsungRestore() {
        g = true;
        Intent intent = new Intent();
        intent.setClassName(SUtils.getContext().getPackageName(), InAppBilling.a(5, t.b));
        SamsungHelper.getServerInfo().b(b);
        SUtils.getContext().startActivity(intent);
    }

    private void a(int i, String str) {
        String.format("%s (%d)", str, Integer.valueOf(i));
        SamsungHelper.IABResultCallBack(2);
        finish();
    }

    private static String getPriceStringWithCurrencyUnit(ItemInformation itemInformation) {
        String str = String.format(itemInformation.getCurrencyUnitHasPenny() ? "%.2f" : "%.0f", Double.valueOf(itemInformation.getItemPrice()));
        StringBuffer stringBuffer = new StringBuffer();
        if (itemInformation.getCurrencyUnitPrecedes()) {
            stringBuffer.append(itemInformation.getCurrencyUnit());
            stringBuffer.append(str);
        } else {
            stringBuffer.append(str);
            stringBuffer.append(itemInformation.getCurrencyUnit());
        }
        return stringBuffer.toString();
    }

    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0002 */
    private static ItemInformation matchInApp(ArrayList arrayList, String str) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= arrayList.size()) {
                return null;
            }
            ItemInformation itemInformation = (ItemInformation) arrayList.get(i2);
            if (itemInformation.getItemId().equals(str)) {
                return itemInformation;
            }
            i = i2 + 1;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.d = new Plasma(SamsungHelper.GetGroupId(), this);
        this.d.setPlasmaListener(this);
        if (!g) {
            Plasma plasma = this.d;
            int i = this.e;
            this.e = i + 1;
            plasma.requestPurchaseItem(i, SamsungHelper.GetItemId());
            return;
        }
        g = false;
        Plasma plasma2 = this.d;
        int i2 = this.e;
        this.e = i2 + 1;
        plasma2.requestPurchasedItemInformationList(i2, 1, 15);
    }

    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:6:0x000f */
    @Override // com.samsungapps.plasma.PlasmaListener
    public void onItemInformationListReceived(int i, int i2, ArrayList arrayList) {
        ItemInformation itemInformation;
        switch (i2) {
            case 0:
                String strGetItemId = SamsungHelper.GetItemId();
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    if (i4 < arrayList.size()) {
                        itemInformation = (ItemInformation) arrayList.get(i4);
                        if (!itemInformation.getItemId().equals(strGetItemId)) {
                            i3 = i4 + 1;
                        }
                    } else {
                        itemInformation = null;
                    }
                }
                if (itemInformation == null) {
                    a(i2, "Failed to retrieve the item list");
                } else {
                    Plasma plasma = this.d;
                    int i5 = this.e;
                    this.e = i5 + 1;
                    plasma.requestPurchaseItem(i5, itemInformation.getItemId());
                }
                break;
            default:
                a(i2, "Failed to retrieve the item list");
                break;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        super.onKeyDown(i, keyEvent);
        switch (i) {
            case 4:
                SamsungHelper.IABResultCallBack(1);
                return true;
            default:
                return false;
        }
    }

    @Override // com.samsungapps.plasma.PlasmaListener
    public void onPurchaseItemFinished(int i, int i2, PurchasedItemInformation purchasedItemInformation) {
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this);
        switch (i2) {
            case 0:
                StringBuilder sb = new StringBuilder();
                sb.append("Item name: ");
                sb.append(purchasedItemInformation.getItemName());
                sb.append(c);
                sb.append("Item ID: ");
                sb.append(purchasedItemInformation.getItemId());
                sb.append(c);
                sb.append("Payment ID: ");
                sb.append(purchasedItemInformation.getPaymentId());
                sb.append(c);
                sb.append("Purchase date: ");
                sb.append(purchasedItemInformation.getPurchaseDate());
                sb.append(c);
                sb.append("Price: ");
                String str = String.format(purchasedItemInformation.getCurrencyUnitHasPenny() ? "%.2f" : "%.0f", Double.valueOf(purchasedItemInformation.getItemPrice()));
                StringBuffer stringBuffer = new StringBuffer();
                if (purchasedItemInformation.getCurrencyUnitPrecedes()) {
                    stringBuffer.append(purchasedItemInformation.getCurrencyUnit());
                    stringBuffer.append(str);
                } else {
                    stringBuffer.append(str);
                    stringBuffer.append(purchasedItemInformation.getCurrencyUnit());
                }
                sb.append(stringBuffer.toString());
                alertDialog$Builder.setTitle("Purchase information");
                alertDialog$Builder.setMessage(sb.toString());
                SamsungHelper.IABResultCallBack(0);
                alertDialog$Builder.show();
                break;
            case 100:
                SamsungHelper.IABResultCallBack(1);
                break;
            default:
                a(i2, "Failed to purchase the item");
                break;
        }
        finish();
    }

    @Override // com.samsungapps.plasma.PlasmaListener
    public void onPurchaseItemInitialized(int i, int i2, PurchaseTicket purchaseTicket) {
    }

    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:11:0x0029 */
    @Override // com.samsungapps.plasma.PlasmaListener
    public void onPurchasedItemInformationListReceived(int i, int i2, ArrayList arrayList) {
        ArrayList arrayListA = InAppBilling.f105a.A().a();
        boolean z = false;
        switch (i2) {
            case 0:
                int i3 = 0;
                while (i3 < arrayList.size()) {
                    PurchasedItemInformation purchasedItemInformation = (PurchasedItemInformation) arrayList.get(i3);
                    int i4 = 0;
                    boolean z2 = z;
                    while (true) {
                        int i5 = i4;
                        if (i5 < arrayListA.size()) {
                            g gVar = (g) arrayListA.get(i5);
                            if (purchasedItemInformation.getItemId().equalsIgnoreCase(gVar.a().a("samsung_item_id")) && gVar.a("managed").equalsIgnoreCase("1")) {
                                z2 = true;
                                Bundle bundle = new Bundle();
                                bundle.putInt(InAppBilling.a(0, 34), 8);
                                bundle.putByteArray(InAppBilling.a(0, 38), gVar.b() != null ? gVar.b().getBytes() : null);
                                bundle.putByteArray(InAppBilling.a(0, 39), InAppBilling.e != null ? InAppBilling.e.getBytes() : null);
                                bundle.putByteArray(InAppBilling.a(0, 42), InAppBilling.i != null ? InAppBilling.i.getBytes() : null);
                                bundle.putByteArray(InAppBilling.a(0, 40), InAppBilling.h != null ? InAppBilling.h.getBytes() : null);
                                bundle.putInt(InAppBilling.a(0, 36), 0);
                                bundle.putInt(InAppBilling.a(0, 35), 0);
                                try {
                                    Class.forName(InAppBilling.a(5, 108)).getMethod(InAppBilling.a(0, 118), Bundle.class).invoke(null, bundle);
                                } catch (Exception e) {
                                }
                            }
                            i4 = i5 + 1;
                        }
                    }
                    i3++;
                    z = z2;
                }
                if (!z) {
                    SamsungHelper.IABResultCallBack(2);
                }
                break;
            default:
                a(i2, "Failed to retrieve the purchase list");
                break;
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
