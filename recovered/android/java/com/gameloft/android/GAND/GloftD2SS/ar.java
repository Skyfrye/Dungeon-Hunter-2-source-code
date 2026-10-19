package com.gameloft.android.GAND.GloftD2SS;

/* JADX INFO: loaded from: classes.dex */
final class ar implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain$HelloWebViewClient f54a;

    ar(GLiveMain$HelloWebViewClient gLiveMain$HelloWebViewClient) {
        this.f54a = gLiveMain$HelloWebViewClient;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Thread.sleep(500L);
        } catch (Exception e) {
        }
        if (GLiveMain.A.equals(GLiveMain.aw)) {
            if (GLiveMain.bn) {
                return;
            }
            GLiveMain.bn = true;
            GLiveMain.f.post(new at(this));
            return;
        }
        if (GLiveMain.bm) {
            return;
        }
        GLiveMain.bm = true;
        GLiveMain.f.post(new as(this));
    }
}
