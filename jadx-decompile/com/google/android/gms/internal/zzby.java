package com.google.android.gms.internal;

import android.content.Context;
import android.support.v4.view.GravityCompat;
import com.google.android.gms.ads.internal.zzp;
import java.util.List;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
public final class zzby {
    public static final zzbu<Integer> zzuA;
    public static final zzbu<Long> zzuB;
    public static final zzbu<Long> zzuC;
    public static final zzbu<Integer> zzuD;
    public static final zzbu<Boolean> zzuE;
    public static final zzbu<String> zzuF;
    public static final zzbu<Long> zzuG;
    public static final zzbu<String> zzuH;
    public static final zzbu<Boolean> zzuI;
    public static final zzbu<String> zzuJ;
    public static final zzbu<Boolean> zzuK;
    public static final zzbu<Boolean> zzuL;
    public static final zzbu<Boolean> zzuM;
    public static final zzbu<String> zzuN;
    public static final zzbu<String> zzuO;
    public static final zzbu<String> zzuP;
    public static final zzbu<Boolean> zzuQ;
    public static final zzbu<String> zzuR;
    public static final zzbu<Boolean> zzuS;
    public static final zzbu<Boolean> zzuT;
    public static final zzbu<Integer> zzuU;
    public static final zzbu<Integer> zzuV;
    public static final zzbu<Integer> zzuW;
    public static final zzbu<Integer> zzuX;
    public static final zzbu<Integer> zzuY;
    public static final zzbu<Boolean> zzuZ;
    public static final zzbu<String> zzuk;
    public static final zzbu<String> zzul;
    public static final zzbu<Boolean> zzum;
    public static final zzbu<String> zzun;
    public static final zzbu<Boolean> zzuo;
    public static final zzbu<String> zzup;
    public static final zzbu<Boolean> zzuq;
    public static final zzbu<Boolean> zzur;
    public static final zzbu<Boolean> zzus;
    public static final zzbu<String> zzut;
    public static final zzbu<String> zzuu;
    public static final zzbu<String> zzuv;
    public static final zzbu<Boolean> zzuw;
    public static final zzbu<String> zzux;
    public static final zzbu<Integer> zzuy;
    public static final zzbu<Integer> zzuz;
    public static final zzbu<String> zzva;
    public static final zzbu<Boolean> zzvb;
    public static final zzbu<Boolean> zzvc;
    public static final zzbu<Boolean> zzvd;
    public static final zzbu<String> zzve;
    public static final zzbu<Boolean> zzvf;
    public static final zzbu<Boolean> zzvg;
    public static final zzbu<Integer> zzvh;
    public static final zzbu<String> zzvi;
    public static final zzbu<String> zzvj;
    public static final zzbu<Boolean> zzvk;
    public static final zzbu<Boolean> zzvl;
    public static final zzbu<Boolean> zzvm;
    public static final zzbu<Long> zzvn;
    public static final zzbu<Boolean> zzvo;
    public static final zzbu<Boolean> zzvp;
    public static final zzbu<Boolean> zzvq;
    public static final zzbu<Boolean> zzvr;
    public static final zzbu<Boolean> zzvs;
    public static final zzbu<Long> zzvt;
    public static final zzbu<Boolean> zzvu;
    public static final zzbu<Long> zzvv;
    public static final zzbu<Long> zzvw;
    public static final zzbu<Boolean> zzvx;
    public static final zzbu<Boolean> zzvy;
    public static final zzbu<Boolean> zzvz;

    static {
        zzuk = zzbu.zzP("gads:sdk_core_experiment_id");
        zzul = zzbu.zzc("gads:sdk_core_location", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html");
        zzum = zzbu.zza("gads:request_builder:singleton_webview", Boolean.valueOf(false));
        zzun = zzbu.zzP("gads:request_builder:singleton_webview_experiment_id");
        zzuo = zzbu.zza("gads:sdk_use_dynamic_module", Boolean.valueOf(false));
        zzup = zzbu.zzP("gads:sdk_use_dynamic_module_experiment_id");
        zzuq = zzbu.zza("gads:sdk_crash_report_enabled", Boolean.valueOf(false));
        zzur = zzbu.zza("gads:sdk_crash_report_full_stacktrace", Boolean.valueOf(false));
        zzus = zzbu.zza("gads:block_autoclicks", Boolean.valueOf(false));
        zzut = zzbu.zzP("gads:block_autoclicks_experiment_id");
        zzuu = zzbu.zzQ("gads:prefetch:experiment_id");
        zzuv = zzbu.zzP("gads:spam_app_context:experiment_id");
        zzuw = zzbu.zza("gads:spam_app_context:enabled", Boolean.valueOf(false));
        zzux = zzbu.zzP("gads:video_stream_cache:experiment_id");
        zzuy = zzbu.zza("gads:video_stream_cache:limit_count", 5);
        zzuz = zzbu.zza("gads:video_stream_cache:limit_space", (int) GravityCompat.RELATIVE_LAYOUT_DIRECTION);
        zzuA = zzbu.zza("gads:video_stream_exo_cache:buffer_size", (int) GravityCompat.RELATIVE_LAYOUT_DIRECTION);
        zzuB = zzbu.zzb("gads:video_stream_cache:limit_time_sec", 300);
        zzuC = zzbu.zzb("gads:video_stream_cache:notify_interval_millis", 1000);
        zzuD = zzbu.zza("gads:video_stream_cache:connect_timeout_millis", 10000);
        zzuE = zzbu.zza("gads:video:metric_reporting_enabled", Boolean.valueOf(false));
        zzuF = zzbu.zzc("gads:video:metric_frame_hash_times", BuildConfig.FLAVOR);
        zzuG = zzbu.zzb("gads:video:metric_frame_hash_time_leniency", 500);
        zzuH = zzbu.zzQ("gads:spam_ad_id_decorator:experiment_id");
        zzuI = zzbu.zza("gads:spam_ad_id_decorator:enabled", Boolean.valueOf(false));
        zzuJ = zzbu.zzQ("gads:looper_for_gms_client:experiment_id");
        zzuK = zzbu.zza("gads:looper_for_gms_client:enabled", Boolean.valueOf(true));
        zzuL = zzbu.zza("gads:sw_ad_request_service:enabled", Boolean.valueOf(true));
        zzuM = zzbu.zza("gads:sw_dynamite:enabled", Boolean.valueOf(true));
        zzuN = zzbu.zzc("gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js");
        zzuO = zzbu.zzc("gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js");
        zzuP = zzbu.zzc("gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js");
        zzuQ = zzbu.zza("gads:enabled_sdk_csi", Boolean.valueOf(false));
        zzuR = zzbu.zzc("gads:sdk_csi_server", "https://csi.gstatic.com/csi");
        zzuS = zzbu.zza("gads:sdk_csi_write_to_file", Boolean.valueOf(false));
        zzuT = zzbu.zza("gads:enable_content_fetching", Boolean.valueOf(true));
        zzuU = zzbu.zza("gads:content_length_weight", 1);
        zzuV = zzbu.zza("gads:content_age_weight", 1);
        zzuW = zzbu.zza("gads:min_content_len", 11);
        zzuX = zzbu.zza("gads:fingerprint_number", 10);
        zzuY = zzbu.zza("gads:sleep_sec", 10);
        zzuZ = zzbu.zza("gad:app_index_enabled", Boolean.valueOf(true));
        zzva = zzbu.zzP("gads:kitkat_interstitial_workaround:experiment_id");
        zzvb = zzbu.zza("gads:kitkat_interstitial_workaround:enabled", Boolean.valueOf(true));
        zzvc = zzbu.zza("gads:interstitial_follow_url", Boolean.valueOf(true));
        zzvd = zzbu.zza("gads:interstitial_follow_url:register_click", Boolean.valueOf(true));
        zzve = zzbu.zzP("gads:interstitial_follow_url:experiment_id");
        zzvf = zzbu.zza("gads:analytics_enabled", Boolean.valueOf(true));
        zzvg = zzbu.zza("gads:ad_key_enabled", Boolean.valueOf(false));
        zzvh = zzbu.zza("gads:webview_cache_version", 0);
        zzvi = zzbu.zzQ("gads:pan:experiment_id");
        zzvj = zzbu.zzc("gads:native:engine_url", "//googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html");
        zzvk = zzbu.zza("gads:ad_manager_creator:enabled", Boolean.valueOf(true));
        zzvl = zzbu.zza("gads:log:verbose_enabled", Boolean.valueOf(false));
        zzvm = zzbu.zza("gads:device_info_caching:enabled", Boolean.valueOf(true));
        zzvn = zzbu.zzb("gads:device_info_caching_expiry_ms:expiry", 300000);
        zzvo = zzbu.zza("gads:gen204_signals:enabled", Boolean.valueOf(false));
        zzvp = zzbu.zza("gads:webview:error_reporting_enabled", Boolean.valueOf(false));
        zzvq = zzbu.zza("gads:adid_reporting:enabled", Boolean.valueOf(false));
        zzvr = zzbu.zza("gads:request_pkg:enabled", Boolean.valueOf(true));
        zzvs = zzbu.zza("gads:gmsg:disable_back_button:enabled", Boolean.valueOf(false));
        zzvt = zzbu.zzb("gads:network:cache_prediction_duration_s", 300);
        zzvu = zzbu.zza("gads:mediation:dynamite_first", Boolean.valueOf(true));
        zzvv = zzbu.zzb("gads:ad_loader:timeout_ms", 60000);
        zzvw = zzbu.zzb("gads:rendering:timeout_ms", 60000);
        zzvx = zzbu.zza("gads:adshield:enable_adshield_instrumentation", Boolean.valueOf(false));
        zzvy = zzbu.zza("gads:adid_notification:first_party_check:enabled", Boolean.valueOf(true));
        zzvz = zzbu.zza("gads:support_screen_shot", Boolean.valueOf(true));
    }

    public static void initialize(Context context) {
        zzp.zzbE().initialize(context);
    }

    public static List<String> zzdf() {
        return zzp.zzbD().zzdf();
    }
}
