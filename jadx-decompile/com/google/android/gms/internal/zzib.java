package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import java.util.concurrent.Future;

@zzgr
public final class zzib {

    public interface zzb {
        void zzd(Bundle bundle);
    }

    private static abstract class zza extends zzhz {
        private zza() {
        }

        public void onStop() {
        }
    }

    /* renamed from: com.google.android.gms.internal.zzib.1 */
    static class AnonymousClass1 extends zza {
        final /* synthetic */ boolean zzIo;
        final /* synthetic */ Context zzry;

        AnonymousClass1(Context context, boolean z) {
            this.zzry = context;
            this.zzIo = z;
            super();
        }

        public void zzbn() {
            Editor edit = zzib.zzv(this.zzry).edit();
            edit.putBoolean("use_https", this.zzIo);
            edit.apply();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzib.2 */
    static class AnonymousClass2 extends zza {
        final /* synthetic */ zzb zzIp;
        final /* synthetic */ Context zzry;

        AnonymousClass2(Context context, zzb com_google_android_gms_internal_zzib_zzb) {
            this.zzry = context;
            this.zzIp = com_google_android_gms_internal_zzib_zzb;
            super();
        }

        public void zzbn() {
            SharedPreferences zzG = zzib.zzv(this.zzry);
            Bundle bundle = new Bundle();
            bundle.putBoolean("use_https", zzG.getBoolean("use_https", true));
            if (this.zzIp != null) {
                this.zzIp.zzd(bundle);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzib.3 */
    static class AnonymousClass3 extends zza {
        final /* synthetic */ int zzIq;
        final /* synthetic */ Context zzry;

        AnonymousClass3(Context context, int i) {
            this.zzry = context;
            this.zzIq = i;
            super();
        }

        public void zzbn() {
            Editor edit = zzib.zzv(this.zzry).edit();
            edit.putInt("webview_cache_version", this.zzIq);
            edit.apply();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzib.4 */
    static class AnonymousClass4 extends zza {
        final /* synthetic */ zzb zzIp;
        final /* synthetic */ Context zzry;

        AnonymousClass4(Context context, zzb com_google_android_gms_internal_zzib_zzb) {
            this.zzry = context;
            this.zzIp = com_google_android_gms_internal_zzib_zzb;
            super();
        }

        public void zzbn() {
            SharedPreferences zzG = zzib.zzv(this.zzry);
            Bundle bundle = new Bundle();
            bundle.putInt("webview_cache_version", zzG.getInt("webview_cache_version", 0));
            if (this.zzIp != null) {
                this.zzIp.zzd(bundle);
            }
        }
    }

    public static Future zza(Context context, int i) {
        return new AnonymousClass3(context, i).zzgz();
    }

    public static Future zza(Context context, zzb com_google_android_gms_internal_zzib_zzb) {
        return new AnonymousClass2(context, com_google_android_gms_internal_zzib_zzb).zzgz();
    }

    public static Future zza(Context context, boolean z) {
        return new AnonymousClass1(context, z).zzgz();
    }

    public static Future zzb(Context context, zzb com_google_android_gms_internal_zzib_zzb) {
        return new AnonymousClass4(context, com_google_android_gms_internal_zzib_zzb).zzgz();
    }

    private static SharedPreferences zzv(Context context) {
        return context.getSharedPreferences("admob", 0);
    }
}
