package crittercism.android;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningServiceInfo;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.ConditionVariable;
import android.os.Looper;
import android.os.MessageQueue.IdleHandler;
import android.os.Process;
import com.crittercism.app.CritterRateMyAppButtons;
import com.crittercism.app.CrittercismConfig;
import com.crittercism.app.Transaction;
import com.crittercism.integrations.PluginException;
import com.mopub.volley.toolbox.HttpClientStack.HttpPatch;
import crittercism.android.bx.f;
import crittercism.android.bx.o;
import crittercism.android.bx.p;
import crittercism.android.cs.b;
import java.lang.Thread.UncaughtExceptionHandler;
import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.BuildConfig;

public final class az implements au, aw, ax, f {
    static az a;
    public dt A;
    int B;
    public boolean C;
    private String D;
    private bs E;
    private bs F;
    private g G;
    private at H;
    private boolean I;
    private String J;
    public boolean b;
    public Context c;
    public final ConditionVariable d;
    public final ConditionVariable e;
    public dw f;
    bs g;
    bs h;
    bs i;
    bs j;
    bs k;
    bs l;
    bs m;
    bs n;
    bs o;
    cv p;
    public dg q;
    ExecutorService r;
    public ExecutorService s;
    public boolean t;
    public bb u;
    protected e v;
    public dr w;
    dv x;
    public bi y;
    public Map z;

    /* renamed from: crittercism.android.az.10 */
    class AnonymousClass10 implements OnClickListener {
        final /* synthetic */ String a;
        final /* synthetic */ az b;

        AnonymousClass10(az azVar, String str) {
            this.b = azVar;
            this.a = str;
        }

        public final void onClick(DialogInterface dialogInterface, int i) {
            try {
                az.A().a(this.a);
            } catch (Exception e) {
                dx.c("YES button failed.  Email support@crittercism.com.");
            }
        }
    }

    /* renamed from: crittercism.android.az.2 */
    class AnonymousClass2 extends di {
        final /* synthetic */ az a;
        final /* synthetic */ JSONObject b;
        final /* synthetic */ az c;

        AnonymousClass2(az azVar, az azVar2, JSONObject jSONObject) {
            this.c = azVar;
            this.a = azVar2;
            this.b = jSONObject;
        }

        public final void a() {
            if (!this.a.f.b()) {
                this.a.x.a(this.b);
                if (this.a.x.b()) {
                    this.a.E();
                }
            }
        }
    }

    /* renamed from: crittercism.android.az.3 */
    class AnonymousClass3 extends di {
        final /* synthetic */ az a;
        final /* synthetic */ az b;

        AnonymousClass3(az azVar, az azVar2) {
            this.b = azVar;
            this.a = azVar2;
        }

        public final void a() {
            if (!this.a.f.b()) {
                cw cuVar = new cu(this.a);
                JSONObject a = this.a.x.a();
                cuVar.a.put("metadata", a);
                new dj(cuVar, new dc(new db(this.b.u.b(), "/android_v2/update_user_metadata").a()), new dd(this.a.x)).run();
            }
        }
    }

    /* renamed from: crittercism.android.az.4 */
    public static /* synthetic */ class AnonymousClass4 {
        public static final /* synthetic */ int[] a;

        static {
            a = new int[CritterRateMyAppButtons.values().length];
            try {
                a[CritterRateMyAppButtons.YES.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[CritterRateMyAppButtons.NO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[CritterRateMyAppButtons.LATER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: crittercism.android.az.5 */
    class AnonymousClass5 extends di {
        final /* synthetic */ Throwable a;
        final /* synthetic */ long b;
        final /* synthetic */ az c;

        AnonymousClass5(az azVar, Throwable th, long j) {
            this.c = azVar;
            this.a = th;
            this.b = j;
        }

        public final void a() {
            if (!this.c.f.b()) {
                synchronized (this.c.p) {
                    if (this.c.B < 10) {
                        bk bkVar = new bk(this.a, this.b);
                        bkVar.a("current_session", this.c.k);
                        bkVar.a(this.c.l);
                        bkVar.f = "he";
                        if (this.c.p.a()) {
                            new dj(new cu(az.a).a(br.HAND_EXCS.f(), new JSONArray().put(bkVar.b())), new dc(new db(this.c.u.b(), "/android_v2/handle_exceptions").a()), null).run();
                            az azVar = this.c;
                            azVar.B++;
                            this.c.p.b();
                        }
                    }
                }
            }
        }
    }

    /* renamed from: crittercism.android.az.6 */
    class AnonymousClass6 extends di {
        final /* synthetic */ Throwable a;
        final /* synthetic */ long b;
        final /* synthetic */ az c;

        AnonymousClass6(az azVar, Throwable th, long j) {
            this.c = azVar;
            this.a = th;
            this.b = j;
        }

        public final void a() {
            if (!this.c.f.b()) {
                ch bkVar = new bk(this.a, this.b);
                bkVar.a("current_session", this.c.k);
                bkVar.f = "he";
                if (this.c.h.a(bkVar)) {
                    az.a.a(new by(bkVar.c, bkVar.d));
                    if (this.c.p.a()) {
                        df dfVar = new df(this.c.c);
                        dfVar.a(this.c.h, new crittercism.android.da.a(), this.c.u.b(), "/android_v2/handle_exceptions", null, az.a, new crittercism.android.cu.a());
                        dfVar.a(this.c.q, this.c.r);
                        this.c.p.b();
                    }
                }
            }
        }
    }

    /* renamed from: crittercism.android.az.7 */
    public class AnonymousClass7 extends di {
        final /* synthetic */ cf a;
        final /* synthetic */ az b;

        public AnonymousClass7(az azVar, cf cfVar) {
            this.b = azVar;
            this.a = cfVar;
        }

        public final void a() {
            this.b.k.a(this.a);
        }
    }

    /* renamed from: crittercism.android.az.8 */
    class AnonymousClass8 extends di {
        final /* synthetic */ c a;
        final /* synthetic */ az b;

        AnonymousClass8(az azVar, c cVar) {
            this.b = azVar;
            this.a = cVar;
        }

        public final void a() {
            this.b.l.a(this.a);
        }
    }

    /* renamed from: crittercism.android.az.9 */
    class AnonymousClass9 extends di {
        final /* synthetic */ ci a;
        final /* synthetic */ az b;

        AnonymousClass9(az azVar, ci ciVar) {
            this.b = azVar;
            this.a = ciVar;
        }

        public final void a() {
            this.b.m.a(this.a);
        }
    }

    static class a implements IdleHandler {
        private boolean a;

        private a() {
            this.a = false;
        }

        public final boolean queueIdle() {
            synchronized (this) {
                if (!this.a) {
                    this.a = true;
                    bg.g();
                }
            }
            return true;
        }
    }

    protected az() {
        this.b = false;
        this.c = null;
        this.D = null;
        this.d = new ConditionVariable(false);
        this.e = new ConditionVariable(false);
        this.f = new dw();
        this.p = null;
        this.q = null;
        this.G = null;
        this.r = Executors.newCachedThreadPool(new dz());
        this.s = Executors.newSingleThreadExecutor(new dz());
        this.I = false;
        this.t = false;
        this.J = BuildConfig.FLAVOR;
        this.x = null;
        this.z = new HashMap();
        this.A = null;
        this.B = 0;
        this.C = false;
        this.v = new e(this.s);
    }

    public static az A() {
        if (a == null) {
            a = new az();
        }
        return a;
    }

    public final void a(Context context, String str, CrittercismConfig crittercismConfig) {
        dx.a("Initializing Crittercism 5.0.8 for App ID " + str);
        bn bnVar = new bn(str);
        this.D = str;
        this.u = new bb(bnVar, crittercismConfig);
        this.c = context;
        this.H = new at(this.c, this.u);
        this.J = context.getPackageName();
        this.w = new dr(context);
        G();
        long j = 60000000000L;
        if (this.t) {
            j = 12000000000L;
        }
        this.p = new cv(j);
        if (!F()) {
            dx.c("Crittercism should be initialized in onCreate() of MainActivity");
        }
        bx.a(this.H);
        bx.a(this.c);
        bx.a(new cc());
        bx.a(new bf(this.c, this.u));
        try {
            this.v.a(this.u.a());
            this.v.b(this.u.getPreserveQueryStringPatterns());
            this.G = new g(this, new URL(this.u.c() + "/api/apm/network"));
            this.v.a(this.G);
            this.v.a((f) this);
            new dy(this.G, "OPTMZ").start();
            if (!h.a(this.c).exists() && this.u.isServiceMonitoringEnabled()) {
                this.I = new i(this.v, new d(this.c)).a();
                new StringBuilder("installedApm = ").append(this.I);
                dx.b();
            }
        } catch (Exception e) {
            new StringBuilder("Exception in startApm: ").append(e.getClass().getName());
            dx.b();
            dx.c();
        }
        this.q = new dg(this.u, context, this, this, this);
        if (!this.t) {
            dx.a(new ec(this, this.s, this.q, this.f));
        }
        UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (!(defaultUncaughtExceptionHandler instanceof ay)) {
            Thread.setDefaultUncaughtExceptionHandler(new ay(this, defaultUncaughtExceptionHandler));
        }
        if (VERSION.SDK_INT < 14) {
            dx.a("API Level is less than 14. Automatic breadcrumbs are not supported.");
        } else if (this.c instanceof Application) {
            dx.b();
            ((Application) this.c).registerActivityLifecycleCallbacks(new av(this.c, this));
        } else {
            dx.c("Application context not provided. Automatic breadcrumbs will not be recorded.");
        }
        if (!this.t) {
            bg.b(this);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                Looper.myQueue().addIdleHandler(new a());
            }
        }
        new dy(this.q).start();
        this.b = true;
    }

    private static boolean F() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (stackTraceElement.getMethodName().equals("onCreate") || stackTraceElement.getMethodName().equals("onResume")) {
                return true;
            }
        }
        return false;
    }

    private void G() {
        int myUid = Process.myUid();
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) this.c.getSystemService("activity");
        int i = 0;
        for (RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
            int i2;
            if (runningAppProcessInfo.uid == myUid) {
                i2 = i + 1;
            } else {
                i2 = i;
            }
            i = i2;
        }
        if (i <= 1) {
            this.t = false;
            return;
        }
        for (RunningServiceInfo runningServiceInfo : activityManager.getRunningServices(Integer.MAX_VALUE)) {
            if (runningServiceInfo.pid == myPid) {
                this.t = true;
                return;
            }
        }
    }

    public final void a(Throwable th) {
        if (this.q == null) {
            dx.b("Unable to handle application crash. Crittercism not yet initialized");
            return;
        }
        this.q.b();
        dq.a(this.c, true);
        if (!this.f.b()) {
            if (this.t) {
                new dj(new cu(this).a(br.SDK_CRASHES.f(), new JSONArray().put(new bk(th, Thread.currentThread().getId()).b())), new dc(new db(this.u.b(), "/android_v2/handle_crashes").a()), null).run();
                return;
            }
            List a = bg.a(this, th instanceof PluginException);
            ch bkVar = new bk(th, Thread.currentThread().getId());
            bkVar.a("crashed_session", this.k);
            if (this.F.b() > 0) {
                bkVar.a("previous_session", this.F);
            }
            bkVar.a(this.l);
            bkVar.b = new bo(this.m).a;
            bkVar.a();
            bkVar.a(a);
            this.j.a(bkVar);
            df dfVar = new df(this.c);
            dfVar.a(this.g, new crittercism.android.da.a(), this.u.e(), "/v0/appload", null, this, new b());
            dfVar.a(this.h, new crittercism.android.da.a(), this.u.b(), "/android_v2/handle_exceptions", null, this, new crittercism.android.cu.a());
            dfVar.a(this.i, new crittercism.android.da.a(), this.u.b(), "/android_v2/handle_ndk_crashes", null, this, new crittercism.android.cu.a());
            dfVar.a(this.j, new crittercism.android.da.a(), this.u.b(), "/android_v2/handle_crashes", null, this, new crittercism.android.cu.a());
            try {
                dfVar.a();
            } catch (InterruptedException e) {
                new StringBuilder("InterruptedException in logCrashException: ").append(e.getMessage());
                dx.b();
                dx.c();
            } catch (Throwable th2) {
                new StringBuilder("Unexpected throwable in logCrashException: ").append(th2.getMessage());
                dx.b();
                dx.c();
            }
        }
    }

    public final void a(String str, URL url, long j, long j2, long j3, int i, Exception exception, long j4) {
        if (str == null) {
            dx.b("Null HTTP request method provided. Endpoint will not be logged.");
            return;
        }
        String toUpperCase = str.toUpperCase(Locale.US);
        Set hashSet = new HashSet();
        hashSet.add("GET");
        hashSet.add("POST");
        hashSet.add("HEAD");
        hashSet.add("PUT");
        hashSet.add("DELETE");
        hashSet.add("TRACE");
        hashSet.add("OPTIONS");
        hashSet.add("CONNECT");
        hashSet.add(HttpPatch.METHOD_NAME);
        if (!hashSet.contains(toUpperCase)) {
            dx.c("Logging endpoint with invalid HTTP request method: " + str);
        }
        if (url == null) {
            dx.b("Null URL provided. Endpoint will not be logged");
        } else if (j2 < 0 || j3 < 0) {
            dx.b("Invalid byte values. Bytes need to be non-negative. Endpoint will not be logged.");
        } else {
            if (i != 0) {
                if (i < 100 || i >= 600) {
                    dx.c("Logging endpoint with invalid HTTP response code: " + Integer.toString(i));
                }
            } else if (exception == null) {
                dx.c("Logging endpoint with null error and response code of 0.");
            }
            b a = new d(this.c).a();
            if (j < 0) {
                dx.b("Invalid latency. Endpoint will not be logged.");
            } else if (j4 < 0) {
                dx.b("Invalid start time. Endpoint will not be logged.");
            } else {
                c cVar = new c();
                cVar.f = toUpperCase;
                cVar.a(url.toExternalForm());
                cVar.b(j2);
                cVar.d(j3);
                cVar.e = i;
                cVar.j = a;
                cVar.e(j4);
                cVar.f(j4 + j);
                if (bc.b()) {
                    cVar.a(bc.a());
                }
                cVar.a((Throwable) exception);
                this.v.a(cVar, crittercism.android.c.a.LOG_ENDPOINT);
            }
        }
    }

    private String H() {
        try {
            if (this.J == null || this.J.equals(BuildConfig.FLAVOR)) {
                this.J = this.c.getPackageName();
            }
        } catch (Exception e) {
            dx.c("Call to getPackageName() failed.  Please contact us at support@crittercism.com.");
            this.J = new String();
        }
        return this.J;
    }

    public final synchronized void b(Throwable th) {
        if (th == null) {
            dx.c("Calling logHandledException with a null java.lang.Throwable. Nothing will be reported to Crittercism");
        } else if (this.t) {
            r2 = new AnonymousClass5(this, th, Thread.currentThread().getId());
            if (!this.q.a(r2)) {
                this.s.execute(r2);
            }
        } else {
            r2 = new AnonymousClass6(this, th, Thread.currentThread().getId());
            if (!this.q.a(r2)) {
                this.s.execute(r2);
            }
        }
    }

    public final void a(c cVar) {
        Runnable anonymousClass8 = new AnonymousClass8(this, cVar);
        if (!this.q.a(anonymousClass8)) {
            this.s.execute(anonymousClass8);
        }
    }

    public final void a(ci ciVar) {
        if (!this.f.b()) {
            Runnable anonymousClass9 = new AnonymousClass9(this, ciVar);
            if (!this.q.a(anonymousClass9)) {
                this.s.execute(anonymousClass9);
            }
        }
    }

    public final String a() {
        String str = this.D;
        if (str == null) {
            return BuildConfig.FLAVOR;
        }
        return str;
    }

    public final String c() {
        String str = BuildConfig.FLAVOR;
        if (this.w != null) {
            return this.w.a();
        }
        return str;
    }

    public final String f() {
        return new f().a;
    }

    public final int g() {
        return new o().a.intValue();
    }

    public final int h() {
        return new p().a.intValue();
    }

    public final int e() {
        if (this.f != null) {
            return Integer.valueOf(this.f.a().a).intValue();
        }
        return -1;
    }

    public final void z() {
        if (this.t) {
            this.k = new bs(this.c, br.CURR_BCS).a(this.c);
        } else {
            this.k = new bs(this.c, br.CURR_BCS);
        }
        this.F = new bs(this.c, br.PREV_BCS);
        this.l = new bs(this.c, br.NW_BCS);
        this.m = new bs(this.c, br.SYSTEM_BCS);
        this.g = new bs(this.c, br.APP_LOADS);
        this.h = new bs(this.c, br.HAND_EXCS);
        this.E = new bs(this.c, br.INTERNAL_EXCS);
        this.i = new bs(this.c, br.NDK_CRASHES);
        this.j = new bs(this.c, br.SDK_CRASHES);
        this.n = new bs(this.c, br.STARTED_TXNS);
        this.o = new bs(this.c, br.FINISHED_TXNS);
        if (!this.t) {
            this.x = new dv(this.c, this.D);
        }
    }

    public final bs n() {
        return this.g;
    }

    public final bs o() {
        return this.h;
    }

    public final bs p() {
        return this.E;
    }

    public final bs q() {
        return this.i;
    }

    public final bs r() {
        return this.j;
    }

    public final dw l() {
        return this.f;
    }

    public final bs w() {
        return this.n;
    }

    public final bs x() {
        return this.o;
    }

    public final String a(String str, String str2) {
        SharedPreferences sharedPreferences = this.c.getSharedPreferences(str, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getString(str2, null);
        }
        return null;
    }

    public final void a(String str, String str2, String str3) {
        SharedPreferences sharedPreferences = this.c.getSharedPreferences(str, 0);
        if (sharedPreferences != null) {
            Editor edit = sharedPreferences.edit();
            if (edit != null) {
                edit.remove(str2);
                edit.putString(str2, str3);
                edit.commit();
            }
        }
    }

    public final void a(bh bhVar) {
        bi biVar = this.y;
        if (this.y != null) {
            bg.a(bhVar);
            bg.i();
            if (bhVar.a) {
                this.y.a(bhVar.b, TimeUnit.SECONDS);
                this.y.b();
            }
        }
    }

    public final void a(h hVar) {
        if (this.G != null && hVar.a && !hVar.c) {
            dx.a("Enabling OPTMZ");
            this.G.a(hVar.d, TimeUnit.SECONDS);
            this.G.a();
        }
    }

    public final int b(String str, String str2) {
        SharedPreferences sharedPreferences = this.c.getSharedPreferences(str, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getInt(str2, 0);
        }
        return 0;
    }

    public final void a(String str, String str2, int i) {
        SharedPreferences sharedPreferences = this.c.getSharedPreferences(str, 0);
        if (sharedPreferences != null) {
            Editor edit = sharedPreferences.edit();
            if (edit != null) {
                edit.remove(str2);
                edit.putInt(str2, i);
                edit.commit();
            }
        }
    }

    public final boolean c(String str, String str2) {
        SharedPreferences sharedPreferences = this.c.getSharedPreferences(str, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getBoolean(str2, false);
        }
        return false;
    }

    public final bs s() {
        return this.k;
    }

    public final bs u() {
        return this.F;
    }

    public final bs t() {
        return this.l;
    }

    public final bs v() {
        return this.m;
    }

    public final String b() {
        return this.H.a;
    }

    public final String d() {
        return CrittercismConfig.API_VERSION;
    }

    public final String i() {
        return "Android";
    }

    public final String j() {
        return Build.MODEL;
    }

    public final String k() {
        return VERSION.RELEASE;
    }

    public final boolean B() {
        this.d.block();
        return this.f.b();
    }

    public final void a(String str) {
        dt dtVar = this.A;
        if (this.A != null) {
            this.A.d();
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268435456);
        intent.setData(Uri.parse(str));
        this.c.startActivity(intent);
    }

    public final void C() {
        dt dtVar = this.A;
        if (this.A != null) {
            this.A.d();
        }
    }

    public final String D() {
        PackageManager packageManager = this.c.getPackageManager();
        String H = H();
        if (H == null || H.length() <= 0) {
            return null;
        }
        dn a = dp.a(packageManager.getInstallerPackageName(H));
        if (a != null) {
            return a.a(H).a();
        }
        dx.c("Could not find app market for this app.  Will try rate-my-app test target in config.");
        return this.u.getRateMyAppTestTarget();
    }

    public final AlertDialog a(Context context, String str, String str2) {
        AlertDialog alertDialog = null;
        Object obj = null;
        if (this.f.b()) {
            dx.b("User has opted out of crittercism.  generateRateMyAppAlertDialog returning null.");
        } else if (!(context instanceof Activity)) {
            dx.b("Context object must be an instance of Activity for AlertDialog to form correctly.  generateRateMyAppAlertDialog returning null.");
        } else if (str2 == null || (str2 != null && str2.length() == 0)) {
            dx.b("Message has to be a non-empty string.  generateRateMyAppAlertDialog returning null.");
        } else if (VERSION.SDK_INT < 5) {
            dx.b("Rate my app not supported below api level 5");
        } else {
            obj = 1;
        }
        if (obj != null) {
            String D = D();
            if (D == null) {
                dx.b("Cannot create proper URI to open app market.  Returning null.");
            } else {
                Builder builder = new Builder(context);
                builder.setTitle(str).setMessage(str2);
                try {
                    alertDialog = builder.create();
                    alertDialog.setButton(-1, "Yes", new AnonymousClass10(this, D));
                    alertDialog.setButton(-2, "No", new OnClickListener() {
                        final /* synthetic */ az a;

                        {
                            this.a = r1;
                        }

                        public final void onClick(DialogInterface dialogInterface, int i) {
                            try {
                                az.A().C();
                            } catch (Exception e) {
                                dx.c("NO button failed.  Email support@crittercism.com.");
                            }
                        }
                    });
                    alertDialog.setButton(-3, "Maybe Later", new OnClickListener() {
                        final /* synthetic */ az a;

                        {
                            this.a = r1;
                        }

                        public final void onClick(DialogInterface dialogInterface, int i) {
                            try {
                                az.A();
                            } catch (Exception e) {
                                dx.c("MAYBE LATER button failed.  Email support@crittercism.com.");
                            }
                        }
                    });
                } catch (Exception e) {
                    dx.b("Failed to create AlertDialog instance from AlertDialog.Builder.  Did you remember to call Looper.prepare() before calling Crittercism.generateRateMyAppAlertDialog()?");
                }
            }
        }
        return alertDialog;
    }

    public final void a(JSONObject jSONObject) {
        if (!this.t) {
            Runnable anonymousClass2 = new AnonymousClass2(this, this, jSONObject);
            if (!this.q.a(anonymousClass2)) {
                this.s.execute(anonymousClass2);
            }
        }
    }

    public final void E() {
        if (!this.t) {
            Runnable anonymousClass3 = new AnonymousClass3(this, this);
            if (!this.q.a(anonymousClass3)) {
                this.r.execute(anonymousClass3);
            }
        }
    }

    public final dv y() {
        return this.x;
    }

    public final int b(String str) {
        if (this.t) {
            dx.c("Transactions are not supported for services. Returning default value of -1 for " + str + ".");
            return -1;
        }
        int d;
        synchronized (this.z) {
            Transaction transaction = (Transaction) this.z.get(str);
            if (transaction != null) {
                d = transaction.d();
            } else {
                d = -1;
            }
        }
        return d;
    }

    public final dt m() {
        return this.A;
    }
}
