package com.gameloft.android.GAND.GloftD2SS.GLUtils;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
final class b implements Runnable {
    b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Device.access$002(new WebView(SUtils.getContext()));
            Device.access$102(Device.access$000().getSettings().getUserAgentString());
            Device.access$002(null);
        } catch (Exception e) {
            Device.access$102("GL_EMU_001");
        }
    }
}
