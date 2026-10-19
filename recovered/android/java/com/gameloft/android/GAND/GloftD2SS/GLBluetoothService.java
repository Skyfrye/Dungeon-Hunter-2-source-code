package com.gameloft.android.GAND.GloftD2SS;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import java.util.HashMap;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class GLBluetoothService {
    public static final int A = 9;
    private static final boolean B = true;
    private static final String C = "GLBluetoothService";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f6a = "|";
    public static final int b = 0;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = -1;
    public static final int i = 0;
    public static final int j = 1;
    public static final int k = 2;
    public static final int l = 3;
    public static final int m = 4;
    public static final int n = 5;
    public static final int o = 6;
    public static final int p = 7;
    public static final int q = 8;
    public static final int r = 9;
    public static final int s = 1;
    public static final int t = 2;
    public static final int u = 3;
    public static final int v = 4;
    public static final int w = 5;
    public static final int x = 6;
    public static final int y = 7;
    public static final int z = 8;
    private UUID D;
    private int G;
    private BluetoothAdapter I;
    private BluetoothDevice J;
    private String M;
    private BluetoothServerSocket K = null;
    private BluetoothSocket L = null;
    private Vector N = new Vector();
    private HashMap O = new HashMap();
    private HashMap P = new HashMap();
    private boolean Q = false;
    private int R = -1;
    private long S = 0;
    private Thread W = new Thread(new a(this));
    private final BroadcastReceiver X = new b(this);
    private boolean Y = false;
    private byte[] Z = null;
    private boolean E = false;
    private int H = 0;
    private c T = null;
    private e U = null;
    private d V = null;
    private int F = 0;

    public GLBluetoothService(UUID uuid, String str) {
        this.I = null;
        this.J = null;
        this.D = uuid;
        this.I = GLBluetooth.c;
        this.J = GLBluetooth.d;
        this.G = convertMacAddressToInteger(this.I.getAddress());
        this.M = str;
    }

    private void a(BluetoothSocket bluetoothSocket) {
        Log.d(C, "connected() " + bluetoothSocket.getRemoteDevice().getName());
        this.V = new d(this, bluetoothSocket);
        this.L = bluetoothSocket;
        BluetoothDevice remoteDevice = bluetoothSocket.getRemoteDevice();
        if (this.F == 3) {
            this.F = 4;
            this.V.a((GLBluetooth.b + "|0").getBytes());
        } else if (this.F == 1) {
            this.F = 2;
            this.H = convertMacAddressToInteger(remoteDevice.getAddress());
        } else if (this.F == 5) {
            this.F = 7;
            this.V.a((GLBluetooth.b + "|2" + f6a + this.H + f6a + this.M).getBytes());
        }
        this.V.start();
    }

    static /* synthetic */ int access$000(GLBluetoothService gLBluetoothService) {
        return gLBluetoothService.F;
    }

    static /* synthetic */ void access$100(GLBluetoothService gLBluetoothService) {
        switch (gLBluetoothService.F) {
            case 3:
                if (!gLBluetoothService.Y) {
                    if (!gLBluetoothService.N.isEmpty() && gLBluetoothService.T == null && gLBluetoothService.V == null) {
                        gLBluetoothService.I.cancelDiscovery();
                        gLBluetoothService.T = new c(gLBluetoothService, (BluetoothDevice) gLBluetoothService.N.remove(0));
                        gLBluetoothService.T.start();
                    }
                } else if (gLBluetoothService.I.isEnabled()) {
                    gLBluetoothService.b();
                }
                break;
            case 9:
                gLBluetoothService.a(gLBluetoothService.H);
                break;
        }
        if (gLBluetoothService.R != -1 && gLBluetoothService.S != 0 && System.currentTimeMillis() > gLBluetoothService.S) {
            Log.d(C, "Callback " + gLBluetoothService.R);
            gLBluetoothService.ConnectionStateChanged(gLBluetoothService.R, gLBluetoothService.H);
            gLBluetoothService.R = -1;
            gLBluetoothService.S = 0L;
        }
        if (gLBluetoothService.F == 8 || gLBluetoothService.Z == null || gLBluetoothService.Z.length <= GLBluetooth.b.length()) {
            return;
        }
        synchronized (gLBluetoothService) {
            String str = new String(gLBluetoothService.Z);
            Log.i(C, "Msg " + str);
            StringTokenizer stringTokenizer = new StringTokenizer(str, f6a);
            if (stringTokenizer.countTokens() > 1 && stringTokenizer.nextToken().equals(GLBluetooth.b)) {
                int i2 = Integer.parseInt(stringTokenizer.nextToken());
                Log.i(C, "Function " + i2);
                switch (i2) {
                    case 0:
                        if (gLBluetoothService.F == 2) {
                            gLBluetoothService.V.a((GLBluetooth.b + "|1" + f6a + gLBluetoothService.M).getBytes());
                            gLBluetoothService.V.a();
                            gLBluetoothService.V = null;
                            gLBluetoothService.F = 1;
                        }
                        break;
                    case 1:
                        if (gLBluetoothService.F == 4) {
                            gLBluetoothService.P.put(Integer.valueOf(gLBluetoothService.H), stringTokenizer.nextToken().getBytes());
                            gLBluetoothService.O.put(Integer.valueOf(gLBluetoothService.H), gLBluetoothService.L.getRemoteDevice());
                            gLBluetoothService.V.a();
                            gLBluetoothService.V = null;
                            Log.i(C, "Found service " + gLBluetoothService.H);
                            gLBluetoothService.ConnectionStateChanged(7, gLBluetoothService.H);
                            gLBluetoothService.I.startDiscovery();
                            gLBluetoothService.F = 3;
                        }
                        break;
                    case 2:
                        if (gLBluetoothService.F == 2) {
                            if (gLBluetoothService.G != Integer.parseInt(stringTokenizer.nextToken())) {
                                gLBluetoothService.V.a();
                                gLBluetoothService.V = null;
                                gLBluetoothService.F = 1;
                                gLBluetoothService.U.start();
                            } else {
                                gLBluetoothService.P.put(Integer.valueOf(gLBluetoothService.H), stringTokenizer.nextToken().getBytes());
                                gLBluetoothService.V.a((GLBluetooth.b + "|3").getBytes());
                                gLBluetoothService.ConnectionStateChanged(8, gLBluetoothService.H);
                            }
                        }
                        break;
                    case 3:
                        gLBluetoothService.F = 7;
                        break;
                    case 4:
                        gLBluetoothService.ConnectionStateChanged(9, gLBluetoothService.H);
                        gLBluetoothService.F = -1;
                        gLBluetoothService.c();
                        break;
                    case 5:
                        gLBluetoothService.F = 8;
                        gLBluetoothService.S = System.currentTimeMillis() + 100;
                        gLBluetoothService.R = 2;
                        break;
                }
            } else {
                Log.e(C, "Invalid msg data");
            }
            gLBluetoothService.Z = null;
        }
    }

    static /* synthetic */ void access$1000(GLBluetoothService gLBluetoothService) {
        BluetoothDevice remoteDevice;
        Log.d(C, "connectionLost()");
        if (gLBluetoothService.V != null) {
            gLBluetoothService.V.a();
        }
        if (gLBluetoothService.F == 8) {
            if (gLBluetoothService.L == null || (remoteDevice = gLBluetoothService.L.getRemoteDevice()) == null) {
                gLBluetoothService.ConnectionStateChanged(3, -1);
            } else {
                gLBluetoothService.ConnectionStateChanged(3, convertMacAddressToInteger(remoteDevice.getAddress()));
            }
        }
    }

    static /* synthetic */ d access$1102(GLBluetoothService gLBluetoothService, d dVar) {
        gLBluetoothService.V = dVar;
        return dVar;
    }

    static /* synthetic */ BluetoothSocket access$1202(GLBluetoothService gLBluetoothService, BluetoothSocket bluetoothSocket) {
        gLBluetoothService.L = bluetoothSocket;
        return bluetoothSocket;
    }

    static /* synthetic */ Vector access$200(GLBluetoothService gLBluetoothService) {
        return gLBluetoothService.N;
    }

    static /* synthetic */ UUID access$300(GLBluetoothService gLBluetoothService) {
        return gLBluetoothService.D;
    }

    static /* synthetic */ BluetoothAdapter access$400(GLBluetoothService gLBluetoothService) {
        return gLBluetoothService.I;
    }

    static /* synthetic */ void access$500(GLBluetoothService gLBluetoothService, BluetoothSocket bluetoothSocket) {
        Log.d(C, "connected() " + bluetoothSocket.getRemoteDevice().getName());
        gLBluetoothService.V = new d(gLBluetoothService, bluetoothSocket);
        gLBluetoothService.L = bluetoothSocket;
        BluetoothDevice remoteDevice = bluetoothSocket.getRemoteDevice();
        if (gLBluetoothService.F == 3) {
            gLBluetoothService.F = 4;
            gLBluetoothService.V.a((GLBluetooth.b + "|0").getBytes());
        } else if (gLBluetoothService.F == 1) {
            gLBluetoothService.F = 2;
            gLBluetoothService.H = convertMacAddressToInteger(remoteDevice.getAddress());
        } else if (gLBluetoothService.F == 5) {
            gLBluetoothService.F = 7;
            gLBluetoothService.V.a((GLBluetooth.b + "|2" + f6a + gLBluetoothService.H + f6a + gLBluetoothService.M).getBytes());
        }
        gLBluetoothService.V.start();
    }

    static /* synthetic */ void access$600(GLBluetoothService gLBluetoothService) {
        Log.d(C, "connectionFailed()");
        if (gLBluetoothService.F == 3 || gLBluetoothService.F == 4) {
            gLBluetoothService.I.startDiscovery();
        } else {
            gLBluetoothService.F = 9;
        }
    }

    static /* synthetic */ c access$702(GLBluetoothService gLBluetoothService, c cVar) {
        gLBluetoothService.T = cVar;
        return cVar;
    }

    static /* synthetic */ int access$800(GLBluetoothService gLBluetoothService) {
        return gLBluetoothService.H;
    }

    static /* synthetic */ int access$802(GLBluetoothService gLBluetoothService, int i2) {
        gLBluetoothService.H = i2;
        return i2;
    }

    static /* synthetic */ byte[] access$900(GLBluetoothService gLBluetoothService) {
        return gLBluetoothService.Z;
    }

    static /* synthetic */ byte[] access$902(GLBluetoothService gLBluetoothService, byte[] bArr) {
        gLBluetoothService.Z = bArr;
        return bArr;
    }

    public static int convertMacAddressToInteger(String str) {
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public static void enableDiscovery() {
        Log.i(C, "enableDiscovery()");
        Intent intent = new Intent("android.bluetooth.adapter.action.REQUEST_DISCOVERABLE");
        intent.putExtra("android.bluetooth.adapter.extra.DISCOVERABLE_DURATION", 300);
        GLBluetooth.f5a.startActivity(intent);
    }

    private void g() {
        switch (this.F) {
            case 3:
                if (!this.Y) {
                    if (!this.N.isEmpty() && this.T == null && this.V == null) {
                        this.I.cancelDiscovery();
                        this.T = new c(this, (BluetoothDevice) this.N.remove(0));
                        this.T.start();
                    }
                } else if (this.I.isEnabled()) {
                    b();
                }
                break;
            case 9:
                a(this.H);
                break;
        }
        if (this.R != -1 && this.S != 0 && System.currentTimeMillis() > this.S) {
            Log.d(C, "Callback " + this.R);
            ConnectionStateChanged(this.R, this.H);
            this.R = -1;
            this.S = 0L;
        }
        if (this.F == 8 || this.Z == null || this.Z.length <= GLBluetooth.b.length()) {
            return;
        }
        synchronized (this) {
            String str = new String(this.Z);
            Log.i(C, "Msg " + str);
            StringTokenizer stringTokenizer = new StringTokenizer(str, f6a);
            if (stringTokenizer.countTokens() > 1 && stringTokenizer.nextToken().equals(GLBluetooth.b)) {
                int i2 = Integer.parseInt(stringTokenizer.nextToken());
                Log.i(C, "Function " + i2);
                switch (i2) {
                    case 0:
                        if (this.F == 2) {
                            this.V.a((GLBluetooth.b + "|1" + f6a + this.M).getBytes());
                            this.V.a();
                            this.V = null;
                            this.F = 1;
                        }
                        break;
                    case 1:
                        if (this.F == 4) {
                            this.P.put(Integer.valueOf(this.H), stringTokenizer.nextToken().getBytes());
                            this.O.put(Integer.valueOf(this.H), this.L.getRemoteDevice());
                            this.V.a();
                            this.V = null;
                            Log.i(C, "Found service " + this.H);
                            ConnectionStateChanged(7, this.H);
                            this.I.startDiscovery();
                            this.F = 3;
                        }
                        break;
                    case 2:
                        if (this.F == 2) {
                            if (this.G != Integer.parseInt(stringTokenizer.nextToken())) {
                                this.V.a();
                                this.V = null;
                                this.F = 1;
                                this.U.start();
                            } else {
                                this.P.put(Integer.valueOf(this.H), stringTokenizer.nextToken().getBytes());
                                this.V.a((GLBluetooth.b + "|3").getBytes());
                                ConnectionStateChanged(8, this.H);
                            }
                        }
                        break;
                    case 3:
                        this.F = 7;
                        break;
                    case 4:
                        ConnectionStateChanged(9, this.H);
                        this.F = -1;
                        c();
                        break;
                    case 5:
                        this.F = 8;
                        this.S = System.currentTimeMillis() + 100;
                        this.R = 2;
                        break;
                }
            } else {
                Log.e(C, "Invalid msg data");
            }
            this.Z = null;
        }
    }

    private void h() {
        Log.i(C, "stopDiscovery()");
        this.I.cancelDiscovery();
        if (this.Q) {
            GLBluetooth.f5a.unregisterReceiver(this.X);
            this.Q = false;
        }
    }

    private void i() {
        Log.d(C, "connectionFailed()");
        if (this.F == 3 || this.F == 4) {
            this.I.startDiscovery();
        } else {
            this.F = 9;
        }
    }

    private void j() {
        BluetoothDevice remoteDevice;
        Log.d(C, "connectionLost()");
        if (this.V != null) {
            this.V.a();
        }
        if (this.F == 8) {
            if (this.L == null || (remoteDevice = this.L.getRemoteDevice()) == null) {
                ConnectionStateChanged(3, -1);
            } else {
                ConnectionStateChanged(3, convertMacAddressToInteger(remoteDevice.getAddress()));
            }
        }
    }

    private void k() {
        if (this.Z == null || this.Z.length <= GLBluetooth.b.length()) {
            return;
        }
        synchronized (this) {
            String str = new String(this.Z);
            Log.i(C, "Msg " + str);
            StringTokenizer stringTokenizer = new StringTokenizer(str, f6a);
            if (stringTokenizer.countTokens() > 1 && stringTokenizer.nextToken().equals(GLBluetooth.b)) {
                int i2 = Integer.parseInt(stringTokenizer.nextToken());
                Log.i(C, "Function " + i2);
                switch (i2) {
                    case 0:
                        if (this.F == 2) {
                            this.V.a((GLBluetooth.b + "|1" + f6a + this.M).getBytes());
                            this.V.a();
                            this.V = null;
                            this.F = 1;
                        }
                        break;
                    case 1:
                        if (this.F == 4) {
                            this.P.put(Integer.valueOf(this.H), stringTokenizer.nextToken().getBytes());
                            this.O.put(Integer.valueOf(this.H), this.L.getRemoteDevice());
                            this.V.a();
                            this.V = null;
                            Log.i(C, "Found service " + this.H);
                            ConnectionStateChanged(7, this.H);
                            this.I.startDiscovery();
                            this.F = 3;
                        }
                        break;
                    case 2:
                        if (this.F == 2) {
                            if (this.G != Integer.parseInt(stringTokenizer.nextToken())) {
                                this.V.a();
                                this.V = null;
                                this.F = 1;
                                this.U.start();
                            } else {
                                this.P.put(Integer.valueOf(this.H), stringTokenizer.nextToken().getBytes());
                                this.V.a((GLBluetooth.b + "|3").getBytes());
                                ConnectionStateChanged(8, this.H);
                            }
                        }
                        break;
                    case 3:
                        this.F = 7;
                        break;
                    case 4:
                        ConnectionStateChanged(9, this.H);
                        this.F = -1;
                        c();
                        break;
                    case 5:
                        this.F = 8;
                        this.S = System.currentTimeMillis() + 100;
                        this.R = 2;
                        break;
                }
            } else {
                Log.e(C, "Invalid msg data");
            }
            this.Z = null;
        }
    }

    public native void ConnectionStateChanged(int i2, int i3);

    public native void ReceiveData(int i2);

    public final void a(int i2) {
        Log.i(C, "connect()" + Integer.toHexString(i2));
        if (this.O.isEmpty() || this.F == 7) {
            Log.i(C, "mFoundServices is null");
            return;
        }
        BluetoothDevice bluetoothDevice = (BluetoothDevice) this.O.get(Integer.valueOf(i2));
        if (bluetoothDevice == null) {
            this.F = -1;
            ConnectionStateChanged(5, i2);
            Log.i(C, "Cannot find device to connect " + Integer.toHexString(i2));
            return;
        }
        this.H = i2;
        Log.i(C, "Device to connect found " + Integer.toHexString(i2));
        if (this.T != null) {
            try {
                this.T.join();
            } catch (Exception e2) {
                Log.e(C, "Failed to join " + e2);
            }
            this.T = null;
        }
        this.I.cancelDiscovery();
        this.F = 5;
        this.T = new c(this, bluetoothDevice);
        this.T.start();
    }

    public final void a(byte[] bArr) {
        if (this.V != null) {
            this.V.a(bArr);
        }
    }

    public final boolean a() {
        this.E = true;
        Log.d(C, "Created server");
        this.U = new e(this);
        this.F = 1;
        this.U.start();
        this.W.start();
        enableDiscovery();
        return true;
    }

    public final boolean b() {
        Log.i(C, "startDiscover()");
        if (this.I == null) {
            return false;
        }
        if (this.F == 0) {
            this.W.start();
        }
        this.H = 0;
        this.F = 3;
        if (!this.I.isEnabled()) {
            this.Y = true;
            GLBluetooth.f5a.startActivity(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"));
            return true;
        }
        this.Y = false;
        this.I.startDiscovery();
        if (!this.Q) {
            GLBluetooth.f5a.registerReceiver(this.X, new IntentFilter("android.bluetooth.device.action.FOUND"));
        }
        this.Q = true;
        return true;
    }

    public final byte[] b(int i2) {
        return (byte[]) this.P.get(Integer.valueOf(i2));
    }

    public final void c() {
        Log.i(C, "close()");
        this.N.clear();
        this.O.clear();
        this.P.clear();
        Log.i(C, "stopDiscovery()");
        this.I.cancelDiscovery();
        if (this.Q) {
            GLBluetooth.f5a.unregisterReceiver(this.X);
            this.Q = false;
        }
        if (this.T != null) {
            this.T.a();
            this.T = null;
        }
        if (this.V != null) {
            this.V.a();
            this.V = null;
        }
        if (this.U != null) {
            this.U.a();
            this.U = null;
        }
        if (this.L != null) {
            try {
                this.L.close();
            } catch (Exception e2) {
            }
            this.L = null;
        }
        this.H = 0;
        this.F = -1;
    }

    public final void d() {
        this.V.a((GLBluetooth.b + "|5").getBytes());
        if (this.U != null) {
            this.U.a();
            this.U = null;
        }
        this.F = 8;
        this.S = System.currentTimeMillis() + 100;
        this.R = 2;
    }

    public final void e() {
        this.V.a((GLBluetooth.b + "|4").getBytes());
        this.V.a();
        this.V = null;
        this.F = 1;
    }

    public final byte[] f() {
        return this.Z;
    }
}
