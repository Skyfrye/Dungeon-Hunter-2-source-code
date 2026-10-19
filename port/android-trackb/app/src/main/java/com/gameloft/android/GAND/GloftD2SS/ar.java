package com.gameloft.android.GAND.GloftD2SS;

final class ar implements Runnable {

    final /* synthetic */ GLiveMain.HelloWebViewClient f54a;

    ar(GLiveMain.HelloWebViewClient helloWebViewClient) {
        this.f54a = helloWebViewClient;
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
