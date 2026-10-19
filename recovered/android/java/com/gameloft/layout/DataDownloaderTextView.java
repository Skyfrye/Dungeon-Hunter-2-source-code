package com.gameloft.layout;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class DataDownloaderTextView extends TextView {
    private DataDownloaderTextView(Context context) {
        super(context);
        a();
    }

    public DataDownloaderTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public DataDownloaderTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        if (isInEditMode()) {
            return;
        }
        try {
            setTypeface(Typeface.createFromAsset(getContext().getAssets(), getContext().getString(2131034182)));
        } catch (Exception e) {
        }
    }
}
