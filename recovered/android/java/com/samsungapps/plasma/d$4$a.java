package com.samsungapps.plasma;

import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
class d$4$a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d$4 f285a;
    private TextView b = null;
    private TextView c = null;

    d$4$a(d$4 d_4) {
        this.f285a = d_4;
    }

    static /* synthetic */ TextView a(d$4$a d_4_a) {
        return d_4_a.b;
    }

    static /* synthetic */ TextView a(d$4$a d_4_a, TextView textView) {
        d_4_a.b = textView;
        return textView;
    }

    static /* synthetic */ TextView b(d$4$a d_4_a) {
        return d_4_a.c;
    }

    static /* synthetic */ TextView b(d$4$a d_4_a, TextView textView) {
        d_4_a.c = textView;
        return textView;
    }
}
