package com.samsungapps.plasma;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class d$5 implements AdapterView$OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ArrayList f286a;
    final /* synthetic */ int b;
    final /* synthetic */ d c;

    d$5(d dVar, ArrayList arrayList, int i) {
        this.c = dVar;
        this.f286a = arrayList;
        this.b = i;
    }

    @Override // android.widget.AdapterView$OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        if (d.c(this.c)) {
            return;
        }
        ItemInformation itemInformation = (ItemInformation) this.f286a.get(i);
        if (itemInformation == null) {
            a.a("Selected item is null.");
            d.a(this.c, this.b, Plasma.STATUS_CODE_PROCESSERROR);
        } else {
            String itemId = itemInformation.getItemId();
            d.d(this.c).put(Integer.valueOf(this.b), itemId);
            d.a(this.c, this.b, itemId);
        }
    }
}
