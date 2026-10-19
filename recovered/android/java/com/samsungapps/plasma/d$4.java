package com.samsungapps.plasma;

import android.R$style;
import android.content.Context;
import android.text.TextUtils$TruncateAt;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class d$4 extends ArrayAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f284a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    d$4(d dVar, Context context, int i, List list) {
        super(context, i, list);
        this.f284a = dVar;
    }

    private View a() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        TextView textView = new TextView(getContext());
        textView.setGravity(19);
        textView.setPadding(10, 10, 10, 10);
        textView.setTextAppearance(getContext(), R$style.TextAppearance.Medium);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils$TruncateAt.END);
        linearLayout.addView(textView, new LinearLayout$LayoutParams(-1, -2, 1.0f));
        TextView textView2 = new TextView(getContext());
        textView2.setGravity(21);
        textView2.setPadding(10, 10, 10, 10);
        textView2.setTextAppearance(getContext(), R$style.TextAppearance.Medium);
        linearLayout.addView(textView2, new LinearLayout$LayoutParams(-2, -2));
        linearLayout.setPadding(10, 15, 10, 15);
        d$4$a d_4_a = new d$4$a(this);
        d$4$a.a(d_4_a, textView);
        d$4$a.b(d_4_a, textView2);
        linearLayout.setTag(d_4_a);
        return linearLayout;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ItemInformation itemInformation;
        if (view == null) {
            view = a();
        }
        d$4$a d_4_a = (d$4$a) view.getTag();
        if (d_4_a != null && (itemInformation = (ItemInformation) getItem(i)) != null) {
            d$4$a.a(d_4_a).setText(itemInformation.getItemName());
            d$4$a.b(d_4_a).setText(i.a(itemInformation.getItemPrice(), itemInformation.getCurrencyUnit(), d.a(this.f284a), d.b(this.f284a)));
        }
        return view;
    }
}
