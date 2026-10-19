package com.gameloft.android.GAND.GloftD2SS;

final class ap implements Runnable {

    final /* synthetic */ GLiveMain.GLiveJavaScriptInterface f52a;

    ap(GLiveMain.GLiveJavaScriptInterface gLiveJavaScriptInterface) {
        this.f52a = gLiveJavaScriptInterface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GLiveMain.updateWebView();
    }
}
