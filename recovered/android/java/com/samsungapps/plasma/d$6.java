package com.samsungapps.plasma;

import android.widget.AbsListView;
import android.widget.AbsListView$OnScrollListener;

/* JADX INFO: loaded from: classes.dex */
class d$6 implements AbsListView$OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f287a;
    final /* synthetic */ int b;
    final /* synthetic */ d c;

    d$6(d dVar, int i, int i2) {
        this.c = dVar;
        this.f287a = i;
        this.b = i2;
    }

    @Override // android.widget.AbsListView$OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (absListView.isShown() && !d.c(this.c)) {
            if (d.e(this.c)) {
                i3--;
                d.a(this.c, false);
            }
            if (i2 >= this.f287a || i3 >= this.f287a || i < i3 - (i2 * 2)) {
                return;
            }
            d.b(this.c, true);
            d.g(this.c).addFooterView(d.f(this.c));
            if (d.a(this.c, this.b, i3 + 1, i3 + 15, true)) {
                return;
            }
            d.b(this.c, false);
            d.g(this.c).removeFooterView(d.f(this.c));
        }
    }

    @Override // android.widget.AbsListView$OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
