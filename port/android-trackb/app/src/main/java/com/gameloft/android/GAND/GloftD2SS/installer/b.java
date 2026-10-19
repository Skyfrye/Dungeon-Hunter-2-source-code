package com.gameloft.android.GAND.GloftD2SS.installer;

import android.content.Context;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.gameloft.android.GAND.GloftD2SS.bq;
import com.gameloft.android.GAND.GloftD2SS.bu;
import java.util.Iterator;

final class b implements Runnable {

    final /* synthetic */ int f117a;
    final /* synthetic */ int b;
    final /* synthetic */ Context c;
    final /* synthetic */ GameInstaller d;

    b(GameInstaller gameInstaller, int i, int i2, Context context) {
        this.d = gameInstaller;
        this.f117a = i;
        this.b = i2;
        this.c = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.d.cf = this.f117a;
            this.d.setContentView(this.f117a);
            if (this.b != this.d.ce) {
                this.d.cg = this.d.ce;
                this.d.ce = this.b;
            }
            switch (this.b) {
                case 0:
                    this.d.a(bq.data_downloader_cancel, false);
                    this.d.a(bq.data_downloader_yes, false);
                    this.d.a(bq.data_downloader_no, false);
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.CHECKING_REQUIRED_FILES, new Object[]{this.c}));
                    break;
                case 1:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_no));
                    this.d.a(bq.data_downloader_cancel, false);
                    if (this.d.bE != 2) {
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.DOWNLOAD_FILES_THROUGH_CARRIER_QUESTION, new Object[]{this.c}) + "\n" + this.d.getString(bu.DOWNLOAD_FILES_THROUGH_CARRIER_EXTRA, new Object[]{this.c}));
                    } else {
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.DOWNLOAD_FILES_THROUGH_CARRIER_QUESTION_3G_ORANGE_IL, new Object[]{this.c}));
                    }
                    break;
                case 2:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_no));
                    this.d.a(bq.data_downloader_cancel, false);
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.STATE_CONFIRM_UPDATE, new Object[]{this.c}));
                    break;
                case 3:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    ((Button) this.d.findViewById(bq.data_downloader_yes)).setText(this.d.getString(bu.RETRY_WIFI, new Object[]{this.c}));
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_no));
                    ((Button) this.d.findViewById(bq.data_downloader_no)).setText(this.d.getString(bu.CARRIER, new Object[]{this.c}));
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_cancel));
                    ((Button) this.d.findViewById(bq.data_downloader_cancel)).setText(this.d.getString(bu.CANCEL, new Object[]{this.c}));
                    if (this.d.bE != 2) {
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.ERROR_NO_WIFI_DETECTED, new Object[]{this.c}));
                    } else {
                        ((Button) this.d.findViewById(bq.data_downloader_no)).setText(this.d.getString(bu.USE_3G_ORANGE_IL, new Object[]{this.c}));
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.ERROR_NO_WIFI_DETECTED_3G_ORANGE_IL, new Object[]{this.c}));
                    }
                    break;
                case 4:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    ((Button) this.d.findViewById(bq.data_downloader_yes)).setText(this.d.getString(bu.OK, new Object[]{this.c}));
                    this.d.a(bq.data_downloader_no, false);
                    this.d.a(bq.data_downloader_cancel, false);
                    if (this.d.bE == 1 || this.d.cg == 28) {
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.DOWNLOAD_ANYTIME_MESSAGE_MINIMAL, new Object[]{this.c}));
                    } else if (this.d.bE == 2) {
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.DOWNLOAD_ANYTIME_MESSAGE_3G_ORANGE_IL, new Object[]{this.c}));
                    } else {
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.DOWNLOAD_ANYTIME_MESSAGE, new Object[]{this.c}));
                    }
                    if (this.b != this.d.ce) {
                        this.d.b();
                    }
                    break;
                case 5:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_cancel));
                    this.d.a(bq.data_downloader_yes, false);
                    this.d.a(bq.data_downloader_no, false);
                    ((ProgressBar) this.d.findViewById(bq.data_downloader_linear_progress_bar)).setMax((int) ((this.d.j / 1024) + 1));
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.DONT_TURN_OFF_YOUR_PHONE, new Object[]{this.c}));
                    TextView textView = (TextView) this.d.findViewById(bq.data_downloader_progress_text);
                    textView.setVisibility(4);
                    if (this.d.bE == 1) {
                        textView.setText(this.d.getString(bu.DONT_TURN_OFF_YOUR_PHONE_WIFI, new Object[]{this.c}));
                    } else if (this.d.bR != 1) {
                        this.d.findViewById(bq.data_downloader_main_text);
                    } else {
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.a(bu.DONT_TURN_OFF_YOUR_PHONE_WIFI, null, new StringBuilder().append((int) ((GameInstaller.m_iRealRequiredSize >> 20) + 1)).toString()));
                    }
                    break;
                case 7:
                case GameInstaller.LAYOUT_UNZIP_FILES_CANCEL_QUESTION /* 28 */:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_no));
                    this.d.a(bq.data_downloader_cancel, false);
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.DOWNLOAD_FILE_CANCEL_QUESTION, new Object[]{this.c}));
                    break;
                case 8:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_no));
                    this.d.a(bq.data_downloader_cancel, false);
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.DOWNLOAD_FAIL, new Object[]{this.c}));
                    break;
                case 9:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_no));
                    this.d.a(bq.data_downloader_cancel, false);
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.DOWNLOAD_FILES_NO_WIFI_QUESTION, new Object[]{this.c}));
                    this.d.b(bq.data_downloader_progress_bar, false);
                    if (this.d.bE == 1) {
                        ((Button) this.d.findViewById(bq.data_downloader_no)).setText(this.d.getString(bu.LATER, new Object[]{this.c}));
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.ERROR_NO_WIFI_DETECTED_MINIMAL, new Object[]{this.c}));
                    } else if (this.d.bE == 0) {
                        ((Button) this.d.findViewById(bq.data_downloader_no)).setText(this.d.getString(bu.USE_3G, new Object[]{this.c}));
                        ((Button) this.d.findViewById(bq.data_downloader_yes)).setText(this.d.getString(bu.USE_WIFI, new Object[]{this.c}));
                    } else if (this.d.bE == 2) {
                        ((Button) this.d.findViewById(bq.data_downloader_no)).setText(this.d.getString(bu.USE_3G_ORANGE_IL, new Object[]{this.c}));
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.DOWNLOAD_FILES_NO_WIFI_QUESTION_3G_ORANGE_IL, new Object[]{this.c}));
                        ((Button) this.d.findViewById(bq.data_downloader_yes)).setText(this.d.getString(bu.USE_WIFI, new Object[]{this.c}));
                    }
                    break;
                case GameInstaller.LAYOUT_DOWNLOAD_FILES_QUESTION /* 10 */:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_no));
                    this.d.a(bq.data_downloader_cancel, false);
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.a(bu.DOWNLOAD_FILES_QUESTION, null, new StringBuilder().append((int) ((GameInstaller.m_iRealRequiredSize >> 20) + 1)).toString()));
                    break;
                case 13:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    ((Button) this.d.findViewById(bq.data_downloader_yes)).setText(this.d.getString(bu.OK, new Object[]{this.c}));
                    this.d.a(bq.data_downloader_cancel, false);
                    this.d.a(bq.data_downloader_no, false);
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.a(this.d.bx, "{GAME_NAME}", this.d.getString(bu.app_name)));
                    break;
                case 16:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_no));
                    this.d.a(bq.data_downloader_cancel, false);
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.ERROR_NO_CARRIER_DATA_DETECTED, new Object[]{this.c}));
                    break;
                case 17:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_no));
                    this.d.a(bq.data_downloader_cancel, false);
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.STATE_CONNECT_FAIL, new Object[]{this.c}));
                    break;
                case 18:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    ((Button) this.d.findViewById(bq.data_downloader_yes)).setText(this.d.getString(bu.OK, new Object[]{this.c}));
                    this.d.a(bq.data_downloader_cancel, false);
                    this.d.a(bq.data_downloader_no, false);
                    long j = this.d.h;
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.a(this.d.a(0) ? com.gameloft.android.GAND.GloftD2SS.bu.NO_EXTERNAL_STORAGE_FOUND : com.gameloft.android.GAND.GloftD2SS.bu.NO_ENOUGH_SPACE_AVAILABLE, null, new StringBuilder().append(this.d.a(0) ? j : j - this.d.g).toString()));
                    break;
                case 19:
                    this.d.a(bq.data_downloader_cancel, false);
                    this.d.a(bq.data_downloader_yes, false);
                    this.d.a(bq.data_downloader_no, false);
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.STATE_SEND_REQUEST, new Object[]{this.c}));
                    break;
                case 20:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_cancel));
                    this.d.a(bq.data_downloader_yes, false);
                    this.d.a(bq.data_downloader_no, false);
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.WAIT_WHILE_ACTIVATING_WIFI, new Object[]{this.c}));
                    break;
                case 21:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    ((Button) this.d.findViewById(bq.data_downloader_yes)).setText(this.d.getString(bu.OK, new Object[]{this.c}));
                    this.d.a(bq.data_downloader_cancel, false);
                    this.d.a(bq.data_downloader_no, false);
                    this.d.b(bq.data_downloader_progress_bar, false);
                    if (this.d.aq != 29) {
                        if (this.d.aX) {
                            this.d.a(bq.data_downloader_yes, false);
                            this.d.b(bq.data_downloader_progress_bar, true);
                        }
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.DOWNLOAD_SUCCESSFULLY, new Object[]{this.c}));
                    } else {
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.STATE_NO_NEW_VERSION, new Object[]{this.c}));
                    }
                    break;
                case 22:
                    this.d.a(bq.data_downloader_cancel, false);
                    this.d.a(bq.data_downloader_yes, false);
                    this.d.a(bq.data_downloader_no, false);
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.VERIFYING, new Object[]{this.c}));
                    break;
                case 23:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_yes));
                    ((Button) this.d.findViewById(bq.data_downloader_yes)).setText(this.d.getString(bu.OK, new Object[]{this.c}));
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_no));
                    ((Button) this.d.findViewById(bq.data_downloader_no)).setText(this.d.getString(bu.CANCEL, new Object[]{this.c}));
                    this.d.a(bq.data_downloader_cancel, false);
                    if (this.d.bE != 2) {
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.ERROR_NO_WIFI_DETECTED_2, new Object[]{this.c}));
                    } else {
                        ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(this.d.getString(bu.ERROR_NO_WIFI_DETECTED_3G_ORANGE_IL, new Object[]{this.c}));
                    }
                    break;
                case GameInstaller.LAYOUT_UNZIP_FILES /* 27 */:
                    this.d.a().add((Button) this.d.findViewById(bq.data_downloader_cancel));
                    this.d.a(bq.data_downloader_yes, false);
                    this.d.a(bq.data_downloader_no, false);
                    ((ProgressBar) this.d.findViewById(bq.data_downloader_linear_progress_bar)).setMax((int) ((this.d.j / 1024) + 1));
                    ((TextView) this.d.findViewById(bq.data_downloader_main_text)).setText(bu.EXTRACTING);
                    ((TextView) this.d.findViewById(bq.data_downloader_progress_text)).setVisibility(4);
                    break;
            }
            try {
                Iterator it = this.d.a().iterator();
                while (it.hasNext()) {
                    ((Button) it.next()).setOnClickListener(this.d.bj);
                }
            } catch (Exception e) {
            }
        } catch (Exception e2) {
            this.d.c(21);
        }
    }
}
