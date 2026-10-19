package com.gameloft.android.GAND.GloftD2SS;

/* JADX INFO: loaded from: classes.dex */
final class ap implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain$GLiveJavaScriptInterface f52a;

    ap(GLiveMain$GLiveJavaScriptInterface gLiveMain$GLiveJavaScriptInterface) {
        this.f52a = gLiveMain$GLiveJavaScriptInterface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GLiveMain.updateWebView();
    }
}
