package com.gameloft.android.GAND.GloftD2SS.iab;

import android.text.Html;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f111a = "";
    private Hashtable b = new Hashtable();

    public final String a() {
        return this.f111a;
    }

    public final String a(String str) {
        return (this.b.isEmpty() || !this.b.containsKey(str)) ? "" : (String) this.b.get(str);
    }

    public final void a(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        if (str2.equals(InAppBilling.a(0, 73)) || str2.equals(InAppBilling.a(0, 60)) || str2.equals(InAppBilling.a(0, 59))) {
            str2 = Html.fromHtml(str2).toString();
        }
        this.b.put(str, str2);
    }

    public final void b(String str) {
        this.f111a = str;
    }

    public final String toString() {
        return null;
    }
}
