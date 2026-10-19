package com.gameloft.android.GAND.GloftD2SS;

import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.inputmethod.InputMethodManager;
import java.util.ArrayList;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

/* JADX INFO: loaded from: classes.dex */
final class z implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GLiveMain f176a;

    z(GLiveMain gLiveMain) {
        this.f176a = gLiveMain;
    }

    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        try {
            ArrayList arrayList = new ArrayList(GLiveMain.aO);
            if (GLiveMain.aO > 0) {
                GLiveMain.c.addView(GLiveMain.f20a);
                GLiveMain.c.addView(GLiveMain.f);
                GLiveMain.c.addView(GLiveMain.d);
                GLiveMain.c.addView(GLiveMain.e);
                ((InputMethodManager) this.f176a.getSystemService("input_method")).hideSoftInputFromWindow(GLiveMain.bo.getWindowToken(), 0);
                GLiveMain.c.removeView(GLiveMain.m);
                GLiveMain.k.removeViews(2, GLiveMain.aO);
                String string = GLiveMain.bo.getText().toString();
                GLiveMain.bo.setText("");
                if (string.trim().compareTo("") == 0) {
                    AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this.f176a.aT);
                    alertDialog$Builder.setTitle(GLiveMain.cw[GLiveMain.bQ]);
                    alertDialog$Builder.setPositiveButton(this.f176a.getString(GLiveMain.cr[GLiveMain.bQ], new Object[]{this}), new aa(this));
                    AlertDialog alertDialogCreate = alertDialog$Builder.create();
                    GLiveMain.bK = alertDialogCreate;
                    alertDialogCreate.show();
                    return;
                }
                DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                HttpPost httpPost = new HttpPost("http://livewebapp.gameloft.com/glive/messages/send-message/android_uid/" + GLiveMain.q);
                for (int i = 0; i < GLiveMain.aO; i++) {
                    arrayList.add(new BasicNameValuePair("user_id[]", GLiveMain.aN[i]));
                }
                arrayList.add(new BasicNameValuePair("message", string));
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
                defaultHttpClient.execute(httpPost);
                GLiveMain.aU.setBackgroundResource(2130837587);
                GLiveMain.aW.setBackgroundResource(2130837587);
                GLiveMain.aX.setBackgroundResource(2130837587);
                GLiveMain.aV.setBackgroundResource(2130837582);
                GLiveMain.f20a.loadUrl("http://livewebapp.gameloft.com/glive/messages/sent/");
            } else {
                AlertDialog$Builder alertDialog$Builder2 = new AlertDialog$Builder(this.f176a.aT);
                alertDialog$Builder2.setTitle(GLiveMain.cv[GLiveMain.bQ]);
                alertDialog$Builder2.setPositiveButton(GLiveMain.cr[GLiveMain.bQ], new ab(this));
                AlertDialog alertDialogCreate2 = alertDialog$Builder2.create();
                GLiveMain.bK = alertDialogCreate2;
                alertDialogCreate2.show();
            }
            GLiveMain.aP = 1;
        } catch (Exception e) {
        }
    }
}
