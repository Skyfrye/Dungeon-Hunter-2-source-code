package com.gameloft.android.GAND.GloftD2SS;

import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Encrypter;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

/* JADX INFO: loaded from: classes.dex */
final class GLiveMain$GLiveJavaScriptInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f21a = 0;
    final /* synthetic */ GLiveMain b;

    GLiveMain$GLiveJavaScriptInterface(GLiveMain gLiveMain) {
        this.b = gLiveMain;
    }

    public final void checkIsFriend(String str) {
        GLiveMain.v = str;
    }

    public final void getAutoLogin(String str) {
        GLiveMain.az = str;
    }

    public final void getCurentUserName(String str) {
        GLiveMain.A = str;
    }

    public final void getCurentUserUid(String str) {
        GLiveMain.z = str;
    }

    public final void getEmail(String str) {
        GLiveMain.ay = str;
    }

    public final void getFriendsMessages(String str) {
        GLiveMain.t = str;
    }

    public final void getGameId(String str) {
        GLiveMain.u = str;
    }

    public final void getGamesMessages(String str) {
        GLiveMain.s = str;
    }

    public final void getInboxMessages(String str) {
        GLiveMain.r = str;
    }

    public final void getPassword(String str) {
        GLiveMain.ax = str;
        if (!GLiveMain.cj || GLiveMain.aw.equals("") || GLiveMain.ax.equals("")) {
            return;
        }
        GLiveMain.as = GLiveMain.aw;
        GLiveMain.at = GLiveMain.ax;
        this.b.a();
        GLiveMain.cj = false;
        if (GLiveMain.needToRemoveFacebook()) {
            GLiveMain.al = GLiveMain.ak.replace("LANG", GLiveMain.cp[GLiveMain.bQ]);
        } else {
            GLiveMain.al = GLiveMain.aj.replace("LANG", GLiveMain.cp[GLiveMain.bQ]);
        }
        String deviceId = Device.getDeviceId();
        String strCrypt = Encrypter.crypt(Locale.getDefault().getCountry());
        GLiveMain.ap = Encrypter.crypt(GLiveMain.ap);
        String strCrypt2 = Encrypter.crypt(deviceId);
        GLiveMain.as = Encrypter.crypt(GLiveMain.as);
        GLiveMain.at = Encrypter.crypt(GLiveMain.at);
        GLiveMain.ao = Encrypter.crypt(GLiveMain.ao);
        GLiveMain.aq = Encrypter.crypt(GLiveMain.aq);
        String strReplace = GLiveMain.al.replace("COUNTRY_DETECTED", strCrypt);
        GLiveMain.al = strReplace;
        String strReplace2 = strReplace.replace("UDIDPHONE", strCrypt2);
        GLiveMain.al = strReplace2;
        String strReplace3 = strReplace2.replace("GGIGAME", GLiveMain.ao);
        GLiveMain.al = strReplace3;
        String strReplace4 = strReplace3.replace("DEV_TOKEN", GLiveMain.ar);
        GLiveMain.al = strReplace4;
        String strReplace5 = strReplace4.replace("USER_NAME", GLiveMain.as);
        GLiveMain.al = strReplace5;
        String strReplace6 = strReplace5.replace("PASSWORD", GLiveMain.at);
        GLiveMain.al = strReplace6;
        String strReplace7 = strReplace6.replace("AUTOLOGIN", GLiveMain.az);
        GLiveMain.al = strReplace7;
        String strReplace8 = strReplace7.replace("DEVICE_ANDROID", GLiveMain.ap);
        GLiveMain.al = strReplace8;
        String strReplace9 = strReplace8.replace("FIRMWARE_ANDROID", GLiveMain.aq);
        GLiveMain.al = strReplace9;
        String strReplace10 = strReplace9.replace("SCREEN_HEIGHT", String.valueOf(GLiveMain.D));
        GLiveMain.al = strReplace10;
        GLiveMain.al = strReplace10.replaceAll(" ", "");
        GLiveMain.al += "&enc=1";
    }

    public final void getSubject(String str) {
        GLiveMain.y = str;
        GLiveMain.cc = this.b.getString(GLiveMain.cO[GLiveMain.bQ]) + GLiveMain.y;
        this.b.runOnUiThread(new aq(this));
    }

    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: (wrap int:AGET) */
    public final void getUserID(String str) {
        GLiveMain.q = str;
        if (GLiveMain.bq > 0) {
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
            HttpPost httpPost = new HttpPost(GLiveMain.ag + "/android_uid/" + GLiveMain.q + "/ggi_game/" + GLiveMain.ao);
            try {
                ArrayList arrayList = new ArrayList(GLiveMain.bq);
                for (int i = 0; i < GLiveMain.bq; i++) {
                    arrayList.add(new BasicNameValuePair("trophy_id[]", new StringBuilder().append(GLiveMain.bp[i]).toString()));
                }
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
                defaultHttpClient.execute(httpPost);
            } catch (Exception e) {
            }
            GLiveMain.bq = 0;
        }
    }

    public final void getUserName(String str) {
        GLiveMain.aw = str;
    }

    public final void showAddFriendOption(String str) {
        GLiveMain.w = str;
    }

    public final void showRateOption(String str) {
        GLiveMain.x = str;
    }

    public final void showTitle(String str) {
        if (!GLiveMain.aK && GLiveMain.aQ.intValue() > 0) {
            Integer num = GLiveMain.aQ;
            GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - 1);
            Integer num2 = GLiveMain.aF;
            GLiveMain.aF = Integer.valueOf(GLiveMain.aF.intValue() - 1);
        }
        if (GLiveMain.aR) {
            Integer num3 = GLiveMain.aQ;
            GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() + 1);
            Integer num4 = GLiveMain.aF;
            GLiveMain.aF = Integer.valueOf(GLiveMain.aF.intValue() + 1);
            this.b.runOnUiThread(new ap(this));
        } else if (GLiveMain.aQ.intValue() >= 0) {
            GLiveMain.aL[GLiveMain.aQ.intValue()] = str;
            Integer num5 = GLiveMain.aQ;
            GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() + 1);
            Integer num6 = GLiveMain.aF;
            GLiveMain.aF = Integer.valueOf(GLiveMain.aF.intValue() + 1);
            GLiveMain.cT = false;
            this.f21a = GLiveMain.aQ.intValue();
            this.b.runOnUiThread(new ao(this));
        } else {
            Integer num7 = GLiveMain.aQ;
            GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() + 1);
            Integer num8 = GLiveMain.aF;
            GLiveMain.aF = Integer.valueOf(GLiveMain.aF.intValue() + 1);
        }
        GLiveMain.aR = false;
    }
}
