package com.gameloft.android.GAND.GloftD2SS.installer;

import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
final class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f122a;
    final /* synthetic */ GameInstaller b;

    g(GameInstaller gameInstaller, String str) {
        this.b = gameInstaller;
        this.f122a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            TextView textView = (TextView) this.b.findViewById(2131427339);
            if (textView != null) {
                textView.setVisibility(0);
                textView.setText(this.f122a);
            }
        } catch (Exception e) {
        }
    }
}
