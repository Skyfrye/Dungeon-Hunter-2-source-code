package com.gameloft.android.GAND.GloftD2SS;

import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout$LayoutParams;
import android.widget.RelativeLayout$LayoutParams;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Encrypter;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class GLiveMain$HelloWebViewClient extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ProgressDialog f22a;
    final /* synthetic */ GLiveMain b;

    private GLiveMain$HelloWebViewClient(GLiveMain gLiveMain) {
        this.b = gLiveMain;
        this.f22a = null;
    }

    /* synthetic */ GLiveMain$HelloWebViewClient(GLiveMain gLiveMain, byte b) {
        this(gLiveMain);
    }

    private static void CheckValidity(String str) {
        GLiveMain.aJ = true;
        GLiveMain.aK = true;
        if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/leaderboards/") && !str.startsWith("http://livewebapp.gameloft.com/glive/leaderboards")) {
            String str2 = (String) GLiveMain.aG.pop();
            GLiveMain.aG.push(new String(str2));
            if (GLiveMain.aD.compareTo(str2) != 0) {
                GLiveMain.aJ = true;
                GLiveMain.aK = true;
            }
        } else if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/leaderboards")) {
            GLiveMain.aD = str;
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/leaderboards/") && GLiveMain.aI) {
            GLiveMain.aK = true;
        }
        if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/ranking/") && !str.startsWith("http://livewebapp.gameloft.com/glive/ranking/")) {
            String str3 = (String) GLiveMain.aG.pop();
            GLiveMain.aG.push(new String(str3));
            if (GLiveMain.aD.compareTo(str3) != 0) {
                GLiveMain.aJ = true;
                GLiveMain.aK = true;
            }
        } else if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/ranking")) {
            GLiveMain.aD = str;
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/ranking") && GLiveMain.aI) {
            GLiveMain.aK = true;
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/fb_send/yes/fb_q/1") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/inv/fb_q/1") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/src/fb_q/1")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
            if (!GLiveMain.aG.empty()) {
                GLiveMain.aD = (String) GLiveMain.aG.pop();
            }
            if (!GLiveMain.aH.empty()) {
                GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
            }
        }
        if (str.equals("https://www.facebook.com/login.php?login_attempt=1&popup=1")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.equals("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/fb_send/yes") || str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/fb_send/yes/fb_in/1")) {
            if (!GLiveMain.aG.empty()) {
                GLiveMain.aD = (String) GLiveMain.aG.pop();
            }
            if (!GLiveMain.aH.empty()) {
                GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
            }
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/?iDelete=1&tweet=sent") || str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "?iDelete=1&tweet=sent")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/games/trophies/gid/" + GLiveMain.u + "/tid/") || (str.startsWith("http://livewebapp.gameloft.com/glive/games/trophies/gid/" + GLiveMain.u + "/id/") && str.contains("/fb_new/yes"))) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.indexOf("http://livewebapp.gameloft.com/glive/account/index/uid") != -1 && str.indexOf("Delete=") != -1) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.indexOf("http://livewebapp.gameloft.com/glive/friends/?iDelete=") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/friends?iDelete=") != -1) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
            if (!GLiveMain.aG.empty()) {
                GLiveMain.aD = (String) GLiveMain.aG.pop();
            }
            if (!GLiveMain.aH.empty()) {
                GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
            }
        }
        if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/login/recover-password")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if ((str.startsWith("http://livewebapp.gameloft.com/glive/account/username") || str.startsWith("http://livewebapp.gameloft.com/glive/account/password") || str.startsWith("http://livewebapp.gameloft.com/glive/account/email")) && GLiveMain.aD.compareTo(str) == 0) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/account/avatar") && str.startsWith("http://livewebapp.gameloft.com/glive/account/edit") && !GLiveMain.aI) {
            GLiveMain.aD = (String) GLiveMain.aG.pop();
            GLiveMain.aD = (String) GLiveMain.aG.pop();
            Integer numValueOf = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
            GLiveMain.aQ = numValueOf;
            GLiveMain.aQ = Integer.valueOf(numValueOf.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/friends?select=yes") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/index/select/yes?user_name=") || str.startsWith("http://livewebapp.gameloft.com/glive/signal-back")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/friends/show-invite-email")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (GLiveMain.aD.startsWith("http://wapshop.gameloft.com/wifi/hdplus_full_shop")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.startsWith("http://ingameads.gameloft.com/redir/?from") || str.startsWith("market://")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
    }

    private static void ReSetStack(String str) {
        if (str.compareTo(GLiveMain.al) == 0 || str.compareTo("http://livewebapp.gameloft.com/glive/messages/index") == 0 || str.compareTo("http://livewebapp.gameloft.com/glive/friends") == 0 || str.compareTo("http://livewebapp.gameloft.com/glive/games") == 0) {
            while (!GLiveMain.aG.empty()) {
                GLiveMain.aG.pop();
            }
            while (!GLiveMain.aH.empty()) {
                GLiveMain.aH.pop();
            }
            GLiveMain.aQ = 0;
            GLiveMain.aF = 0;
            GLiveMain.aD = str;
        }
    }

    private void a(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        try {
            this.b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        if (str.compareTo(GLiveMain.al) == 0 || str.compareTo("http://livewebapp.gameloft.com/glive/messages/index") == 0 || str.compareTo("http://livewebapp.gameloft.com/glive/friends") == 0 || str.compareTo("http://livewebapp.gameloft.com/glive/games") == 0) {
            while (!GLiveMain.aG.empty()) {
                GLiveMain.aG.pop();
            }
            while (!GLiveMain.aH.empty()) {
                GLiveMain.aH.pop();
            }
            GLiveMain.aQ = 0;
            GLiveMain.aF = 0;
            GLiveMain.aD = str;
        }
        GLiveMain.ci = str.indexOf("facebook.com") != -1;
        GLiveMain.ch = str.indexOf("twitter.com") != -1;
        if (GLiveMain.ci || GLiveMain.ch) {
            GLiveMain.updateWebView();
        }
        webView.loadUrl("javascript:window.GLIVE.getUserID(sUserUid)");
        webView.loadUrl("javascript:window.GLIVE.getInboxMessages(iInboxMessages)");
        webView.loadUrl("javascript:window.GLIVE.getGamesMessages(iGamesMessages)");
        webView.loadUrl("javascript:window.GLIVE.getFriendsMessages(iFriendsMessages)");
        webView.loadUrl("javascript:window.GLIVE.getGameId(iGameId)");
        webView.loadUrl("javascript:window.GLIVE.getSubject(sSubject)");
        webView.loadUrl("javascript:window.GLIVE.checkIsFriend(bIsFriend)");
        webView.loadUrl("javascript:window.GLIVE.showAddFriendOption(bShowAdd)");
        webView.loadUrl("javascript:window.GLIVE.showRateOption(bShowEvaluate)");
        webView.loadUrl("javascript:window.GLIVE.getCurentUserUid(iUserId)");
        webView.loadUrl("javascript:window.GLIVE.getCurentUserName(sUserName)");
        webView.loadUrl("javascript:window.GLIVE.showTitle(sTitle)");
        GLiveMain.aJ = true;
        GLiveMain.aK = true;
        if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/leaderboards/") && !str.startsWith("http://livewebapp.gameloft.com/glive/leaderboards")) {
            String str2 = (String) GLiveMain.aG.pop();
            GLiveMain.aG.push(new String(str2));
            if (GLiveMain.aD.compareTo(str2) != 0) {
                GLiveMain.aJ = true;
                GLiveMain.aK = true;
            }
        } else if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/leaderboards")) {
            GLiveMain.aD = str;
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/leaderboards/") && GLiveMain.aI) {
            GLiveMain.aK = true;
        }
        if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/ranking/") && !str.startsWith("http://livewebapp.gameloft.com/glive/ranking/")) {
            String str3 = (String) GLiveMain.aG.pop();
            GLiveMain.aG.push(new String(str3));
            if (GLiveMain.aD.compareTo(str3) != 0) {
                GLiveMain.aJ = true;
                GLiveMain.aK = true;
            }
        } else if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/ranking")) {
            GLiveMain.aD = str;
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/ranking") && GLiveMain.aI) {
            GLiveMain.aK = true;
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/fb_send/yes/fb_q/1") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/inv/fb_q/1") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/src/fb_q/1")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
            if (!GLiveMain.aG.empty()) {
                GLiveMain.aD = (String) GLiveMain.aG.pop();
            }
            if (!GLiveMain.aH.empty()) {
                GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
            }
        }
        if (str.equals("https://www.facebook.com/login.php?login_attempt=1&popup=1")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.equals("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/fb_send/yes") || str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/fb_send/yes/fb_in/1")) {
            if (!GLiveMain.aG.empty()) {
                GLiveMain.aD = (String) GLiveMain.aG.pop();
            }
            if (!GLiveMain.aH.empty()) {
                GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
            }
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/?iDelete=1&tweet=sent") || str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "?iDelete=1&tweet=sent")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/games/trophies/gid/" + GLiveMain.u + "/tid/") || (str.startsWith("http://livewebapp.gameloft.com/glive/games/trophies/gid/" + GLiveMain.u + "/id/") && str.contains("/fb_new/yes"))) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.indexOf("http://livewebapp.gameloft.com/glive/account/index/uid") != -1 && str.indexOf("Delete=") != -1) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.indexOf("http://livewebapp.gameloft.com/glive/friends/?iDelete=") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/friends?iDelete=") != -1) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
            if (!GLiveMain.aG.empty()) {
                GLiveMain.aD = (String) GLiveMain.aG.pop();
            }
            if (!GLiveMain.aH.empty()) {
                GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
            }
        }
        if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/login/recover-password")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if ((str.startsWith("http://livewebapp.gameloft.com/glive/account/username") || str.startsWith("http://livewebapp.gameloft.com/glive/account/password") || str.startsWith("http://livewebapp.gameloft.com/glive/account/email")) && GLiveMain.aD.compareTo(str) == 0) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/account/avatar") && str.startsWith("http://livewebapp.gameloft.com/glive/account/edit") && !GLiveMain.aI) {
            GLiveMain.aD = (String) GLiveMain.aG.pop();
            GLiveMain.aD = (String) GLiveMain.aG.pop();
            Integer numValueOf = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
            GLiveMain.aQ = numValueOf;
            GLiveMain.aQ = Integer.valueOf(numValueOf.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/friends?select=yes") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/index/select/yes?user_name=") || str.startsWith("http://livewebapp.gameloft.com/glive/signal-back")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/friends/show-invite-email")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (GLiveMain.aD.startsWith("http://wapshop.gameloft.com/wifi/hdplus_full_shop")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (str.startsWith("http://ingameads.gameloft.com/redir/?from") || str.startsWith("market://")) {
            GLiveMain.aJ = false;
            GLiveMain.aK = false;
        }
        if (GLiveMain.aI) {
            GLiveMain.aD = str;
            GLiveMain.aF = 0;
            GLiveMain.aI = false;
        } else if (GLiveMain.aJ) {
            if (GLiveMain.aD.compareTo("") == 0) {
                GLiveMain.aD = str;
            } else if (GLiveMain.aD.compareTo(str) != 0) {
                if (GLiveMain.aF.intValue() > 0 && str.indexOf("wapshop.gameloft.com") == -1) {
                    GLiveMain.aG.push(new String(GLiveMain.aD));
                    GLiveMain.aD = str;
                    GLiveMain.aH.push(new Integer(GLiveMain.aF.intValue()));
                    GLiveMain.aF = 0;
                }
            } else if (GLiveMain.aF.intValue() > 0 && !str.startsWith("http://twitter.com/oauth/authorize?oauth_token") && !str.startsWith("https://www.facebook.com/login.php?api_key") && !GLiveMain.aG.empty()) {
                GLiveMain.aH.push(new Integer(((Integer) GLiveMain.aH.pop()).intValue() + GLiveMain.aF.intValue()));
                GLiveMain.aF = 0;
            }
        }
        if (str.compareTo("http://livewebapp.gameloft.com/glive/") == 0) {
            GLiveMain.aU.setBackgroundResource(2130837582);
            GLiveMain.aV.setBackgroundResource(2130837587);
            GLiveMain.aW.setBackgroundResource(2130837587);
            GLiveMain.aX.setBackgroundResource(2130837587);
        }
        if (!str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/") && !str.startsWith("http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id")) {
            if (GLiveMain.bi) {
                GLiveMain.f.removeView(GLiveMain.aZ);
            }
            GLiveMain.bi = false;
        } else if (!GLiveMain.bi) {
            GLiveMain.bi = true;
            RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (GLiveMain.E * 45.0f), (int) (GLiveMain.F * 40.0f));
            relativeLayout$LayoutParams.addRule(15);
            relativeLayout$LayoutParams.addRule(11);
            GLiveMain.f.addView(GLiveMain.aZ, relativeLayout$LayoutParams);
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/account/index/uid/")) {
            webView.loadUrl("javascript:window.GLIVE.getCurentUserName(sUserName)");
            new Thread(new ar(this)).start();
        } else {
            if (GLiveMain.bm) {
                GLiveMain.f.removeView(GLiveMain.bd);
            }
            GLiveMain.bm = false;
            if (GLiveMain.bn) {
                GLiveMain.f.removeView(GLiveMain.i);
                GLiveMain.f.removeView(GLiveMain.j);
            }
            GLiveMain.bn = false;
        }
        if (str.compareTo("http://livewebapp.gameloft.com/glive/friends") != 0 && str.compareTo("http://livewebapp.gameloft.com/glive/friends/") != 0 && str.indexOf("http://livewebapp.gameloft.com/glive/friends?iDelete") == -1 && str.indexOf("http://livewebapp.gameloft.com/glive/friends/index/page") == -1) {
            if (GLiveMain.bj) {
                GLiveMain.f.removeView(GLiveMain.ba);
            }
            GLiveMain.bj = false;
        } else if (!GLiveMain.bj) {
            GLiveMain.bj = true;
            RelativeLayout$LayoutParams relativeLayout$LayoutParams2 = new RelativeLayout$LayoutParams((int) (GLiveMain.E * 45.0f), (int) (GLiveMain.F * 40.0f));
            relativeLayout$LayoutParams2.addRule(15);
            relativeLayout$LayoutParams2.addRule(11);
            GLiveMain.f.addView(GLiveMain.ba, relativeLayout$LayoutParams2);
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/login/index") || GLiveMain.cl || str.compareTo("http://livewebapp.gameloft.com/glive/") == 0 || str.startsWith("http://livewebapp.gameloft.com/glive/index/index") || str.compareTo(GLiveMain.al) == 0 || str.compareTo("http://livewebapp.gameloft.com/glive/login") == 0 || str.startsWith("http://livewebapp.gameloft.com/glive/login?iDelete")) {
            GLiveMain.aQ = 0;
            GLiveMain.aF = 0;
            if (!GLiveMain.bk) {
                GLiveMain.bk = true;
                RelativeLayout$LayoutParams relativeLayout$LayoutParams3 = new RelativeLayout$LayoutParams((int) (GLiveMain.E * 50.0f), (int) (GLiveMain.F * 45.0f));
                relativeLayout$LayoutParams3.addRule(15);
                relativeLayout$LayoutParams3.addRule(11);
                GLiveMain.f.addView(GLiveMain.bb, relativeLayout$LayoutParams3);
            }
        } else {
            if (GLiveMain.bk) {
                GLiveMain.f.removeView(GLiveMain.bb);
            }
            GLiveMain.bk = false;
        }
        if (str.compareTo(GLiveMain.af) != 0) {
            if (GLiveMain.bn) {
                GLiveMain.f.removeView(GLiveMain.i);
                GLiveMain.f.removeView(GLiveMain.j);
            }
            GLiveMain.bn = false;
        } else if (!GLiveMain.bn) {
            GLiveMain.bn = true;
            RelativeLayout$LayoutParams relativeLayout$LayoutParams4 = new RelativeLayout$LayoutParams((int) (GLiveMain.E * 122.0f), (int) (GLiveMain.F * 45.0f));
            relativeLayout$LayoutParams4.addRule(15);
            relativeLayout$LayoutParams4.addRule(11);
            GLiveMain.f.addView(GLiveMain.i, relativeLayout$LayoutParams4);
            GLiveMain.f.addView(GLiveMain.j, relativeLayout$LayoutParams4);
        }
        if (str.compareTo("http://livewebapp.gameloft.com/glive/") == 0 || str.compareTo(GLiveMain.al) == 0 || str.startsWith("http://livewebapp.gameloft.com/glive/index/index") || GLiveMain.cl) {
            GLiveMain.aQ = 0;
            GLiveMain.aF = 0;
            if (!GLiveMain.bl) {
                GLiveMain.bl = true;
                RelativeLayout$LayoutParams relativeLayout$LayoutParams5 = new RelativeLayout$LayoutParams((int) (GLiveMain.E * 40.0f), (int) (GLiveMain.F * 40.0f));
                relativeLayout$LayoutParams5.addRule(15);
                relativeLayout$LayoutParams5.addRule(9);
                GLiveMain.f.addView(GLiveMain.bc, relativeLayout$LayoutParams5);
            }
            webView.loadUrl("javascript:window.GLIVE.getUserName(strUserName)");
            webView.loadUrl("javascript:window.GLIVE.getPassword(strPassword)");
            webView.loadUrl("javascript:window.GLIVE.getAutoLogin(blnRememberMe)");
        } else {
            if (GLiveMain.bl) {
                GLiveMain.f.removeView(GLiveMain.bc);
            }
            GLiveMain.bl = false;
        }
        if (str.compareTo("http://livewebapp.gameloft.com/glive/friends/show-invite-email") == 0 || str.indexOf("www.facebook.com") != -1) {
            GLiveMain.c.clearFocus();
            GLiveMain.c.requestFocus();
        }
        if (str.indexOf("http://livewebapp.gameloft.com/glive/messages/index") != -1) {
            if (!GLiveMain.bg) {
                GLiveMain.bg = true;
                RelativeLayout$LayoutParams relativeLayout$LayoutParams6 = new RelativeLayout$LayoutParams((int) (GLiveMain.E * 45.0f), (int) (GLiveMain.F * 40.0f));
                relativeLayout$LayoutParams6.addRule(15);
                relativeLayout$LayoutParams6.addRule(11);
                GLiveMain.f.addView(GLiveMain.aY, relativeLayout$LayoutParams6);
            }
        } else if (str.indexOf("http://livewebapp.gameloft.com/glive/messages/sent") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/messages/friends") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/messages/plays") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/games") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/friends/add-friends") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/login") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/?lg=") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/messages/show/mid") != -1) {
            if (GLiveMain.bg) {
                GLiveMain.f.removeView(GLiveMain.aY);
            }
            GLiveMain.bg = false;
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/messages/") && !str.startsWith("http://livewebapp.gameloft.com/glive/messages/show/mid") && !str.startsWith("http://livewebapp.gameloft.com/glive/messages/show-sent/mid")) {
            GLiveMain.aQ = 0;
            GLiveMain.aF = 0;
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/messages/friend/uid/") || str.startsWith("http://livewebapp.gameloft.com/glive/messages/play/id/")) {
            Integer num = GLiveMain.aQ;
            GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() + 1);
            Integer num2 = GLiveMain.aF;
            GLiveMain.aF = Integer.valueOf(GLiveMain.aF.intValue() + 1);
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/logout") || str.startsWith("http://livewebapp.gameloft.com/glive/login?iDelete=2")) {
            GLiveMain.cj = false;
            GLiveMain.az = "0";
            GLiveMain.av = "0";
            GLiveMain.aw = "";
            GLiveMain.as = "";
            GLiveMain.ax = "";
            GLiveMain.at = "";
            GLiveMain.ay = "";
            GLiveMain.au = "";
            this.b.a();
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
            String str4 = GLiveMain.al + "&enc=1";
            GLiveMain.al = str4;
            if (str4.indexOf("remember_me=1") != -1) {
                GLiveMain.al = GLiveMain.al.replace("remember_me=1", "remember_me=");
            }
        }
        if (str.startsWith("http://livewebapp.gameloft.com/glive/login")) {
            GLiveMain.cj = true;
        }
        if (str.compareTo("http://livewebapp.gameloft.com/glive/info/") == 0 || str.compareTo("http://livewebapp.gameloft.com/glive/info") == 0) {
            GLiveMain.cg = true;
        } else {
            GLiveMain.cg = false;
        }
        if (this.f22a != null) {
            try {
                this.f22a.dismiss();
            } catch (Exception e) {
            }
            this.f22a = null;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.f22a == null) {
            this.f22a = new ProgressDialog(this.b);
            this.f22a.setProgressStyle(0);
            this.f22a.setMessage(this.b.getString(GLiveMain.cN[GLiveMain.bQ], new Object[]{this}));
            this.f22a.setCanceledOnTouchOutside(false);
            try {
                this.f22a.show();
            } catch (Exception e) {
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        sslErrorHandler.proceed();
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith("http://livewebapp.gameloft.com/scripts/banners_click.php")) {
            GLiveMain.cl = true;
        } else if ((GLiveMain.cl && str.startsWith("http://ingameads.gameloft.com/redir/?from")) || str.startsWith("market://")) {
            GLiveMain.cl = true;
        } else {
            GLiveMain.cl = false;
        }
        if (str.indexOf("http://dl.gameloft.com") != -1) {
            a(str);
            return false;
        }
        if (str.startsWith("http://ingameads.gameloft.com/redir/?from")) {
            a(str);
            return true;
        }
        if (str.indexOf("youtube.com") != -1) {
            a(str);
            return true;
        }
        if (str.startsWith("market://")) {
            a(str);
            return true;
        }
        if (str.compareTo("http://livewebapp.gameloft.com/glive/signal-back") == 0) {
            GLiveMain.c.removeView(GLiveMain.b);
            try {
                GLiveMain.c.removeView(GLiveMain.m);
            } catch (Exception e) {
            }
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams = new AbsoluteLayout$LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0);
            GLiveMain.m.clearFocus();
            GLiveMain.ck = false;
            GLiveMain.c.addView(GLiveMain.m, absoluteLayout$LayoutParams);
            GLiveMain.m.requestFocus();
            return true;
        }
        if (str.compareTo("http://livewebapp.gameloft.com/glive/friends/show-invite-email") == 0) {
            GLiveMain.c.removeView(GLiveMain.f);
            GLiveMain.c.removeView(GLiveMain.d);
            GLiveMain.c.removeView(GLiveMain.e);
            GLiveMain.c.removeView(GLiveMain.f20a);
            GLiveMain.c.addView(GLiveMain.n, new AbsoluteLayout$LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0));
            GLiveMain.bh = true;
            GLiveMain.bN.setText("john@example.com, alex@example.com");
            GLiveMain.bN.setTextColor(-8750470);
            GLiveMain.bN.setTypeface(Typeface.defaultFromStyle(2));
            GLiveMain.bL.loadUrl(str);
            GLiveMain.bO = true;
            GLiveMain.bP = false;
        } else {
            if (str.startsWith("http://livewebapp.gameloft.com/glive/friends/index/select/yes?user_name=") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/index/select/yes/?user_name=")) {
                String[] strArrSplit = str.split("user_name=")[1].split("&user_id=");
                GLiveMain.aM[GLiveMain.aO] = strArrSplit[0];
                GLiveMain.aN[GLiveMain.aO] = strArrSplit[1];
                GLiveMain.aO++;
                GLiveMain.c.removeView(GLiveMain.b);
                AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams2 = new AbsoluteLayout$LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0);
                GLiveMain.m.clearFocus();
                GLiveMain.ck = false;
                GLiveMain.c.addView(GLiveMain.m, absoluteLayout$LayoutParams2);
                GLiveMain.m.requestFocus();
                this.b.a(GLiveMain.aM[GLiveMain.aO - 1]);
                return true;
            }
            if (str.compareTo("http://livewebapp.gameloft.com/glive/") == 0) {
                GLiveMain.aQ = 0;
                GLiveMain.aF = 0;
                webView.loadUrl(str);
                return true;
            }
            if (str.compareTo("about:blank") == 0) {
                return true;
            }
            webView.loadUrl(str);
        }
        return true;
    }
}
