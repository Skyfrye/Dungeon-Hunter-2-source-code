package com.samsungapps.plasma;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.ListView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class d$8 implements DialogInterface$OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f289a;

    d$8(d dVar) {
        this.f289a = dVar;
    }

    @Override // android.content.DialogInterface$OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        a.a("onDismiss");
        if (d.c(this.f289a)) {
            d.b(this.f289a, false);
            d.g(this.f289a).removeFooterView(d.f(this.f289a));
        }
        d.a(this.f289a, (LinearLayout) null);
        d.a(this.f289a, (ListView) null);
        d.a(this.f289a, (ArrayAdapter) null);
        d.a(this.f289a, (Dialog) null);
        d.h(this.f289a).clear();
        d.a(this.f289a, (ArrayList) null);
    }
}
