package com.gameloft.android.GAND.GloftD2SS;

final class a implements Runnable {

    final /* synthetic */ GLBluetoothService f36a;

    a(GLBluetoothService gLBluetoothService) {
        this.f36a = gLBluetoothService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (this.f36a.F != -1) {
            GLBluetoothService.access$100(this.f36a);
            try {
                Thread.sleep(80L);
            } catch (Exception e) {
            }
        }
        this.f36a.c();
    }
}
