package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzx;
import java.util.Map;

@zzgr
public class zzdz {
    private final Context mContext;
    private final VersionInfoParcel zzpb;
    private final Object zzpd;
    private final String zzyo;
    private zzb<zzbb> zzyp;
    private zzb<zzbb> zzyq;
    private zze zzyr;
    private int zzys;

    public interface zzb<T> {
        void zzc(T t);
    }

    /* renamed from: com.google.android.gms.internal.zzdz.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ zze zzyt;
        final /* synthetic */ zzdz zzyu;

        /* renamed from: com.google.android.gms.internal.zzdz.1.1 */
        class AnonymousClass1 implements com.google.android.gms.internal.zzbb.zza {
            final /* synthetic */ zzbb zzyv;
            final /* synthetic */ AnonymousClass1 zzyw;

            AnonymousClass1(AnonymousClass1 anonymousClass1, zzbb com_google_android_gms_internal_zzbb) {
                this.zzyw = anonymousClass1;
                this.zzyv = com_google_android_gms_internal_zzbb;
            }

            public void zzcj() {
                zzid.zzIE.postDelayed(new Runnable() {
                    final /* synthetic */ AnonymousClass1 zzyx;

                    {
                        this.zzyx = r1;
                    }

                    public void run() {
                        synchronized (this.zzyx.zzyw.zzyu.zzpd) {
                            if (this.zzyx.zzyw.zzyt.getStatus() == -1 || this.zzyx.zzyw.zzyt.getStatus() == 1) {
                                return;
                            }
                            this.zzyx.zzyw.zzyt.reject();
                            zzid.runOnUiThread(new Runnable() {
                                final /* synthetic */ AnonymousClass1 zzyy;

                                {
                                    this.zzyy = r1;
                                }

                                public void run() {
                                    this.zzyy.zzyx.zzyv.destroy();
                                }
                            });
                            com.google.android.gms.ads.internal.util.client.zzb.v("Could not receive loaded message in a timely manner. Rejecting.");
                        }
                    }
                }, (long) zza.zzyD);
            }
        }

        /* renamed from: com.google.android.gms.internal.zzdz.1.2 */
        class AnonymousClass2 implements zzdk {
            final /* synthetic */ zzbb zzyv;
            final /* synthetic */ AnonymousClass1 zzyw;

            AnonymousClass2(AnonymousClass1 anonymousClass1, zzbb com_google_android_gms_internal_zzbb) {
                this.zzyw = anonymousClass1;
                this.zzyv = com_google_android_gms_internal_zzbb;
            }

            public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
                synchronized (this.zzyw.zzyu.zzpd) {
                    if (this.zzyw.zzyt.getStatus() == -1 || this.zzyw.zzyt.getStatus() == 1) {
                        return;
                    }
                    this.zzyw.zzyu.zzys = 0;
                    this.zzyw.zzyu.zzyp.zzc(this.zzyv);
                    this.zzyw.zzyt.zzg(this.zzyv);
                    this.zzyw.zzyu.zzyr = this.zzyw.zzyt;
                    com.google.android.gms.ads.internal.util.client.zzb.v("Successfully loaded JS Engine.");
                }
            }
        }

        /* renamed from: com.google.android.gms.internal.zzdz.1.3 */
        class AnonymousClass3 implements zzdk {
            final /* synthetic */ zzbb zzyv;
            final /* synthetic */ AnonymousClass1 zzyw;
            final /* synthetic */ zzil zzyz;

            AnonymousClass3(AnonymousClass1 anonymousClass1, zzbb com_google_android_gms_internal_zzbb, zzil com_google_android_gms_internal_zzil) {
                this.zzyw = anonymousClass1;
                this.zzyv = com_google_android_gms_internal_zzbb;
                this.zzyz = com_google_android_gms_internal_zzil;
            }

            public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
                synchronized (this.zzyw.zzyu.zzpd) {
                    com.google.android.gms.ads.internal.util.client.zzb.zzaG("JS Engine is requesting an update");
                    if (this.zzyw.zzyu.zzys == 0) {
                        com.google.android.gms.ads.internal.util.client.zzb.zzaG("Starting reload.");
                        this.zzyw.zzyu.zzys = 2;
                        this.zzyw.zzyu.zzdN();
                    }
                    this.zzyv.zzb("/requestReload", (zzdk) this.zzyz.get());
                }
            }
        }

        /* renamed from: com.google.android.gms.internal.zzdz.1.4 */
        class AnonymousClass4 implements Runnable {
            final /* synthetic */ zzbb zzyv;
            final /* synthetic */ AnonymousClass1 zzyw;

            AnonymousClass4(AnonymousClass1 anonymousClass1, zzbb com_google_android_gms_internal_zzbb) {
                this.zzyw = anonymousClass1;
                this.zzyv = com_google_android_gms_internal_zzbb;
            }

            public void run() {
                synchronized (this.zzyw.zzyu.zzpd) {
                    if (this.zzyw.zzyt.getStatus() == -1 || this.zzyw.zzyt.getStatus() == 1) {
                        return;
                    }
                    this.zzyw.zzyt.reject();
                    zzid.runOnUiThread(new Runnable() {
                        final /* synthetic */ AnonymousClass4 zzyA;

                        {
                            this.zzyA = r1;
                        }

                        public void run() {
                            this.zzyA.zzyv.destroy();
                        }
                    });
                    com.google.android.gms.ads.internal.util.client.zzb.v("Could not receive loaded message in a timely manner. Rejecting.");
                }
            }
        }

        AnonymousClass1(zzdz com_google_android_gms_internal_zzdz, zze com_google_android_gms_internal_zzdz_zze) {
            this.zzyu = com_google_android_gms_internal_zzdz;
            this.zzyt = com_google_android_gms_internal_zzdz_zze;
        }

        public void run() {
            zzbb zza = this.zzyu.zza(this.zzyu.mContext, this.zzyu.zzpb);
            zza.zza(new AnonymousClass1(this, zza));
            zza.zza("/jsLoaded", new AnonymousClass2(this, zza));
            zzil com_google_android_gms_internal_zzil = new zzil();
            zzdk anonymousClass3 = new AnonymousClass3(this, zza, com_google_android_gms_internal_zzil);
            com_google_android_gms_internal_zzil.set(anonymousClass3);
            zza.zza("/requestReload", anonymousClass3);
            if (this.zzyu.zzyo.endsWith(".js")) {
                zza.zzs(this.zzyu.zzyo);
            } else if (this.zzyu.zzyo.startsWith("<html>")) {
                zza.zzu(this.zzyu.zzyo);
            } else {
                zza.zzt(this.zzyu.zzyo);
            }
            zzid.zzIE.postDelayed(new AnonymousClass4(this, zza), (long) zza.zzyC);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdz.2 */
    class AnonymousClass2 implements com.google.android.gms.internal.zzis.zzc<zzbb> {
        final /* synthetic */ zze zzyB;
        final /* synthetic */ zzdz zzyu;

        AnonymousClass2(zzdz com_google_android_gms_internal_zzdz, zze com_google_android_gms_internal_zzdz_zze) {
            this.zzyu = com_google_android_gms_internal_zzdz;
            this.zzyB = com_google_android_gms_internal_zzdz_zze;
        }

        public void zza(zzbb com_google_android_gms_internal_zzbb) {
            synchronized (this.zzyu.zzpd) {
                this.zzyu.zzys = 0;
                if (!(this.zzyu.zzyr == null || this.zzyB == this.zzyu.zzyr)) {
                    com.google.android.gms.ads.internal.util.client.zzb.v("New JS engine is loaded, marking previous one as destroyable.");
                    this.zzyu.zzyr.zzdR();
                }
                this.zzyu.zzyr = this.zzyB;
            }
        }

        public /* synthetic */ void zzc(Object obj) {
            zza((zzbb) obj);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzdz.3 */
    class AnonymousClass3 implements com.google.android.gms.internal.zzis.zza {
        final /* synthetic */ zze zzyB;
        final /* synthetic */ zzdz zzyu;

        AnonymousClass3(zzdz com_google_android_gms_internal_zzdz, zze com_google_android_gms_internal_zzdz_zze) {
            this.zzyu = com_google_android_gms_internal_zzdz;
            this.zzyB = com_google_android_gms_internal_zzdz_zze;
        }

        public void run() {
            synchronized (this.zzyu.zzpd) {
                this.zzyu.zzys = 1;
                com.google.android.gms.ads.internal.util.client.zzb.v("Failed loading new engine. Marking new engine destroyable.");
                this.zzyB.zzdR();
            }
        }
    }

    static class zza {
        static int zzyC;
        static int zzyD;

        static {
            zzyC = 60000;
            zzyD = 10000;
        }
    }

    public static class zzc<T> implements zzb<T> {
        public void zzc(T t) {
        }
    }

    public static class zzd extends zzit<zzbe> {
        private final Object zzpd;
        private final zze zzyE;
        private boolean zzyF;

        public zzd(zze com_google_android_gms_internal_zzdz_zze) {
            this.zzpd = new Object();
            this.zzyE = com_google_android_gms_internal_zzdz_zze;
        }

        public void release() {
            synchronized (this.zzpd) {
                if (this.zzyF) {
                    return;
                }
                this.zzyF = true;
                zza(new com.google.android.gms.internal.zzis.zzc<zzbe>() {
                    final /* synthetic */ zzd zzyG;

                    {
                        this.zzyG = r1;
                    }

                    public void zzb(zzbe com_google_android_gms_internal_zzbe) {
                        com.google.android.gms.ads.internal.util.client.zzb.v("Ending javascript session.");
                        ((zzbf) com_google_android_gms_internal_zzbe).zzck();
                    }

                    public /* synthetic */ void zzc(Object obj) {
                        zzb((zzbe) obj);
                    }
                }, new com.google.android.gms.internal.zzis.zzb());
                zza(new com.google.android.gms.internal.zzis.zzc<zzbe>() {
                    final /* synthetic */ zzd zzyG;

                    {
                        this.zzyG = r1;
                    }

                    public void zzb(zzbe com_google_android_gms_internal_zzbe) {
                        com.google.android.gms.ads.internal.util.client.zzb.v("Releasing engine reference.");
                        this.zzyG.zzyE.zzdQ();
                    }

                    public /* synthetic */ void zzc(Object obj) {
                        zzb((zzbe) obj);
                    }
                }, new com.google.android.gms.internal.zzis.zza() {
                    final /* synthetic */ zzd zzyG;

                    {
                        this.zzyG = r1;
                    }

                    public void run() {
                        this.zzyG.zzyE.zzdQ();
                    }
                });
            }
        }
    }

    public static class zze extends zzit<zzbb> {
        private final Object zzpd;
        private boolean zzyH;
        private int zzyI;
        private zzb<zzbb> zzyq;

        /* renamed from: com.google.android.gms.internal.zzdz.zze.1 */
        class AnonymousClass1 implements com.google.android.gms.internal.zzis.zzc<zzbb> {
            final /* synthetic */ zzd zzyJ;
            final /* synthetic */ zze zzyK;

            AnonymousClass1(zze com_google_android_gms_internal_zzdz_zze, zzd com_google_android_gms_internal_zzdz_zzd) {
                this.zzyK = com_google_android_gms_internal_zzdz_zze;
                this.zzyJ = com_google_android_gms_internal_zzdz_zzd;
            }

            public void zza(zzbb com_google_android_gms_internal_zzbb) {
                com.google.android.gms.ads.internal.util.client.zzb.v("Getting a new session for JS Engine.");
                this.zzyJ.zzg(com_google_android_gms_internal_zzbb.zzci());
            }

            public /* synthetic */ void zzc(Object obj) {
                zza((zzbb) obj);
            }
        }

        /* renamed from: com.google.android.gms.internal.zzdz.zze.2 */
        class AnonymousClass2 implements com.google.android.gms.internal.zzis.zza {
            final /* synthetic */ zzd zzyJ;
            final /* synthetic */ zze zzyK;

            AnonymousClass2(zze com_google_android_gms_internal_zzdz_zze, zzd com_google_android_gms_internal_zzdz_zzd) {
                this.zzyK = com_google_android_gms_internal_zzdz_zze;
                this.zzyJ = com_google_android_gms_internal_zzdz_zzd;
            }

            public void run() {
                com.google.android.gms.ads.internal.util.client.zzb.v("Rejecting reference for JS Engine.");
                this.zzyJ.reject();
            }
        }

        public zze(zzb<zzbb> com_google_android_gms_internal_zzdz_zzb_com_google_android_gms_internal_zzbb) {
            this.zzpd = new Object();
            this.zzyq = com_google_android_gms_internal_zzdz_zzb_com_google_android_gms_internal_zzbb;
            this.zzyH = false;
            this.zzyI = 0;
        }

        public zzd zzdP() {
            zzd com_google_android_gms_internal_zzdz_zzd = new zzd(this);
            synchronized (this.zzpd) {
                zza(new AnonymousClass1(this, com_google_android_gms_internal_zzdz_zzd), new AnonymousClass2(this, com_google_android_gms_internal_zzdz_zzd));
                zzx.zzZ(this.zzyI >= 0);
                this.zzyI++;
            }
            return com_google_android_gms_internal_zzdz_zzd;
        }

        protected void zzdQ() {
            boolean z = true;
            synchronized (this.zzpd) {
                if (this.zzyI < 1) {
                    z = false;
                }
                zzx.zzZ(z);
                com.google.android.gms.ads.internal.util.client.zzb.v("Releasing 1 reference for JS Engine");
                this.zzyI--;
                zzdS();
            }
        }

        public void zzdR() {
            boolean z = true;
            synchronized (this.zzpd) {
                if (this.zzyI < 0) {
                    z = false;
                }
                zzx.zzZ(z);
                com.google.android.gms.ads.internal.util.client.zzb.v("Releasing root reference. JS Engine will be destroyed once other references are released.");
                this.zzyH = true;
                zzdS();
            }
        }

        protected void zzdS() {
            synchronized (this.zzpd) {
                zzx.zzZ(this.zzyI >= 0);
                if (this.zzyH && this.zzyI == 0) {
                    com.google.android.gms.ads.internal.util.client.zzb.v("No reference is left (including root). Cleaning up engine.");
                    zza(new com.google.android.gms.internal.zzis.zzc<zzbb>() {
                        final /* synthetic */ zze zzyK;

                        /* renamed from: com.google.android.gms.internal.zzdz.zze.3.1 */
                        class AnonymousClass1 implements Runnable {
                            final /* synthetic */ zzbb zzrE;
                            final /* synthetic */ AnonymousClass3 zzyL;

                            AnonymousClass1(AnonymousClass3 anonymousClass3, zzbb com_google_android_gms_internal_zzbb) {
                                this.zzyL = anonymousClass3;
                                this.zzrE = com_google_android_gms_internal_zzbb;
                            }

                            public void run() {
                                this.zzyL.zzyK.zzyq.zzc(this.zzrE);
                                this.zzrE.destroy();
                            }
                        }

                        {
                            this.zzyK = r1;
                        }

                        public void zza(zzbb com_google_android_gms_internal_zzbb) {
                            zzid.runOnUiThread(new AnonymousClass1(this, com_google_android_gms_internal_zzbb));
                        }

                        public /* synthetic */ void zzc(Object obj) {
                            zza((zzbb) obj);
                        }
                    }, new com.google.android.gms.internal.zzis.zzb());
                } else {
                    com.google.android.gms.ads.internal.util.client.zzb.v("There are still references to the engine. Not destroying.");
                }
            }
        }
    }

    public zzdz(Context context, VersionInfoParcel versionInfoParcel, String str) {
        this.zzpd = new Object();
        this.zzys = 1;
        this.zzyo = str;
        this.mContext = context.getApplicationContext();
        this.zzpb = versionInfoParcel;
        this.zzyp = new zzc();
        this.zzyq = new zzc();
    }

    public zzdz(Context context, VersionInfoParcel versionInfoParcel, String str, zzb<zzbb> com_google_android_gms_internal_zzdz_zzb_com_google_android_gms_internal_zzbb, zzb<zzbb> com_google_android_gms_internal_zzdz_zzb_com_google_android_gms_internal_zzbb2) {
        this(context, versionInfoParcel, str);
        this.zzyp = com_google_android_gms_internal_zzdz_zzb_com_google_android_gms_internal_zzbb;
        this.zzyq = com_google_android_gms_internal_zzdz_zzb_com_google_android_gms_internal_zzbb2;
    }

    private zze zzdM() {
        zze com_google_android_gms_internal_zzdz_zze = new zze(this.zzyq);
        zzid.runOnUiThread(new AnonymousClass1(this, com_google_android_gms_internal_zzdz_zze));
        return com_google_android_gms_internal_zzdz_zze;
    }

    protected zzbb zza(Context context, VersionInfoParcel versionInfoParcel) {
        return new zzbd(context, versionInfoParcel, null);
    }

    protected zze zzdN() {
        zze zzdM = zzdM();
        zzdM.zza(new AnonymousClass2(this, zzdM), new AnonymousClass3(this, zzdM));
        return zzdM;
    }

    public zzd zzdO() {
        zzd zzdP;
        synchronized (this.zzpd) {
            if (this.zzyr == null || this.zzyr.getStatus() == -1) {
                this.zzys = 2;
                this.zzyr = zzdN();
                zzdP = this.zzyr.zzdP();
            } else if (this.zzys == 0) {
                zzdP = this.zzyr.zzdP();
            } else if (this.zzys == 1) {
                this.zzys = 2;
                zzdN();
                zzdP = this.zzyr.zzdP();
            } else if (this.zzys == 2) {
                zzdP = this.zzyr.zzdP();
            } else {
                zzdP = this.zzyr.zzdP();
            }
        }
        return zzdP;
    }
}
