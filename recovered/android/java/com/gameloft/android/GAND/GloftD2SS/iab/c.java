package com.gameloft.android.GAND.GloftD2SS.iab;

/* JADX INFO: loaded from: classes.dex */
final class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f109a;

    c(int i) {
        this.f109a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            InAppBilling.access$000(this.f109a);
        } catch (Exception e) {
        }
    }
}
