package com.samsungapps.plasma;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f275a = "Plasma";

    a() {
    }

    static void a(Exception exc) {
        if (d.f278a) {
            Log.e(f275a, exc.getMessage(), exc);
        }
    }

    static void a(String str) {
        if (d.f278a) {
            Log.d(f275a, str);
        }
    }

    static void b(String str) {
        Log.v(f275a, str);
    }
}
