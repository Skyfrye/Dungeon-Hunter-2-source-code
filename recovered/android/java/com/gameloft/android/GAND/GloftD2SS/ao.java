package com.gameloft.android.GAND.GloftD2SS;

/* JADX INFO: loaded from: classes.dex */
final class ao implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain$GLiveJavaScriptInterface f51a;

    ao(GLiveMain$GLiveJavaScriptInterface gLiveMain$GLiveJavaScriptInterface) {
        this.f51a = gLiveMain$GLiveJavaScriptInterface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (GLiveMain.ch) {
            GLiveMain.aS.setText("Twitter");
        } else if (GLiveMain.ci) {
            GLiveMain.aS.setText("Facebook");
        } else if (this.f51a.f21a <= 0 || GLiveMain.aL[this.f51a.f21a - 1] == null) {
            GLiveMain.aS.setText("");
        } else {
            GLiveMain.aS.setText(GLiveMain.aL[this.f51a.f21a - 1]);
        }
        GLiveMain.updateWebView();
        GLiveMain.cT = true;
    }
}
