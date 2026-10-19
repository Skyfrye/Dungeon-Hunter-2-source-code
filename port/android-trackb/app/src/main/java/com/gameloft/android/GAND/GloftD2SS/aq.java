package com.gameloft.android.GAND.GloftD2SS;

final class aq implements Runnable {

    final /* synthetic */ GLiveMain.GLiveJavaScriptInterface f53a;

    aq(GLiveMain.GLiveJavaScriptInterface gLiveJavaScriptInterface) {
        this.f53a = gLiveJavaScriptInterface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GLiveMain.updateWebView();
        Thread.yield();
    }
}
