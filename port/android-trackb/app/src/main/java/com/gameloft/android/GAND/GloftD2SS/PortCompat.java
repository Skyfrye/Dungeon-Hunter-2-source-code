package com.gameloft.android.GAND.GloftD2SS;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Build;

/**
 * Port (SDK1): helpers for the behaviour changes between targetSdk 28 and 35 that the reconstructed (2011) code does not know about.
 * Nothing here changes what the game does; it only keeps the old calls from throwing under the new platform rules.
 */
public final class PortCompat {
    private static final int RECEIVER_NOT_EXPORTED = 4;   // Context.RECEIVER_NOT_EXPORTED (API 33)
    private static final int REQ_BT = 78;
    private static boolean btAsked;

    private PortCompat() {
    }

    /** registerReceiver that satisfies the API 34 rule (a flag is mandatory); every receiver of the game listens to system broadcasts only. */
    public static Intent registerReceiver(Context c, BroadcastReceiver r, IntentFilter f) {
        if (Build.VERSION.SDK_INT >= 33) {
            return c.registerReceiver(r, f, RECEIVER_NOT_EXPORTED);
        }
        return c.registerReceiver(r, f);
    }

    /** TelephonyManager.listen(LISTEN_CALL_STATE) throws SecurityException at targetSdk 31+ without READ_PHONE_STATE (a permission we never request). */
    public static void listen(android.telephony.TelephonyManager t, android.telephony.PhoneStateListener l, int events) {
        try {
            t.listen(l, events);
        } catch (SecurityException e) {
            android.util.Log.w("DH2", "PhoneStateListener not available without READ_PHONE_STATE: " + e);
        }
    }

    /** BLUETOOTH_CONNECT and BLUETOOTH_SCAN are runtime permissions from API 31; below that the install-time ones are enough. */
    public static boolean hasBluetoothPermissions(Context c) {
        if (Build.VERSION.SDK_INT < 31) {
            return true;
        }
        return c.checkSelfPermission("android.permission.BLUETOOTH_CONNECT") == PackageManager.PERMISSION_GRANTED
                && c.checkSelfPermission("android.permission.BLUETOOTH_SCAN") == PackageManager.PERMISSION_GRANTED;
    }

    /** Asks once per process (asynchronously, from the UI thread); the game sees Bluetooth as unsupported until the user grants it. */
    public static void requestBluetoothPermissions(Context c) {
        if (btAsked || Build.VERSION.SDK_INT < 31 || !(c instanceof Activity)) {
            return;
        }
        btAsked = true;
        final Activity a = (Activity) c;
        a.runOnUiThread(new Runnable() {
            public void run() {
                try {
                    a.requestPermissions(new String[]{"android.permission.BLUETOOTH_CONNECT", "android.permission.BLUETOOTH_SCAN"}, REQ_BT);
                } catch (Throwable t) {
                    android.util.Log.w("DH2", "bluetooth permission request: " + t);
                }
            }
        });
    }
}
