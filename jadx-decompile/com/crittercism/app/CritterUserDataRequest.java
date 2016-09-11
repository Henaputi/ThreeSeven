package com.crittercism.app;

import crittercism.android.az;
import crittercism.android.dg;
import crittercism.android.dl;
import crittercism.android.dx;
import crittercism.android.dy;
import java.util.HashMap;
import java.util.Map;

public class CritterUserDataRequest {
    private final CritterCallback a;
    private az b;
    private Map c;
    private dl d;

    public CritterUserDataRequest(CritterCallback cb) {
        this.a = cb;
        this.b = az.A();
        this.c = new HashMap();
        this.d = new dl(this.b);
    }

    public CritterUserDataRequest requestRateMyAppInfo() {
        this.d.e();
        return this;
    }

    public CritterUserDataRequest requestDidCrashOnLastLoad() {
        this.d.c();
        return this;
    }

    public CritterUserDataRequest requestUserUUID() {
        this.d.d();
        return this;
    }

    public CritterUserDataRequest requestOptOutStatus() {
        this.d.b();
        return this;
    }

    public synchronized void makeRequest() {
        dg dgVar = this.b.q;
        if (dgVar == null) {
            dx.a("Must initialize Crittercism before calling " + getClass().getName() + ".makeRequest()", new IllegalStateException());
        } else {
            Runnable anonymousClass1 = new Runnable() {
                final /* synthetic */ CritterUserDataRequest a;

                {
                    this.a = r1;
                }

                public final void run() {
                    this.a.d.run();
                    this.a.c = this.a.d.a;
                    this.a.a.onCritterDataReceived(new CritterUserData(this.a.c, this.a.b.f.b()));
                }
            };
            if (!dgVar.a(anonymousClass1)) {
                new dy(anonymousClass1).start();
            }
        }
    }
}
