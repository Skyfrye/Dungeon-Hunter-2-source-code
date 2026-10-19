package com.gameloft.android.GAND.GloftD2SS.installer;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
final class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f120a;
    final /* synthetic */ String b;
    final /* synthetic */ GameInstaller c;

    e(GameInstaller gameInstaller, String str, String str2) {
        this.c = gameInstaller;
        this.f120a = str;
        this.b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View viewInflate = this.c.getLayoutInflater().inflate(2130903043, (ViewGroup) this.c.findViewById(2131427342));
        ((TextView) viewInflate.findViewById(2131427346)).setText(this.f120a);
        if (this.b != null) {
            ((TextView) viewInflate.findViewById(2131427345)).setText(this.b);
        }
        Toast toast = new Toast(this.c.getApplicationContext());
        toast.setGravity(17, 0, 0);
        toast.setDuration(1);
        toast.setView(viewInflate);
    }
}
