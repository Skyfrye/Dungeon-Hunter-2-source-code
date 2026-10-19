package com.samsungapps.plasma;

import android.util.Log;

final class a {

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
