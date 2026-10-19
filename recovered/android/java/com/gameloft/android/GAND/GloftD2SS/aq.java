package com.gameloft.android.GAND.GloftD2SS;

/* JADX INFO: loaded from: classes.dex */
final class aq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain$GLiveJavaScriptInterface f53a;

    aq(GLiveMain$GLiveJavaScriptInterface gLiveMain$GLiveJavaScriptInterface) {
        this.f53a = gLiveMain$GLiveJavaScriptInterface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GLiveMain.updateWebView();
        Thread.yield();
    }
}
