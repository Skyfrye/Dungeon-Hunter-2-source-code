package com.gameloft.layout;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import com.gameloft.android.GAND.GloftD2SS.bu;

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
            setTypeface(Typeface.createFromAsset(getContext().getAssets(), getContext().getString(bu.data_downloader_custom_font_name)));
        } catch (Exception e) {
        }
    }
}
