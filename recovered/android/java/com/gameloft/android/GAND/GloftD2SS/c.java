package com.gameloft.android.GAND.GloftD2SS;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class c extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLBluetoothService f94a;
    private final BluetoothSocket b;
    private final BluetoothDevice c;

    public c(GLBluetoothService gLBluetoothService, BluetoothDevice bluetoothDevice) {
        this.f94a = gLBluetoothService;
        this.c = bluetoothDevice;
        BluetoothSocket bluetoothSocketCreateRfcommSocketToServiceRecord = null;
        try {
            bluetoothSocketCreateRfcommSocketToServiceRecord = bluetoothDevice.createRfcommSocketToServiceRecord(GLBluetoothService.access$300(gLBluetoothService));
        } catch (IOException e) {
            Log.e("GLBluetoothService", "create() failed", e);
        }
        this.b = bluetoothSocketCreateRfcommSocketToServiceRecord;
    }

    public final void a() {
        try {
            this.b.close();
        } catch (IOException e) {
            Log.e("GLBluetoothService", "close() of connect socket failed", e);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Log.i("GLBluetoothService", "BEGIN mConnectThread " + this.c.getName());
        setName("ConnectThread");
        try {
            this.b.connect();
            synchronized (this.f94a) {
                GLBluetoothService.access$702(this.f94a, null);
                Log.i("GLBluetoothService", "END mConnectThread");
                GLBluetoothService.access$500(this.f94a, this.b);
            }
        } catch (IOException e) {
            Log.i("GLBluetoothService", "Failed to connect to " + this.c.getName() + " " + e);
            GLBluetoothService.access$600(this.f94a);
            try {
                this.b.close();
            } catch (IOException e2) {
                Log.e("GLBluetoothService", "unable to close() socket during connection failure", e2);
            }
            synchronized (this.f94a) {
                GLBluetoothService.access$702(this.f94a, null);
            }
        }
    }
}
