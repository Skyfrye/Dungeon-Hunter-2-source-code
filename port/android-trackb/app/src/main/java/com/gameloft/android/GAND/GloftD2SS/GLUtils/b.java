package com.gameloft.android.GAND.GloftD2SS.GLUtils;

import android.webkit.WebView;

final class b implements Runnable {
    b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            WebView unused = Device.y = new WebView(SUtils.getContext());
            String unused2 = Device.m = Device.y.getSettings().getUserAgentString();
            WebView unused3 = Device.y = null;
        } catch (Exception e) {
            String unused4 = Device.m = "GL_EMU_001";
        }
    }
}
