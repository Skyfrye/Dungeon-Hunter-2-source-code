package com.gameloft.android.GAND.GloftD2SS.installer;

import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Vector f129a = new Vector();
    private boolean b;

    public n(Long l) {
        this.f129a.add(l);
        this.b = false;
    }

    private String a(int i, int i2) {
        Long l = 0L;
        String str = "";
        int i3 = 0;
        while (i3 < this.f129a.size()) {
            Long lValueOf = Long.valueOf(l.longValue() + ((Long) this.f129a.elementAt(i3)).longValue());
            String str2 = (i3 < i || i3 >= i + i2) ? str : str + "\t" + this.f129a.elementAt(i3) + "\n";
            i3++;
            str = str2;
            l = lValueOf;
        }
        return (this.f129a.size() > 1 ? "(" + this.f129a.size() + ") <Average: " + (l.longValue() / ((long) this.f129a.size())) + "> " : "") + "<Total Time: " + l + "> [" + i + ":" + (i + i2) + "]\n" + str;
    }

    private String a(boolean z) {
        Long l = 0L;
        String str = "";
        int i = 0;
        while (i < this.f129a.size()) {
            Long lValueOf = Long.valueOf(l.longValue() + ((Long) this.f129a.elementAt(i)).longValue());
            String str2 = z ? str + "\t" + this.f129a.elementAt(i) + "\n" : str;
            i++;
            str = str2;
            l = lValueOf;
        }
        return (this.f129a.size() > 1 ? "(" + this.f129a.size() + ") <Average: " + (l.longValue() / ((long) this.f129a.size())) + "> " : "") + "<Total Time: " + l + ">\n" + str;
    }

    private void a() {
        this.f129a.clear();
    }

    public final void a(Long l) {
        if (this.b) {
            this.f129a.add(l);
            this.b = false;
        } else {
            long jLongValue = ((Long) this.f129a.lastElement()).longValue();
            this.f129a.remove(this.f129a.size() - 1);
            this.f129a.add(Long.valueOf(l.longValue() - jLongValue));
            this.b = true;
        }
    }
}
