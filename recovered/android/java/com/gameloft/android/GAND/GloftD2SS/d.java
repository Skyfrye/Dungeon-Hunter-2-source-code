package com.gameloft.android.GAND.GloftD2SS;

import android.bluetooth.BluetoothSocket;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
final class d extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLBluetoothService f100a;
    private final BluetoothSocket b;
    private final InputStream c;
    private final OutputStream d;
    private boolean e;

    public d(GLBluetoothService gLBluetoothService, BluetoothSocket bluetoothSocket) {
        IOException e;
        InputStream inputStream;
        OutputStream outputStream = null;
        this.f100a = gLBluetoothService;
        this.b = bluetoothSocket;
        GLBluetoothService.access$802(gLBluetoothService, GLBluetoothService.convertMacAddressToInteger(this.b.getRemoteDevice().getAddress()));
        Log.d("GLBluetoothService", "create ConnectedThread " + this.b.getRemoteDevice().getName() + " id " + GLBluetoothService.access$800(gLBluetoothService));
        try {
            inputStream = bluetoothSocket.getInputStream();
            try {
                outputStream = bluetoothSocket.getOutputStream();
            } catch (IOException e2) {
                e = e2;
                Log.e("GLBluetoothService", "temp sockets not created", e);
            }
        } catch (IOException e3) {
            e = e3;
            inputStream = null;
        }
        this.c = inputStream;
        this.d = outputStream;
    }

    public final void a() {
        try {
            this.e = true;
            GLBluetoothService.access$1202(this.f100a, null);
            this.b.close();
        } catch (IOException e) {
            Log.e("GLBluetoothService", "close() of connect socket failed", e);
        }
    }

    public final void a(byte[] bArr) {
        try {
            this.d.write(bArr);
            this.d.flush();
        } catch (IOException e) {
            Log.e("GLBluetoothService", "Exception during write", e);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Log.i("GLBluetoothService", "BEGIN mConnectedThread");
        byte[] bArr = new byte[1024];
        this.e = false;
        while (!this.e) {
            if (GLBluetoothService.access$000(this.f100a) == 8 || GLBluetoothService.access$900(this.f100a) == null) {
                try {
                    int i = this.c.read(bArr);
                    Log.i("GLBluetoothService", "Read " + i);
                    if (i > 0) {
                        byte[] bArr2 = new byte[i];
                        System.arraycopy(bArr, 0, bArr2, 0, i);
                        if (GLBluetoothService.access$000(this.f100a) == 8) {
                            GLBluetoothService.access$902(this.f100a, bArr2);
                            this.f100a.ReceiveData(GLBluetoothService.access$800(this.f100a));
                        } else {
                            synchronized (this.f100a) {
                                GLBluetoothService.access$902(this.f100a, bArr2);
                            }
                        }
                    } else {
                        continue;
                    }
                } catch (IOException e) {
                    Log.e("GLBluetoothService", "disconnected", e);
                    GLBluetoothService.access$1000(this.f100a);
                }
            }
        }
        GLBluetoothService.access$1102(this.f100a, null);
    }
}
