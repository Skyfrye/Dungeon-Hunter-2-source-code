package com.gameloft.android.GAND.GloftD2SS.iab;

import android.os.Bundle;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.XPlayer;
import com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo;

/* JADX INFO: loaded from: classes.dex */
public class SamsungHelper extends a {
    static XPlayer b = null;
    static SamsungHelper c = null;
    private static final String d = "InAppBilling";
    private static AServerInfo f;
    private static Device g;
    private static String e = null;
    private static boolean h = false;

    SamsungHelper(AServerInfo aServerInfo) {
        super(aServerInfo);
        g = new Device(aServerInfo);
        b = new XPlayer(g);
        f = aServerInfo;
        c = this;
    }

    public static String GetContentId() {
        return e;
    }

    public static String GetGroupId() {
        return getServerInfo().b(GetContentId(), "group_id");
    }

    public static String GetItemId() {
        return getServerInfo().b(GetContentId(), "samsung_item_id");
    }

    public static void IABResultCallBack(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt(InAppBilling.a(0, 34), 2);
        bundle.putByteArray(InAppBilling.a(0, 38), GetContentId() != null ? GetContentId().getBytes() : null);
        bundle.putByteArray(InAppBilling.a(0, 39), GetContentId() != null ? GetContentId().getBytes() : null);
        bundle.putByteArray(InAppBilling.a(0, 42), InAppBilling.i != null ? InAppBilling.i.getBytes() : null);
        bundle.putByteArray(InAppBilling.a(0, 40), InAppBilling.h != null ? InAppBilling.h.getBytes() : null);
        bundle.putInt(InAppBilling.a(0, 36), 1);
        bundle.putInt(InAppBilling.a(0, 35), i);
        try {
            Class.forName(InAppBilling.a(5, 108)).getMethod(InAppBilling.a(0, 118), Bundle.class).invoke(null, bundle);
        } catch (Exception e2) {
        }
        if (i == 0) {
            c.b();
        }
    }

    static /* synthetic */ boolean access$002(boolean z) {
        h = z;
        return z;
    }

    static /* synthetic */ AServerInfo access$100() {
        return f;
    }

    static AServerInfo getServerInfo() {
        SamsungHelper samsungHelper = c;
        return f;
    }

    static void xsendConfirmation() {
        if (f == null) {
            f = getServerInfo();
        }
        if (h) {
            return;
        }
        new Thread(new d()).start();
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.iab.a
    public final /* bridge */ /* synthetic */ void a(String str) {
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.iab.a
    public final /* bridge */ /* synthetic */ boolean a() {
        return super.a();
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.iab.a
    public final void b() {
        xsendConfirmation();
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.iab.a
    public final boolean b(String str) {
        e = str;
        SamsungIABActivity.LaunchSamsungBilling();
        return true;
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.iab.a
    public final boolean c() {
        e = getServerInfo().b();
        if (GetGroupId() != null) {
            SamsungIABActivity.LaunchSamsungRestore();
            return true;
        }
        IABResultCallBack(2);
        return true;
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.iab.a
    public final void d() {
    }
}
