package com.gameloft.android.GAND.GloftD2SS.iab;

import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.XPlayer;
import com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Currency;
import java.util.Locale;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

/* JADX INFO: loaded from: classes.dex */
public final class ServerInfo extends AServerInfo {
    private b f;
    private String g = null;
    private String h = null;
    private e i = null;

    public ServerInfo() {
        try {
            this.f73a = SAXParserFactory.newInstance();
            this.b = this.f73a.newSAXParser();
            this.c = this.b.getXMLReader();
            this.f = new b();
            this.c.setContentHandler(this.f);
            this.d = new Device();
            this.e = new XPlayer(this.d);
        } catch (Exception e) {
        }
    }

    private boolean F() {
        return this.h != null;
    }

    private boolean G() {
        return this.g != null && F();
    }

    private String H() {
        String str;
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            str = null;
        } else {
            str = fVarK.a(InAppBilling.a(0, 59)).equals(Currency.getInstance(Locale.JAPAN).getCurrencyCode()) ? fVarK.a(InAppBilling.a(0, 59)) + " " + fVarK.a(InAppBilling.a(0, 58)) : fVarK.a(InAppBilling.a(0, 58)) + " " + fVarK.a(InAppBilling.a(0, 59));
        }
        if (str != null) {
            return StringCurrencytoChar(str);
        }
        return null;
    }

    private String I() {
        if (this.i == null) {
            return null;
        }
        return this.i.c();
    }

    private String J() {
        if (this.i == null) {
            return null;
        }
        return this.i.d();
    }

    private f K() {
        return c(this.h, this.g);
    }

    private static String StringCurrencytoChar(String str) {
        try {
            String strReplaceAll = str.contains("�") ? str.replaceAll("�", "&#8364") : str;
            try {
                if (strReplaceAll.contains("�")) {
                    strReplaceAll = strReplaceAll.replaceAll("�", "&#163");
                }
                return strReplaceAll.contains("$") ? strReplaceAll.replaceAll("$", "&#36") : strReplaceAll;
            } catch (Exception e) {
                return strReplaceAll;
            }
        } catch (Exception e2) {
            return str;
        }
    }

    private void a(e eVar) {
        this.i = eVar;
    }

    private void a(InputSource inputSource) {
        try {
            this.c.parse(inputSource);
            this.i = this.f.a();
        } catch (Exception e) {
        }
    }

    private f c(String str, String str2) {
        g gVarC;
        if (this.i == null || str == null || (gVarC = this.i.c(str)) == null) {
            return null;
        }
        return gVarC.b(str2);
    }

    private String f(String str) {
        if (this.i == null || str == null) {
            return null;
        }
        return this.i.b(str);
    }

    public final e A() {
        return this.i;
    }

    public final int B() {
        if (this.i == null) {
            return 0;
        }
        return this.i.b();
    }

    public final byte[] C() {
        if (this.i == null) {
            return null;
        }
        return this.i.h().getBytes();
    }

    public final byte[] D() {
        if (this.i == null) {
            return null;
        }
        return this.i.i().getBytes();
    }

    public final byte[] E() {
        if (this.i == null) {
            return null;
        }
        return this.i.j().getBytes();
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String a(int i) {
        f fVarK;
        String str = InAppBilling.a(0, 79) + i;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(str);
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String a(String str, String str2) {
        g gVarC;
        if (this.i == null || str == null || (gVarC = this.i.c(str)) == null) {
            return null;
        }
        return gVarC.a(str2);
    }

    public final void a(String str, String str2, String str3, int i) {
        ArrayList arrayListA;
        if (this.i != null && (arrayListA = this.i.a(str)) != null && i >= 0 && i < arrayListA.size()) {
            String strB = ((g) arrayListA.get(i)).b();
            ((g) arrayListA.get(i)).a(str2, str3);
            if (strB != null) {
                this.i.a(strB, str2, str3);
            }
        }
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final boolean a() {
        String strA = InAppBilling.a(0, 105);
        XPlayer xPlayer = this.e;
        XPlayer.sendIABProfileRequest(strA);
        long jCurrentTimeMillis = 0;
        while (!this.e.d()) {
            try {
                Thread.sleep(50L);
            } catch (Exception e) {
            }
            if (System.currentTimeMillis() - jCurrentTimeMillis > 1500) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
        }
        if (XPlayer.getLastErrorCode() != 0) {
            return false;
        }
        this.g = null;
        try {
            this.c.parse(new InputSource(new ByteArrayInputStream(XPlayer.getWHTTP().t.getBytes())));
            this.i = this.f.a();
        } catch (Exception e2) {
        }
        return true;
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final boolean a(String str) {
        if (this.i != null && str != null) {
            this.h = str;
            g gVarC = this.i.c(str);
            if (gVarC != null) {
                this.g = gVarC.c();
                if (this.g.length() > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public final byte[] a(String str, int i) {
        String strB;
        if (this.i == null) {
            return null;
        }
        ArrayList arrayListA = this.i.a(str);
        if (arrayListA == null || i < 0 || i >= arrayListA.size() || (strB = ((g) arrayListA.get(i)).b()) == null) {
            return null;
        }
        return strB.getBytes();
    }

    public final byte[] a(String str, String str2, int i) {
        String strA;
        if (this.i == null) {
            return null;
        }
        ArrayList arrayListA = this.i.a(str);
        if (arrayListA == null || i < 0 || i >= arrayListA.size() || (strA = ((g) arrayListA.get(i)).a(str2)) == null) {
            return null;
        }
        return strA.getBytes();
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String b() {
        return this.h;
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String b(String str, String str2) {
        f fVarA;
        if (this.i == null || str == null || (fVarA = this.i.c(str).a()) == null) {
            return null;
        }
        return fVarA.a(str2);
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final boolean b(String str) {
        this.g = null;
        if (!F() || str == null || c(this.h, str) == null) {
            return false;
        }
        this.g = str;
        return true;
    }

    public final byte[] b(String str, int i) {
        String strD;
        if (this.i == null) {
            return null;
        }
        ArrayList arrayListA = this.i.a(str);
        if (arrayListA == null || i < 0 || i >= arrayListA.size() || (strD = ((g) arrayListA.get(i)).d()) == null) {
            return null;
        }
        return strD.getBytes();
    }

    public final byte[] b(String str, String str2, int i) {
        f fVarA;
        String strA;
        if (this.i == null) {
            return null;
        }
        ArrayList arrayListA = this.i.a(str);
        if (arrayListA == null || i < 0 || i >= arrayListA.size() || (fVarA = ((g) arrayListA.get(i)).a()) == null || (strA = fVarA.a(str2)) == null) {
            return null;
        }
        return strA.getBytes();
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String c() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 58));
    }

    public final String c(String str) {
        if (this.i == null || str == null) {
            return null;
        }
        return this.i.c(str).d();
    }

    public final int d(String str) {
        ArrayList arrayListA;
        if (this.i == null || (arrayListA = this.i.a(str)) == null) {
            return 0;
        }
        return arrayListA.size();
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String d() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 59)).equals(Currency.getInstance(Locale.JAPAN).getCurrencyCode()) ? fVarK.a(InAppBilling.a(0, 59)) + " " + fVarK.a(InAppBilling.a(0, 58)) : fVarK.a(InAppBilling.a(0, 58)) + " " + fVarK.a(InAppBilling.a(0, 59));
    }

    public final g e(String str) {
        if (this.i == null || str == null) {
            return null;
        }
        return this.i.c(str);
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String e() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 85));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String f() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 83));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String g() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 79));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String h() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 80));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String i() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 81));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String j() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 82));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String k() {
        if (this.i != null) {
            return this.i.g();
        }
        return null;
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String l() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 61));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String m() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 59));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String n() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 62));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String o() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 66));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String p() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 67));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String q() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 68));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String r() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 69));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String s() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 70));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String t() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 63));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String u() {
        if (this.i == null) {
            return null;
        }
        return this.i.e();
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String v() {
        if (this.i == null) {
            return null;
        }
        return this.i.f();
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String w() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 71));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String x() {
        f fVarK;
        if (!G() || (fVarK = K()) == null) {
            return null;
        }
        return fVarK.a(InAppBilling.a(0, 72));
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final boolean y() {
        return G();
    }

    @Override // com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo
    public final String z() {
        return this.g;
    }
}
