package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import java.util.ArrayList;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes.dex */
public final class e extends DefaultHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f148a = false;
    boolean b = false;
    String c = null;
    public n d = null;
    public m e = null;
    private h f = null;
    private boolean g = false;
    private boolean h = false;

    public final h a() {
        return this.f;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void characters(char[] cArr, int i, int i2) {
        if (this.f148a) {
            String str = new String(cArr, i, i2);
            if (str.equals("\n")) {
                str = "";
            }
            this.c += str;
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void endElement(String str, String str2, String str3) {
        this.f148a = false;
        this.c = this.c.trim();
        if (this.h) {
            if (str2.equals("carrier")) {
                this.f.b().add(this.e);
            } else if (str2.equals("wifi_only")) {
                this.e.a(Integer.parseInt(this.c) == 1);
            } else if (str2.equals("carriers")) {
                this.h = false;
            }
        } else if (this.g) {
            if (str2.equals("device")) {
                this.f.a().add(this.d);
            } else if (str2.equals("pvrt_textures")) {
                this.d.a(Integer.parseInt(this.c) == 1);
            } else if (str2.equals("atc_textures")) {
                this.d.b(Integer.parseInt(this.c) == 1);
            } else if (str2.equals("etc_textures")) {
                this.d.c(Integer.parseInt(this.c) == 1);
            } else if (str2.equals("dxt_textures")) {
                this.d.d(Integer.parseInt(this.c) == 1);
            } else if (str2.equals("devices")) {
                this.g = false;
            }
        }
        this.c = "";
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startElement(String str, String str2, String str3, Attributes attributes) {
        if (this.f148a) {
            this.c = "";
        }
        this.f148a = true;
        if (str2.equals("settings")) {
            this.f = new h();
            return;
        }
        if (str2.equals("carriers")) {
            this.h = true;
            if (this.f.b() == null) {
                this.f.b(new ArrayList());
                return;
            }
            return;
        }
        if (str2.equals("devices")) {
            this.g = true;
            if (this.f.a() == null) {
                this.f.a(new ArrayList());
                return;
            }
            return;
        }
        if (this.h) {
            if (str2.equals("carrier")) {
                this.e = new m();
                this.e.a(attributes.getValue("name"));
                return;
            }
            return;
        }
        if (this.g) {
            if (str2.equals("device")) {
                this.d = new n();
            } else if (str2.equals("manufacturer")) {
                this.d.a(attributes.getValue("name"));
            }
            if (str2.equals("model")) {
                this.d.b(attributes.getValue("name"));
            }
        }
    }
}
