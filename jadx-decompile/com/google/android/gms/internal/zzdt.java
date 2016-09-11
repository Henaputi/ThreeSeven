package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzp;

@zzgr
public class zzdt extends zzhz {
    final zziz zzoM;
    final zzdv zzxY;
    private final String zzxZ;

    zzdt(zziz com_google_android_gms_internal_zziz, zzdv com_google_android_gms_internal_zzdv, String str) {
        this.zzoM = com_google_android_gms_internal_zziz;
        this.zzxY = com_google_android_gms_internal_zzdv;
        this.zzxZ = str;
        zzp.zzbI().zza(this);
    }

    public void onStop() {
        this.zzxY.abort();
    }

    public void zzbn() {
        try {
            this.zzxY.zzab(this.zzxZ);
        } finally {
            zzid.zzIE.post(new Runnable() {
                final /* synthetic */ zzdt zzya;

                {
                    this.zzya = r1;
                }

                public void run() {
                    zzp.zzbI().zzb(this.zzya);
                }
            });
        }
    }
}
