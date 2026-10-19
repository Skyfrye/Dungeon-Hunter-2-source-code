package com.gameloft.android.GAND.GloftD2SS;

final class ao implements Runnable {

    final /* synthetic */ GLiveMain.GLiveJavaScriptInterface f51a;

    ao(GLiveMain.GLiveJavaScriptInterface gLiveJavaScriptInterface) {
        this.f51a = gLiveJavaScriptInterface;
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
