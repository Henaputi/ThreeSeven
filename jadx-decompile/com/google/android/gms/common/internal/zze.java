package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import spacemadness.com.lunarconsole.R;

public abstract class zze {
    public static final zze zzaeL;
    public static final zze zzaeM;
    public static final zze zzaeN;
    public static final zze zzaeO;
    public static final zze zzaeP;
    public static final zze zzaeQ;
    public static final zze zzaeR;
    public static final zze zzaeS;
    public static final zze zzaeT;
    public static final zze zzaeU;
    public static final zze zzaeV;
    public static final zze zzaeW;
    public static final zze zzaeX;
    public static final zze zzaeY;
    public static final zze zzaeZ;

    /* renamed from: com.google.android.gms.common.internal.zze.11 */
    static class AnonymousClass11 extends zze {
        final /* synthetic */ char zzaff;

        AnonymousClass11(char c) {
            this.zzaff = c;
        }

        public zze zza(zze com_google_android_gms_common_internal_zze) {
            return com_google_android_gms_common_internal_zze.zzd(this.zzaff) ? com_google_android_gms_common_internal_zze : super.zza(com_google_android_gms_common_internal_zze);
        }

        public boolean zzd(char c) {
            return c == this.zzaff;
        }
    }

    /* renamed from: com.google.android.gms.common.internal.zze.2 */
    static class AnonymousClass2 extends zze {
        final /* synthetic */ char zzafa;
        final /* synthetic */ char zzafb;

        AnonymousClass2(char c, char c2) {
            this.zzafa = c;
            this.zzafb = c2;
        }

        public boolean zzd(char c) {
            return c == this.zzafa || c == this.zzafb;
        }
    }

    /* renamed from: com.google.android.gms.common.internal.zze.3 */
    static class AnonymousClass3 extends zze {
        final /* synthetic */ char[] zzafc;

        AnonymousClass3(char[] cArr) {
            this.zzafc = cArr;
        }

        public boolean zzd(char c) {
            return Arrays.binarySearch(this.zzafc, c) >= 0;
        }
    }

    /* renamed from: com.google.android.gms.common.internal.zze.4 */
    static class AnonymousClass4 extends zze {
        final /* synthetic */ char zzafd;
        final /* synthetic */ char zzafe;

        AnonymousClass4(char c, char c2) {
            this.zzafd = c;
            this.zzafe = c2;
        }

        public boolean zzd(char c) {
            return this.zzafd <= c && c <= this.zzafe;
        }
    }

    private static class zza extends zze {
        List<zze> zzafg;

        zza(List<zze> list) {
            this.zzafg = list;
        }

        public zze zza(zze com_google_android_gms_common_internal_zze) {
            List arrayList = new ArrayList(this.zzafg);
            arrayList.add(zzx.zzw(com_google_android_gms_common_internal_zze));
            return new zza(arrayList);
        }

        public boolean zzd(char c) {
            for (zze zzd : this.zzafg) {
                if (zzd.zzd(c)) {
                    return true;
                }
            }
            return false;
        }
    }

    static {
        zzaeL = zza((CharSequence) "\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f").zza(zza('\u2000', '\u200a'));
        zzaeM = zza((CharSequence) "\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000").zza(zza('\u2000', '\u2006')).zza(zza('\u2008', '\u200a'));
        zzaeN = zza('\u0000', '\u007f');
        zze zza = zza('0', '9');
        zze com_google_android_gms_common_internal_zze = zza;
        for (char c : "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10".toCharArray()) {
            com_google_android_gms_common_internal_zze = com_google_android_gms_common_internal_zze.zza(zza(c, (char) (c + 9)));
        }
        zzaeO = com_google_android_gms_common_internal_zze;
        zzaeP = zza('\t', '\r').zza(zza('\u001c', ' ')).zza(zzc('\u1680')).zza(zzc('\u180e')).zza(zza('\u2000', '\u2006')).zza(zza('\u2008', '\u200b')).zza(zza('\u2028', '\u2029')).zza(zzc('\u205f')).zza(zzc('\u3000'));
        zzaeQ = new zze() {
            public boolean zzd(char c) {
                return Character.isDigit(c);
            }
        };
        zzaeR = new zze() {
            public boolean zzd(char c) {
                return Character.isLetter(c);
            }
        };
        zzaeS = new zze() {
            public boolean zzd(char c) {
                return Character.isLetterOrDigit(c);
            }
        };
        zzaeT = new zze() {
            public boolean zzd(char c) {
                return Character.isUpperCase(c);
            }
        };
        zzaeU = new zze() {
            public boolean zzd(char c) {
                return Character.isLowerCase(c);
            }
        };
        zzaeV = zza('\u0000', '\u001f').zza(zza('\u007f', '\u009f'));
        zzaeW = zza('\u0000', ' ').zza(zza('\u007f', '\u00a0')).zza(zzc('\u00ad')).zza(zza('\u0600', '\u0603')).zza(zza((CharSequence) "\u06dd\u070f\u1680\u17b4\u17b5\u180e")).zza(zza('\u2000', '\u200f')).zza(zza('\u2028', '\u202f')).zza(zza('\u205f', '\u2064')).zza(zza('\u206a', '\u206f')).zza(zzc('\u3000')).zza(zza('\ud800', '\uf8ff')).zza(zza((CharSequence) "\ufeff\ufff9\ufffa\ufffb"));
        zzaeX = zza('\u0000', '\u04f9').zza(zzc('\u05be')).zza(zza('\u05d0', '\u05ea')).zza(zzc('\u05f3')).zza(zzc('\u05f4')).zza(zza('\u0600', '\u06ff')).zza(zza('\u0750', '\u077f')).zza(zza('\u0e00', '\u0e7f')).zza(zza('\u1e00', '\u20af')).zza(zza('\u2100', '\u213a')).zza(zza('\ufb50', '\ufdff')).zza(zza('\ufe70', '\ufeff')).zza(zza('\uff61', '\uffdc'));
        zzaeY = new zze() {
            public zze zza(zze com_google_android_gms_common_internal_zze) {
                zzx.zzw(com_google_android_gms_common_internal_zze);
                return this;
            }

            public boolean zzb(CharSequence charSequence) {
                zzx.zzw(charSequence);
                return true;
            }

            public boolean zzd(char c) {
                return true;
            }
        };
        zzaeZ = new zze() {
            public zze zza(zze com_google_android_gms_common_internal_zze) {
                return (zze) zzx.zzw(com_google_android_gms_common_internal_zze);
            }

            public boolean zzb(CharSequence charSequence) {
                return charSequence.length() == 0;
            }

            public boolean zzd(char c) {
                return false;
            }
        };
    }

    public static zze zza(char c, char c2) {
        zzx.zzaa(c2 >= c);
        return new AnonymousClass4(c, c2);
    }

    public static zze zza(CharSequence charSequence) {
        switch (charSequence.length()) {
            case R.styleable.AdsAttrs_adSize /*0*/:
                return zzaeZ;
            case R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return zzc(charSequence.charAt(0));
            case R.styleable.LoadingImageView_circleCrop /*2*/:
                return new AnonymousClass2(charSequence.charAt(0), charSequence.charAt(1));
            default:
                char[] toCharArray = charSequence.toString().toCharArray();
                Arrays.sort(toCharArray);
                return new AnonymousClass3(toCharArray);
        }
    }

    public static zze zzc(char c) {
        return new AnonymousClass11(c);
    }

    public zze zza(zze com_google_android_gms_common_internal_zze) {
        return new zza(Arrays.asList(new zze[]{this, (zze) zzx.zzw(com_google_android_gms_common_internal_zze)}));
    }

    public boolean zzb(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!zzd(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public abstract boolean zzd(char c);
}
