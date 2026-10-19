package com.samsungapps.plasma;

import android.widget.ExpandableListView;
import android.widget.ExpandableListView$OnGroupExpandListener;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class d$9 implements ExpandableListView$OnGroupExpandListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ExpandableListView f290a;
    final /* synthetic */ ArrayList b;
    final /* synthetic */ TextView c;
    final /* synthetic */ d d;

    d$9(d dVar, ExpandableListView expandableListView, ArrayList arrayList, TextView textView) {
        this.d = dVar;
        this.f290a = expandableListView;
        this.b = arrayList;
        this.c = textView;
    }

    @Override // android.widget.ExpandableListView$OnGroupExpandListener
    public void onGroupExpand(int i) {
        for (int i2 = 0; i2 < this.f290a.getExpandableListAdapter().getGroupCount(); i2++) {
            if (i2 != i) {
                this.f290a.collapseGroup(i2);
            }
        }
        d.a(this.d, (g) this.b.get(i));
        this.c.setText(i.a(d.i(this.d).h(), d.i(this.d).i(), d.a(this.d), d.b(this.d)));
    }
}
