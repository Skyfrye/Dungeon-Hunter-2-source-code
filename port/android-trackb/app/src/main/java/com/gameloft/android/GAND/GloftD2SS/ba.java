package com.gameloft.android.GAND.GloftD2SS;

import com.samsung.zirconia.Zirconia;

final class ba implements Runnable {

    final /* synthetic */ ay f64a;

    ba(ay ayVar) {
        this.f64a = ayVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f64a.f61a.a(false);
        if (this.f64a.f61a.a()) {
            this.f64a.f61a.c();
            return;
        }
        int error = this.f64a.b.getError();
        String string = "";
        Zirconia zirconia = this.f64a.b;
        if (error == 11) {
            string = this.f64a.f61a.getString(bu.DRM_EZIRCONIA_NOT_PURCHASED_1);
        } else {
            Zirconia zirconia2 = this.f64a.b;
            if (error == 23) {
                string = this.f64a.f61a.getString(bu.DRM_EZIRCONIA_INVALID_VALUE_1);
            } else {
                Zirconia zirconia3 = this.f64a.b;
                if (error == 31) {
                    string = this.f64a.f61a.getString(bu.DRM_EZIRCONIA_CANNOT_CHECK_1);
                } else {
                    Zirconia zirconia4 = this.f64a.b;
                    if (error == 61) {
                        string = this.f64a.f61a.getString(bu.DRM_EZIRCONIA_RECEIVE_FAILED_1);
                    } else {
                        Zirconia zirconia5 = this.f64a.b;
                        if (error == 62) {
                            string = this.f64a.f61a.getString(bu.DRM_EZIRCONIA_SEND_FAILED_1);
                        } else {
                            Zirconia zirconia6 = this.f64a.b;
                            if (error == 81) {
                                string = this.f64a.f61a.getString(bu.DRM_EZIRCONIA_KEY_CREATION_FAILED_1);
                            } else {
                                Zirconia zirconia7 = this.f64a.b;
                                if (error == 21) {
                                    string = this.f64a.f61a.getString(bu.DRM_EZIRCONIA_CLIENT_MISMATCH_1);
                                } else {
                                    Zirconia zirconia8 = this.f64a.b;
                                    if (error == 22) {
                                        string = this.f64a.f61a.getString(bu.DRM_EZIRCONIA_VERSION_MISMATCH_1);
                                    } else {
                                        Zirconia zirconia9 = this.f64a.b;
                                        if (error == 50) {
                                            string = this.f64a.f61a.getString(bu.DRM_EZIRCONIA_LICENSE_MISMATCH_1);
                                        } else {
                                            Zirconia zirconia10 = this.f64a.b;
                                            if (error == 71) {
                                                string = this.f64a.f61a.getString(bu.DRM_EZIRCONIA_SERVER_MISMATCH_1);
                                            } else {
                                                Zirconia zirconia11 = this.f64a.b;
                                                if (error == 82) {
                                                    string = this.f64a.f61a.getString(bu.DRM_EZIRCONIA_APPLICATION_MODIFIED_1);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        this.f64a.f61a.a(string);
    }
}
