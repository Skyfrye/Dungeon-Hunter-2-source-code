package com.gameloft.android.GAND.GloftD2SS.iab;

final class c implements Runnable {

    final /* synthetic */ int f109a;

    c(int i) {
        this.f109a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            InAppBilling.handleOperations(this.f109a);
        } catch (Exception e) {
        }
    }
}
