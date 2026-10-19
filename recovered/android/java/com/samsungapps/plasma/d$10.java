package com.samsungapps.plasma;

import android.widget.ExpandableListView$OnGroupCollapseListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class d$10 implements ExpandableListView$OnGroupCollapseListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ArrayList f280a;
    final /* synthetic */ d b;

    d$10(d dVar, ArrayList arrayList) {
        this.b = dVar;
        this.f280a = arrayList;
    }

    @Override // android.widget.ExpandableListView$OnGroupCollapseListener
    public void onGroupCollapse(int i) {
        if (d.i(this.b) == this.f280a.get(i)) {
            d.a(this.b, (g) null);
        }
    }
}
