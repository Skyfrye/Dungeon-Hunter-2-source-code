package com.gameloft.android.GAND.GloftD2SS;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

final class b extends BroadcastReceiver {

    final /* synthetic */ GLBluetoothService f63a;

    b(GLBluetoothService gLBluetoothService) {
        this.f63a = gLBluetoothService;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ((this.f63a.F == 3 || this.f63a.F == 4) && "android.bluetooth.device.action.FOUND".equals(intent.getAction())) {
            BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
            if (bluetoothDevice.getName() != null) {
                this.f63a.N.add(bluetoothDevice);
                Log.i("GLBluetoothService", "Device found " + bluetoothDevice.getName() + " - " + bluetoothDevice.getAddress());
            }
        }
    }
}
