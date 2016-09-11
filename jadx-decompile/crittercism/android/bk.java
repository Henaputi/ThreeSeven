package crittercism.android;

import com.crittercism.integrations.PluginException;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import crittercism.android.bx.a;
import crittercism.android.bx.aa;
import crittercism.android.bx.b;
import crittercism.android.bx.c;
import crittercism.android.bx.d;
import crittercism.android.bx.e;
import crittercism.android.bx.f;
import crittercism.android.bx.h;
import crittercism.android.bx.i;
import crittercism.android.bx.j;
import crittercism.android.bx.k;
import crittercism.android.bx.l;
import crittercism.android.bx.m;
import crittercism.android.bx.n;
import crittercism.android.bx.o;
import crittercism.android.bx.p;
import crittercism.android.bx.q;
import crittercism.android.bx.r;
import crittercism.android.bx.s;
import crittercism.android.bx.t;
import crittercism.android.bx.u;
import crittercism.android.bx.v;
import crittercism.android.bx.w;
import crittercism.android.bx.x;
import crittercism.android.bx.y;
import crittercism.android.bx.z;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.BuildConfig;

public final class bk implements ch {
    public long a;
    public JSONArray b;
    public String c;
    public String d;
    public JSONArray e;
    public String f;
    public JSONObject g;
    private JSONObject h;
    private JSONArray i;
    private JSONArray j;
    private String k;
    private JSONArray l;
    private String m;
    private int n;
    private boolean o;
    private String p;

    public bk(Throwable th, long j) {
        int i = 0;
        this.d = BuildConfig.FLAVOR;
        this.n = -1;
        this.o = false;
        this.o = th instanceof PluginException;
        this.p = cg.a.a();
        this.f = "uhe";
        bu buVar = new bu();
        buVar.a(new a()).a(new c()).a(new b()).a(new d()).a(new e()).a(new f()).a(new o()).a(new p()).a(new i()).a(new j()).a(new h()).a(new z()).a(new aa()).a(new k()).a(new l()).a(new n()).a(new m()).a(new q()).a(new r()).a(new s()).a(new t()).a(new u()).a(new v()).a(new w()).a(new x()).a(new y());
        this.g = buVar.a();
        this.h = new JSONObject();
        this.a = j;
        this.c = a(th);
        if (th.getMessage() != null) {
            this.d = th.getMessage();
        }
        if (!this.o) {
            this.n = c(th);
        }
        this.k = "android";
        this.m = ed.a.a();
        this.l = new JSONArray();
        String[] b = b(th);
        int length = b.length;
        while (i < length) {
            this.l.put(b[i]);
            i++;
        }
    }

    public final void a(String str, bs bsVar) {
        try {
            this.h.put(str, new bo(bsVar).a);
        } catch (JSONException e) {
        }
    }

    public final void a(bs bsVar) {
        this.i = new bo(bsVar).a;
    }

    public final void a(List list) {
        this.j = new JSONArray();
        for (bg j : list) {
            try {
                this.j.put(j.j());
            } catch (Throwable e) {
                dx.a(e);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String a(java.lang.Throwable r3) {
        /*
        r2 = this;
        r0 = r2.o;
        if (r0 == 0) goto L_0x000c;
    L_0x0004:
        r3 = (com.crittercism.integrations.PluginException) r3;
        r0 = r3.getExceptionName();
    L_0x000a:
        return r0;
    L_0x000b:
        r3 = r0;
    L_0x000c:
        r0 = r3.getClass();
        r1 = r0.getName();
        r0 = r3.getCause();
        if (r0 == 0) goto L_0x001c;
    L_0x001a:
        if (r0 != r3) goto L_0x000b;
    L_0x001c:
        r0 = r1;
        goto L_0x000a;
        */
        throw new UnsupportedOperationException("Method not decompiled: crittercism.android.bk.a(java.lang.Throwable):java.lang.String");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String[] b(java.lang.Throwable r3) {
        /*
        r1 = new java.io.StringWriter;
        r1.<init>();
        r2 = new java.io.PrintWriter;
        r2.<init>(r1);
    L_0x000a:
        r3.printStackTrace(r2);
        r0 = r3.getCause();
        if (r0 == 0) goto L_0x0015;
    L_0x0013:
        if (r0 != r3) goto L_0x0020;
    L_0x0015:
        r0 = r1.toString();
        r1 = "\n";
        r0 = r0.split(r1);
        return r0;
    L_0x0020:
        r3 = r0;
        goto L_0x000a;
        */
        throw new UnsupportedOperationException("Method not decompiled: crittercism.android.bk.b(java.lang.Throwable):java.lang.String[]");
    }

    private static int c(Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int i = 0;
        while (i < stackTrace.length) {
            try {
                Object obj;
                Class cls = Class.forName(stackTrace[i].getClassName());
                for (ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader(); systemClassLoader != null; systemClassLoader = systemClassLoader.getParent()) {
                    if (cls.getClassLoader() == systemClassLoader) {
                        obj = 1;
                        break;
                    }
                }
                obj = null;
                if (obj == null) {
                    return i + 1;
                }
                i++;
            } catch (ClassNotFoundException e) {
            }
        }
        return -1;
    }

    public final void a() {
        this.e = new JSONArray();
        for (Entry entry : Thread.getAllStackTraces().entrySet()) {
            Map hashMap = new HashMap();
            Thread thread = (Thread) entry.getKey();
            if (thread.getId() != this.a) {
                hashMap.put(Twitter.NAME, thread.getName());
                hashMap.put(TriggerIfContentAvailable.ID, Long.valueOf(thread.getId()));
                hashMap.put(GameServices.STATE, thread.getState().name());
                hashMap.put("stacktrace", new JSONArray(Arrays.asList((Object[]) entry.getValue())));
                this.e.put(new JSONObject(hashMap));
            }
        }
    }

    public final JSONObject b() {
        Map hashMap = new HashMap();
        hashMap.put("app_state", this.g);
        hashMap.put("breadcrumbs", this.h);
        hashMap.put("current_thread_id", Long.valueOf(this.a));
        if (this.i != null) {
            hashMap.put("endpoints", this.i);
        }
        if (this.b != null) {
            hashMap.put("systemBreadcrumbs", this.b);
        }
        if (this.j != null && this.j.length() > 0) {
            hashMap.put("transactions", this.j);
        }
        hashMap.put("exception_name", this.c);
        hashMap.put("exception_reason", this.d);
        hashMap.put("platform", this.k);
        if (this.e != null) {
            hashMap.put("threads", this.e);
        }
        hashMap.put("ts", this.m);
        String str = Keys.TYPE;
        Object obj = this.f;
        if (this.a != 1) {
            obj = obj + "-bg";
        }
        hashMap.put(str, obj);
        hashMap.put("unsymbolized_stacktrace", this.l);
        if (!this.o) {
            hashMap.put("suspect_line_index", Integer.valueOf(this.n));
        }
        return new JSONObject(hashMap);
    }

    public final void a(OutputStream outputStream) {
        outputStream.write(b().toString().getBytes());
    }

    public final String e() {
        return this.p;
    }
}
