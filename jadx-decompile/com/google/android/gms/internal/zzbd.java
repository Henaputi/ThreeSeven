package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.overlay.zzg;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zze;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.zzja.zza;
import com.voxelbusters.nativeplugins.defines.Keys.Mime;
import org.json.JSONObject;

@zzgr
public class zzbd implements zzbb {
    private final zziz zzoM;

    /* renamed from: com.google.android.gms.internal.zzbd.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ String zzrF;
        final /* synthetic */ JSONObject zzrG;
        final /* synthetic */ zzbd zzrH;

        AnonymousClass1(zzbd com_google_android_gms_internal_zzbd, String str, JSONObject jSONObject) {
            this.zzrH = com_google_android_gms_internal_zzbd;
            this.zzrF = str;
            this.zzrG = jSONObject;
        }

        public void run() {
            this.zzrH.zzoM.zza(this.zzrF, this.zzrG);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzbd.2 */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ String zzrF;
        final /* synthetic */ zzbd zzrH;
        final /* synthetic */ String zzrI;

        AnonymousClass2(zzbd com_google_android_gms_internal_zzbd, String str, String str2) {
            this.zzrH = com_google_android_gms_internal_zzbd;
            this.zzrF = str;
            this.zzrI = str2;
        }

        public void run() {
            this.zzrH.zzoM.zza(this.zzrF, this.zzrI);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzbd.3 */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ zzbd zzrH;
        final /* synthetic */ String zzrJ;

        AnonymousClass3(zzbd com_google_android_gms_internal_zzbd, String str) {
            this.zzrH = com_google_android_gms_internal_zzbd;
            this.zzrJ = str;
        }

        public void run() {
            this.zzrH.zzoM.loadData(this.zzrJ, Mime.HTML_TEXT, "UTF-8");
        }
    }

    /* renamed from: com.google.android.gms.internal.zzbd.4 */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ zzbd zzrH;
        final /* synthetic */ String zzrJ;

        AnonymousClass4(zzbd com_google_android_gms_internal_zzbd, String str) {
            this.zzrH = com_google_android_gms_internal_zzbd;
            this.zzrJ = str;
        }

        public void run() {
            this.zzrH.zzoM.loadData(this.zzrJ, Mime.HTML_TEXT, "UTF-8");
        }
    }

    /* renamed from: com.google.android.gms.internal.zzbd.5 */
    class AnonymousClass5 implements Runnable {
        final /* synthetic */ String zzrC;
        final /* synthetic */ zzbd zzrH;

        AnonymousClass5(zzbd com_google_android_gms_internal_zzbd, String str) {
            this.zzrH = com_google_android_gms_internal_zzbd;
            this.zzrC = str;
        }

        public void run() {
            this.zzrH.zzoM.loadUrl(this.zzrC);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzbd.6 */
    class AnonymousClass6 implements zza {
        final /* synthetic */ zzbd zzrH;
        final /* synthetic */ zzbb.zza zzrK;

        AnonymousClass6(zzbd com_google_android_gms_internal_zzbd, zzbb.zza com_google_android_gms_internal_zzbb_zza) {
            this.zzrH = com_google_android_gms_internal_zzbd;
            this.zzrK = com_google_android_gms_internal_zzbb_zza;
        }

        public void zza(zziz com_google_android_gms_internal_zziz, boolean z) {
            this.zzrK.zzcj();
        }
    }

    public zzbd(Context context, VersionInfoParcel versionInfoParcel, zzan com_google_android_gms_internal_zzan) {
        this.zzoM = zzp.zzbw().zza(context, new AdSizeParcel(), false, false, com_google_android_gms_internal_zzan, versionInfoParcel);
        this.zzoM.getWebView().setWillNotDraw(true);
    }

    private void runOnUiThread(Runnable runnable) {
        if (zzl.zzcF().zzgT()) {
            runnable.run();
        } else {
            zzid.zzIE.post(runnable);
        }
    }

    public void destroy() {
        this.zzoM.destroy();
    }

    public void zza(com.google.android.gms.ads.internal.client.zza com_google_android_gms_ads_internal_client_zza, zzg com_google_android_gms_ads_internal_overlay_zzg, zzdg com_google_android_gms_internal_zzdg, zzn com_google_android_gms_ads_internal_overlay_zzn, boolean z, zzdm com_google_android_gms_internal_zzdm, zzdo com_google_android_gms_internal_zzdo, zze com_google_android_gms_ads_internal_zze, zzfi com_google_android_gms_internal_zzfi) {
        this.zzoM.zzhe().zzb(com_google_android_gms_ads_internal_client_zza, com_google_android_gms_ads_internal_overlay_zzg, com_google_android_gms_internal_zzdg, com_google_android_gms_ads_internal_overlay_zzn, z, com_google_android_gms_internal_zzdm, com_google_android_gms_internal_zzdo, new zze(false), com_google_android_gms_internal_zzfi);
    }

    public void zza(zzbb.zza com_google_android_gms_internal_zzbb_zza) {
        this.zzoM.zzhe().zza(new AnonymousClass6(this, com_google_android_gms_internal_zzbb_zza));
    }

    public void zza(String str, zzdk com_google_android_gms_internal_zzdk) {
        this.zzoM.zzhe().zza(str, com_google_android_gms_internal_zzdk);
    }

    public void zza(String str, String str2) {
        runOnUiThread(new AnonymousClass2(this, str, str2));
    }

    public void zza(String str, JSONObject jSONObject) {
        runOnUiThread(new AnonymousClass1(this, str, jSONObject));
    }

    public void zzb(String str, zzdk com_google_android_gms_internal_zzdk) {
        this.zzoM.zzhe().zzb(str, com_google_android_gms_internal_zzdk);
    }

    public void zzb(String str, JSONObject jSONObject) {
        this.zzoM.zzb(str, jSONObject);
    }

    public zzbf zzci() {
        return new zzbg(this);
    }

    public void zzs(String str) {
        runOnUiThread(new AnonymousClass3(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", new Object[]{str})));
    }

    public void zzt(String str) {
        runOnUiThread(new AnonymousClass5(this, str));
    }

    public void zzu(String str) {
        runOnUiThread(new AnonymousClass4(this, str));
    }
}
