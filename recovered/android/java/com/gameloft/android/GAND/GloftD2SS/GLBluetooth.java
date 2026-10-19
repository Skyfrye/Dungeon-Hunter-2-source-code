package com.gameloft.android.GAND.GloftD2SS;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Looper;
import android.util.Log;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class GLBluetooth {
    private static final boolean e = true;
    private static final String f = "GLBluetooth";
    private static boolean i;
    private static String j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static Context f5a = null;
    protected static String b = "LetsGolf2";
    private static UUID g = UUID.fromString("b81345-2396-cf00-4533-b190df558100");
    protected static BluetoothAdapter c = null;
    protected static BluetoothDevice d = null;
    private static GLBluetoothService h = null;

    public static boolean acceptConnection(int i2) {
        Log.d(f, "acceptConnection() " + Integer.toHexString(i2));
        h.d();
        return true;
    }

    public static void connect(int i2) {
        Log.d(f, "connect()" + Integer.toHexString(i2));
        if (h != null) {
            h.a(i2);
        }
    }

    public static boolean create(String str, int i2) {
        Log.d(f, "create(" + str + ", " + i2 + ")");
        if (h != null) {
            h.c();
            h = null;
        }
        h = new GLBluetoothService(g, str);
        if (i2 == 1) {
            return h.a();
        }
        h.b();
        return true;
    }

    public static void denyConnection(int i2) {
        Log.d(f, "denyConnection() " + Integer.toHexString(i2));
        h.e();
    }

    public static void destroy() {
        Log.d(f, "destroy()");
        i = false;
        if (h != null) {
            h.c();
            h = null;
        }
    }

    public static byte[] getDisplayName(int i2) {
        if (h == null) {
            return null;
        }
        return h.b(i2);
    }

    public static byte[] getReceiveData() {
        if (h == null) {
            return null;
        }
        return h.f();
    }

    public static void init(Context context) {
        Log.d(f, "init()");
        f5a = context;
        if (c == null) {
            Looper.prepare();
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            c = defaultAdapter;
            j = defaultAdapter.getName();
        }
        nativeInit();
    }

    public static boolean isAvailable() {
        return c != null && c.isEnabled() && h != null && i;
    }

    public static boolean isSupported() {
        Log.d(f, "isSupported() " + (c != null));
        return c != null;
    }

    public static native void nativeInit();

    public static void send(int i2, byte[] bArr) {
        Log.d(f, "send() to " + Integer.toHexString(i2) + " length " + bArr.length);
        if (h != null) {
            h.a(bArr);
        }
    }

    public static void setAvailable(boolean z) {
        i = z;
    }
}
