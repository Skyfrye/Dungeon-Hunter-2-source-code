package com.gameloft.android.GAND.GloftD2SS.iab;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes.dex */
public final class b extends DefaultHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f108a = false;
    boolean b = false;
    String c = null;
    String d = null;
    public g e = null;
    public f f = null;
    private e g = null;
    private boolean h = false;
    private boolean i = false;
    private boolean j = false;

    public final e a() {
        return this.g;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void characters(char[] cArr, int i, int i2) {
        if (this.f108a) {
            String str = new String(cArr, i, i2);
            if (str.equals("\n")) {
                str = "";
            }
            this.c += str;
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void endElement(String str, String str2, String str3) {
        this.f108a = false;
        this.c = this.c.trim();
        if (this.h) {
            if (str2.equals("country")) {
                this.g.e(this.c.trim());
            } else if (str2.equals("operator")) {
                this.g.g(this.c.trim());
            } else if (str2.equals("product")) {
                this.g.j(this.c.trim());
            } else if (str2.equals("language")) {
                this.g.l(this.c.trim());
            } else if (str2.equals("shop_info")) {
                this.h = false;
            } else if (str2.equals("promo_description")) {
                this.g.m(this.c.trim());
            } else if (str2.equals("promo_endtime")) {
                this.g.n(this.c.trim());
            } else if (str2.equals("server_time")) {
                this.g.o(this.c.trim());
            }
        } else if (this.i) {
            if (this.j) {
                if (str2.equals("billing")) {
                    this.e.a(this.f);
                } else if (str2.equals("billing_list")) {
                    this.j = false;
                }
                if (this.j && !str2.equals("billing")) {
                    this.f.a(str2, this.c.trim());
                }
            } else if (str2.equals("content")) {
                this.g.a(this.e);
            } else if (str2.equals("attribute")) {
                this.e.a(this.d, this.c.trim());
                this.d = null;
            } else if (str2.equals("billing_type_pref")) {
                this.e.d(this.c.trim());
            } else if (str2.equals("content_list")) {
                this.i = false;
            }
        }
        this.c = "";
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startElement(String str, String str2, String str3, Attributes attributes) {
        if (this.f108a) {
            this.c = "";
        }
        this.f108a = true;
        if (str2.equals("shop_info")) {
            this.g = new e();
            this.h = true;
            return;
        }
        if (this.h) {
            if (str2.equals("country")) {
                this.g.d(attributes.getValue("id"));
                return;
            }
            if (str2.equals("operator")) {
                this.g.f(attributes.getValue("id"));
                return;
            }
            if (str2.equals("product")) {
                this.g.h(attributes.getValue("id"));
                return;
            } else if (str2.equals("platform")) {
                this.g.i(attributes.getValue("id"));
                return;
            } else {
                if (str2.equals("language")) {
                    this.g.k(attributes.getValue("id"));
                    return;
                }
                return;
            }
        }
        if (str2.equals("content_list")) {
            this.i = true;
            return;
        }
        if (this.i) {
            if (this.j) {
                if (str2.equals("billing")) {
                    this.f = new f();
                    this.f.b(attributes.getValue("type"));
                    return;
                }
                return;
            }
            if (str2.equals("content")) {
                this.e = new g();
                this.e.c(attributes.getValue("id"));
                this.e.e(attributes.getValue("type"));
                return;
            }
            if (str2.equals("attribute")) {
                this.d = attributes.getValue("name");
            } else if (str2.equals("billing_list")) {
                this.j = true;
            }
        }
    }
}
