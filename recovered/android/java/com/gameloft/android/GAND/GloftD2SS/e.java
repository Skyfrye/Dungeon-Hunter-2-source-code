package com.gameloft.android.GAND.GloftD2SS;

import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class e extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLBluetoothService f101a;
    private final BluetoothServerSocket b;

    public e(GLBluetoothService gLBluetoothService) {
        this.f101a = gLBluetoothService;
        BluetoothServerSocket bluetoothServerSocketListenUsingRfcommWithServiceRecord = null;
        try {
            bluetoothServerSocketListenUsingRfcommWithServiceRecord = GLBluetoothService.access$400(gLBluetoothService).listenUsingRfcommWithServiceRecord(GLBluetooth.b, GLBluetoothService.access$300(gLBluetoothService));
        } catch (IOException e) {
            Log.e("GLBluetoothService", "listen() failed", e);
        }
        this.b = bluetoothServerSocketListenUsingRfcommWithServiceRecord;
    }

    public final void a() {
        Log.d("GLBluetoothService", "cancel " + this);
        try {
            this.b.close();
        } catch (IOException e) {
            Log.e("GLBluetoothService", "close() of server failed", e);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Log.d("GLBluetoothService", "BEGIN mAcceptThread" + this);
        setName("ListenThread");
        while (true) {
            if (GLBluetoothService.access$000(this.f101a) != 1 && GLBluetoothService.access$000(this.f101a) != 2) {
                break;
            }
            if (GLBluetoothService.access$000(this.f101a) == 2) {
                try {
                    Thread.sleep(10L);
                } catch (Exception e) {
                }
            } else {
                try {
                    BluetoothSocket bluetoothSocketAccept = this.b.accept();
                    if (bluetoothSocketAccept != null) {
                        synchronized (this.f101a) {
                            GLBluetoothService.access$500(this.f101a, bluetoothSocketAccept);
                        }
                    } else {
                        continue;
                    }
                } catch (IOException e2) {
                    Log.e("GLBluetoothService", "accept() failed", e2);
                }
            }
        }
        Log.i("GLBluetoothService", "END ListenThread");
    }
}
