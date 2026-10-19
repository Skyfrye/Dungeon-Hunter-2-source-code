package com.gameloft.android.GAND.GloftD2SS;

import android.bluetooth.BluetoothSocket;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

final class d extends Thread {

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
        gLBluetoothService.H = GLBluetoothService.convertMacAddressToInteger(this.b.getRemoteDevice().getAddress());
        Log.d("GLBluetoothService", "create ConnectedThread " + this.b.getRemoteDevice().getName() + " id " + gLBluetoothService.H);
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
            this.f100a.L = null;
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
            if (this.f100a.F == 8 || this.f100a.Z == null) {
                try {
                    int i = this.c.read(bArr);
                    Log.i("GLBluetoothService", "Read " + i);
                    if (i > 0) {
                        byte[] bArr2 = new byte[i];
                        System.arraycopy(bArr, 0, bArr2, 0, i);
                        if (this.f100a.F == 8) {
                            this.f100a.Z = bArr2;
                            this.f100a.ReceiveData(this.f100a.H);
                        } else {
                            synchronized (this.f100a) {
                                this.f100a.Z = bArr2;
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
        this.f100a.V = null;
    }
}
