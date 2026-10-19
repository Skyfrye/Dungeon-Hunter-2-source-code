package com.samsungapps.plasma;

import android.text.TextUtils$TruncateAt;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class d$11 extends BaseExpandableListAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ArrayList f281a;
    final /* synthetic */ d b;

    d$11(d dVar, ArrayList arrayList) {
        this.b = dVar;
        this.f281a = arrayList;
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getChild(int i, int i2) {
        return null;
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i, int i2) {
        return 0L;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        g gVar = (g) this.f281a.get(i);
        if (gVar == null) {
            return null;
        }
        return gVar.d();
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i) {
        g gVar = (g) this.f281a.get(i);
        return (gVar != null && gVar.a_()) ? 1 : 0;
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getGroup(int i) {
        return this.f281a.get(i);
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return this.f281a.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i) {
        return 0L;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        LinearLayout linearLayout = new LinearLayout(viewGroup.getContext());
        g gVar = (g) getGroup(i);
        if (gVar != null) {
            TextView textView = new TextView(viewGroup.getContext());
            textView.setText(gVar.a());
            textView.setGravity(19);
            textView.setPadding(10, 10, 10, 10);
            textView.setTextSize(20.0f);
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils$TruncateAt.END);
            linearLayout.addView(textView, new LinearLayout$LayoutParams(-1, -2));
        }
        return linearLayout;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean isChildSelectable(int i, int i2) {
        return false;
    }
}
