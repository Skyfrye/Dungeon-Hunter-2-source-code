package com.gameloft.layout;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.Button;

/* JADX INFO: loaded from: classes.dex */
public class DataDownloaderButton extends Button {
    private DataDownloaderButton(Context context) {
        super(context);
        a();
    }

    public DataDownloaderButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public DataDownloaderButton(Context context, AttributeSet attributeSet, int i) {
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
