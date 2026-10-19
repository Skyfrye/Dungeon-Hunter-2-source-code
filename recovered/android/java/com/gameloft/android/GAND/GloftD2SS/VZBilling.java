package com.gameloft.android.GAND.GloftD2SS;

import java.io.IOException;
import java.io.StringReader;
import java.util.Random;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public class VZBilling {
    static boolean b;
    public static boolean c;
    static boolean g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f34a = true;
    static Billing d = new Billing();
    static GetNpost e = new GetNpost();
    static String f = null;

    private static boolean CodeEvaluation(String str) {
        if (str == null) {
            return false;
        }
        int i = Integer.parseInt(str);
        return i == -1 || (i >= 100 && i <= 110) || ((i >= 201 && i <= 302) || ((i >= 304 && i <= 330) || ((i >= 400 && i <= 404) || i == 406 || i == 500 || i == 900 || i == 901 || ((i >= 999 && i <= 1007) || i == 4031 || ((i >= 20011 && i <= 20062) || ((i >= 20064 && i <= 20171) || ((i >= 30000 && i <= 30003) || i == 30025 || (i >= 30041 && i <= 30046))))))));
    }

    static byte[] GetGameName() {
        return e.z.getBytes();
    }

    static byte[] GetGamePrice() {
        return e.B.getBytes();
    }

    static byte[] GetLastServerMsg() {
        if (f == null) {
            f = "Unknow Error";
        }
        return f.getBytes();
    }

    static boolean IsErrorOcurred() {
        return c;
    }

    static boolean IsInProgress() {
        return b;
    }

    static void RequestGameCheckout() {
        sendAndReceiveData("%" + e.f27a + "%" + Integer.toHexString(e.e | 256).substring(1) + "%" + Integer.toHexString(e.r.length() | 256).substring(1) + e.r + "%" + Integer.toHexString(e.s.length() | 256).substring(1) + e.s + "%" + Integer.toHexString(e.t.length() | 256).substring(1) + e.t + "%" + Integer.toHexString(e.u.length() | 256).substring(1) + e.u + "%" + Integer.toHexString(e.v.length() | 256).substring(1) + e.v + "%00%" + Integer.toHexString(e.x.length() | 256).substring(1) + e.x + "%" + Integer.toHexString(e.y.length() | 256).substring(1) + e.y + "%00%" + Integer.toHexString(e.A.length() | 256).substring(1) + e.A + "%" + Integer.toHexString(e.B.length() | 256).substring(1) + Double.parseDouble(e.B) + "%" + Integer.toHexString(e.C.length() | 256).substring(1) + e.C + "%" + Integer.toHexString(e.D.length() | 256).substring(1) + e.D + "%" + Integer.toHexString(e.E.length() | 256).substring(1) + e.E + "%" + Integer.toHexString(e.F.length() | 256).substring(1) + e.F + "%" + Integer.toHexString(e.G.length() | 256).substring(1) + e.G + "%00%00%00%" + Integer.toHexString(e.K.length() | 256).substring(1) + e.K + "%" + Integer.toHexString(e.L.length() | 256).substring(1) + e.L + "%" + Integer.toHexString(e.M.length() | 256).substring(1) + e.M + "%" + Integer.toHexString(e.N.length() | 256).substring(1) + e.N + "%" + Integer.toHexString(e.O.length() | 256).substring(1) + e.O + "%" + Integer.toHexString(e.P.length() | 256).substring(1) + e.P, false);
    }

    static void RequestGameData() {
        String str = "%" + e.f27a + "%" + Integer.toHexString(e.d | 256).substring(1) + "%" + Integer.toHexString(e.S.length() | 256).substring(1) + e.S + "%" + Integer.toHexString(e.T.length() | 256).substring(1) + e.T;
        d.i = Integer.toString(Math.abs(new Random().nextInt()), 9);
        Billing billing = d;
        Billing billing2 = d;
        billing.k = Billing.md5(d.j + d.i + e.o + e.p + e.q);
        sendAndReceiveData(str, false);
    }

    static void RequestGamePurchase() {
        sendAndReceiveData("%" + e.f27a + "%" + Integer.toHexString(e.f | 256).substring(1) + "%" + Integer.toHexString(e.r.length() | 256).substring(1) + e.r + "%" + Integer.toHexString(e.Q.length() | 256).substring(1) + e.Q + "%" + Integer.toHexString(e.R.length() | 256).substring(1) + e.R, false);
    }

    static void RequestLogin() {
        sendAndReceiveData("%" + e.f27a + "%" + Integer.toHexString(e.b | 256).substring(1) + "%" + Integer.toHexString(e.g.length() | 256).substring(1) + e.g + "%" + Integer.toHexString(e.h.length() | 256).substring(1) + e.h + "%" + Integer.toHexString(e.i.length() | 256).substring(1) + e.i + "%" + Integer.toHexString(e.j.length() | 256).substring(1) + e.j + "%" + Integer.toHexString(e.k.length() | 256).substring(1) + e.k + "%" + Integer.toHexString(e.l.length() | 256).substring(1) + e.l + "%" + Integer.toHexString(e.m.length() | 256).substring(1) + e.m + "%" + Integer.toHexString(e.n.length() | 256).substring(1) + e.n, true);
    }

    static void SetLastServerMsg(String str) {
        f = str;
    }

    public static void VZ_EndConnection() {
        d.c();
    }

    static /* synthetic */ String access$000(String str) {
        return parserXML(str);
    }

    static /* synthetic */ boolean access$100(String str) {
        return CodeEvaluation(str);
    }

    private static String parserXML(String str) throws XmlPullParserException {
        XmlPullParser xmlPullParserNewPullParser;
        g = false;
        XmlPullParserFactory xmlPullParserFactoryNewInstance = null;
        try {
            xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
        xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        try {
            xmlPullParserNewPullParser = xmlPullParserFactoryNewInstance.newPullParser();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
            xmlPullParserNewPullParser = null;
        }
        try {
            xmlPullParserNewPullParser.setInput(new StringReader(str));
        } catch (XmlPullParserException e4) {
            e4.printStackTrace();
        }
        int eventType = 0;
        try {
            eventType = xmlPullParserNewPullParser.getEventType();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
        String str2 = "\n";
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int next = eventType;
        boolean z8 = false;
        while (next != 1) {
            if (next != 0 && next != 1) {
                if (next == 2) {
                    str2 = str2 + xmlPullParserNewPullParser.getName() + ": ";
                    boolean z9 = xmlPullParserNewPullParser.getName().equals("code");
                    boolean z10 = xmlPullParserNewPullParser.getName().equals("desc");
                    boolean z11 = xmlPullParserNewPullParser.getName().equals("itemID");
                    boolean z12 = xmlPullParserNewPullParser.getName().equals("ItemName") || xmlPullParserNewPullParser.getName().equals("itemName");
                    boolean z13 = xmlPullParserNewPullParser.getName().equals("PPPID");
                    boolean z14 = xmlPullParserNewPullParser.getName().equals("purchasePrice");
                    boolean z15 = xmlPullParserNewPullParser.getName().equals("confirmationID");
                    if (xmlPullParserNewPullParser.getName().equals("endUserMsg")) {
                        z7 = z9;
                        z8 = true;
                        boolean z16 = z14;
                        z5 = z11;
                        z2 = z16;
                        boolean z17 = z12;
                        z3 = z13;
                        z4 = z17;
                        boolean z18 = z10;
                        z = z15;
                        z6 = z18;
                    } else {
                        z7 = z9;
                        z8 = false;
                        boolean z19 = z14;
                        z5 = z11;
                        z2 = z19;
                        boolean z20 = z12;
                        z3 = z13;
                        z4 = z20;
                        boolean z21 = z10;
                        z = z15;
                        z6 = z21;
                    }
                } else if (next != 3 && next == 4) {
                    str2 = str2 + xmlPullParserNewPullParser.getText() + "\n";
                    if (z7) {
                        e.U = xmlPullParserNewPullParser.getText();
                    }
                    if (z6) {
                        e.V = xmlPullParserNewPullParser.getText();
                    }
                    if (z5) {
                        e.y = xmlPullParserNewPullParser.getText();
                    }
                    if (z4) {
                        e.z = xmlPullParserNewPullParser.getText();
                    }
                    if (z3) {
                        e.A = xmlPullParserNewPullParser.getText();
                    }
                    if (z2) {
                        e.B = xmlPullParserNewPullParser.getText();
                    }
                    if (z) {
                        e.Q = xmlPullParserNewPullParser.getText();
                    }
                    if (z8) {
                        e.W = xmlPullParserNewPullParser.getText();
                    }
                }
            }
            try {
                next = xmlPullParserNewPullParser.next();
            } catch (IOException e6) {
                e6.printStackTrace();
            } catch (XmlPullParserException e7) {
                e7.printStackTrace();
                next = 1;
            }
        }
        return str2;
    }

    private static void sendAndReceiveData(String str, boolean z) {
        c = false;
        b = true;
        new bw(z, str).start();
    }
}
