package com.gameloft.android.GAND.GloftD2SS;

import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.RelativeLayout$LayoutParams;
import java.util.ArrayList;
import java.util.regex.Pattern;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

/* JADX INFO: loaded from: classes.dex */
final class v implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain f172a;

    v(GLiveMain gLiveMain) {
        this.f172a = gLiveMain;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        String string = GLiveMain.bN.getText().toString();
        String[] strArrSplit = string.split(",");
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this.f172a.aT);
        if (string.trim().compareTo("") == 0) {
            alertDialog$Builder.setTitle(this.f172a.getString(GLiveMain.cv[GLiveMain.bQ], new Object[]{this}));
            alertDialog$Builder.setPositiveButton(this.f172a.getString(GLiveMain.cr[GLiveMain.bQ], new Object[]{this}), new w(this));
            AlertDialog alertDialogCreate = alertDialog$Builder.create();
            GLiveMain.bK = alertDialogCreate;
            alertDialogCreate.show();
            return;
        }
        Pattern patternCompile = Pattern.compile("^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,6}$", 2);
        for (String str : strArrSplit) {
            if (!patternCompile.matcher(str.trim()).matches()) {
                return;
            }
        }
        GLiveMain.c.addView(GLiveMain.f20a);
        GLiveMain.c.addView(GLiveMain.f);
        GLiveMain.c.addView(GLiveMain.d);
        ((InputMethodManager) this.f172a.getSystemService("input_method")).hideSoftInputFromWindow(GLiveMain.bN.getWindowToken(), 0);
        GLiveMain.c.removeView(GLiveMain.n);
        GLiveMain.bh = false;
        GLiveMain.f20a.requestFocus();
        if (!GLiveMain.bi && GLiveMain.bP) {
            GLiveMain.bi = true;
            RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (GLiveMain.E * 45.0f), (int) (GLiveMain.F * 40.0f));
            relativeLayout$LayoutParams.addRule(15);
            relativeLayout$LayoutParams.addRule(11);
            GLiveMain.f.addView(GLiveMain.aZ, relativeLayout$LayoutParams);
        }
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        HttpPost httpPost = new HttpPost(GLiveMain.bP ? "http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id/" + GLiveMain.u + "/android_uid/" + GLiveMain.q + "/store/FVGL" : "http://livewebapp.gameloft.com/glive/friends/show-invite-email/android_uid/" + GLiveMain.q + "/store/FVGL");
        try {
            ArrayList arrayList = new ArrayList(strArrSplit.length * 2);
            for (int i = 0; i < strArrSplit.length; i++) {
                strArrSplit[i].trim();
                arrayList.add(new BasicNameValuePair("name[]", strArrSplit[i]));
                arrayList.add(new BasicNameValuePair("email[]", strArrSplit[i]));
            }
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
            defaultHttpClient.execute(httpPost);
        } catch (Exception e) {
        }
    }
}
