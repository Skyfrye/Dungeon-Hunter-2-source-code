package com.gameloft.android.GAND.GloftD2SS;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class b extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLBluetoothService f63a;

    b(GLBluetoothService gLBluetoothService) {
        this.f63a = gLBluetoothService;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ((GLBluetoothService.access$000(this.f63a) == 3 || GLBluetoothService.access$000(this.f63a) == 4) && "android.bluetooth.device.action.FOUND".equals(intent.getAction())) {
            BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
            if (bluetoothDevice.getName() != null) {
                GLBluetoothService.access$200(this.f63a).add(bluetoothDevice);
                Log.i("GLBluetoothService", "Device found " + bluetoothDevice.getName() + " - " + bluetoothDevice.getAddress());
            }
        }
    }
}
