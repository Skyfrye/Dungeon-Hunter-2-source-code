package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import android.content.Context;
import java.util.ArrayList;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SAXParserFactory f147a;
    private SAXParser b;
    private XMLReader c;
    private e d;
    private h e = null;

    public d() {
        try {
            this.f147a = SAXParserFactory.newInstance();
            this.b = this.f147a.newSAXParser();
            this.c = this.b.getXMLReader();
            this.d = new e();
            this.c.setContentHandler(this.d);
        } catch (Exception e) {
        }
    }

    private void a(InputSource inputSource) {
        try {
            this.c.parse(inputSource);
        } catch (Exception e) {
        }
    }

    private boolean a(String str) {
        if (str == null) {
            str = "";
        }
        ArrayList arrayListB = this.e.b();
        boolean zA = !str.equals("default") ? a("default") : false;
        for (int i = 0; i < arrayListB.size(); i++) {
            m mVar = (m) arrayListB.get(i);
            if (mVar.b().equalsIgnoreCase(str)) {
                return mVar.a();
            }
        }
        return zA;
    }

    /* JADX DEBUG: Move duplicate insns, count: 2 to block B:9:0x001e */
    private boolean a(String str, String str2) {
        int i = 0;
        if (str == null) {
            str = "";
        }
        ArrayList arrayListA = this.e.a();
        boolean zA = !str.equals("default") ? a("default", null) : false;
        while (true) {
            int i2 = i;
            boolean z = zA;
            if (i2 >= arrayListA.size()) {
                return z;
            }
            n nVar = (n) arrayListA.get(i2);
            if (nVar.e().equalsIgnoreCase(str) && nVar.f().equalsIgnoreCase("")) {
                return nVar.a();
            }
            zA = (nVar.e().equalsIgnoreCase(str) && nVar.f().length() == 0) ? nVar.a() : z;
            i = i2 + 1;
        }
    }

    /* JADX DEBUG: Move duplicate insns, count: 2 to block B:9:0x001e */
    private boolean b(String str, String str2) {
        int i = 0;
        if (str == null) {
            str = "";
        }
        ArrayList arrayListA = this.e.a();
        boolean zB = !str.equals("default") ? b("default", null) : false;
        while (true) {
            int i2 = i;
            boolean z = zB;
            if (i2 >= arrayListA.size()) {
                return z;
            }
            n nVar = (n) arrayListA.get(i2);
            if (nVar.e().equalsIgnoreCase(str) && nVar.f().equalsIgnoreCase("")) {
                return nVar.b();
            }
            zB = (nVar.e().equalsIgnoreCase(str) && nVar.f().length() == 0) ? nVar.b() : z;
            i = i2 + 1;
        }
    }

    /* JADX DEBUG: Move duplicate insns, count: 2 to block B:9:0x001e */
    private boolean c(String str, String str2) {
        int i = 0;
        if (str == null) {
            str = "";
        }
        ArrayList arrayListA = this.e.a();
        boolean zC = !str.equals("default") ? c("default", null) : false;
        while (true) {
            int i2 = i;
            boolean z = zC;
            if (i2 >= arrayListA.size()) {
                return z;
            }
            n nVar = (n) arrayListA.get(i2);
            if (nVar.e().equalsIgnoreCase(str) && nVar.f().equalsIgnoreCase("")) {
                return nVar.c();
            }
            zC = (nVar.e().equalsIgnoreCase(str) && nVar.f().length() == 0) ? nVar.c() : z;
            i = i2 + 1;
        }
    }

    /* JADX DEBUG: Move duplicate insns, count: 2 to block B:9:0x001e */
    private boolean d(String str, String str2) {
        int i = 0;
        if (str == null) {
            str = "";
        }
        ArrayList arrayListA = this.e.a();
        boolean zD = !str.equals("default") ? d("default", null) : false;
        while (true) {
            int i2 = i;
            boolean z = zD;
            if (i2 >= arrayListA.size()) {
                return z;
            }
            n nVar = (n) arrayListA.get(i2);
            if (nVar.e().equalsIgnoreCase(str) && nVar.f().equalsIgnoreCase("")) {
                return nVar.d();
            }
            zD = (nVar.e().equalsIgnoreCase(str) && nVar.f().length() == 0) ? nVar.d() : z;
            i = i2 + 1;
        }
    }

    public final void a(Context context) {
        try {
            try {
                this.c.parse(new InputSource(context.getResources().openRawResource(2130968577)));
            } catch (Exception e) {
            }
            this.e = this.d.a();
        } catch (Exception e2) {
        }
    }
}
