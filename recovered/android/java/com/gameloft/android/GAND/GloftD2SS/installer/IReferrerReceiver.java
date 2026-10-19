package com.gameloft.android.GAND.GloftD2SS.installer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences$Editor;
import java.net.URI;

/* JADX INFO: loaded from: classes.dex */
public class IReferrerReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f114a = "referrer";
    static final String b = "rsend_referrer";
    static final String c = "com.android.vending.INSTALL_REFERRER";

    public static String getReferrer(Context context) {
        return context != null ? context.getSharedPreferences(b, 0).getString(f114a, "") : "";
    }

    private static String getReferrer(String str) {
        String str2 = null;
        try {
            str2 = new URI(str).getQuery().split("referrer=")[1];
        } catch (Exception e) {
        }
        return (str2 != null || (!str.contains("utm_source") && str.indexOf("utm_source") < 0)) ? str2 : str;
    }

    static void sendBroadcastIntent(Context context) {
        Intent intent = new Intent(c);
        intent.setPackage(context.getPackageName());
        intent.putExtra(f114a, "utm_source=source+test&utm_medium=medium+test&utm_term=term+test&utm_content=content+test&utm_campaing=campaing+test");
        context.sendBroadcast(intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String referrer = getReferrer(intent.getStringExtra(f114a));
        SharedPreferences$Editor sharedPreferences$EditorEdit = context.getSharedPreferences(b, 0).edit();
        if (referrer != null) {
            sharedPreferences$EditorEdit.putString(f114a, referrer);
            sharedPreferences$EditorEdit.commit();
        } else {
            sharedPreferences$EditorEdit.putString(f114a, "");
            sharedPreferences$EditorEdit.commit();
        }
    }
}
