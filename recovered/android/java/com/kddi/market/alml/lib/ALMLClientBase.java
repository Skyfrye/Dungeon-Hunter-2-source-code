package com.kddi.market.alml.lib;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager$NameNotFoundException;

/* JADX INFO: loaded from: classes.dex */
public abstract class ALMLClientBase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final String f180a = "com.kddi.market";

    protected static int getMarketAppVersionCode(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(f180a, 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (PackageManager$NameNotFoundException e) {
            return -1;
        }
    }

    protected static boolean isMarketApp(Context context) {
        try {
            context.getPackageManager().getApplicationInfo(f180a, 0);
            return true;
        } catch (PackageManager$NameNotFoundException e) {
            return false;
        }
    }

    public abstract int a(Context context);

    public abstract void a();
}
