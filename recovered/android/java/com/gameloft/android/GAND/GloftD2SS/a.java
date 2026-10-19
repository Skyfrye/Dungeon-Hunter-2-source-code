package com.gameloft.android.GAND.GloftD2SS;

/* JADX INFO: loaded from: classes.dex */
final class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLBluetoothService f36a;

    a(GLBluetoothService gLBluetoothService) {
        this.f36a = gLBluetoothService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (GLBluetoothService.access$000(this.f36a) != -1) {
            GLBluetoothService.access$100(this.f36a);
            try {
                Thread.sleep(80L);
            } catch (Exception e) {
            }
        }
        this.f36a.c();
    }
}
