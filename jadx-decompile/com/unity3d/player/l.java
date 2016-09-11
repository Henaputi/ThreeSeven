package com.unity3d.player;

import android.view.Choreographer;
import android.view.Choreographer.FrameCallback;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class l implements h {
    private Choreographer a;
    private long b;
    private FrameCallback c;
    private Lock d;

    /* renamed from: com.unity3d.player.l.1 */
    class AnonymousClass1 implements FrameCallback {
        final /* synthetic */ UnityPlayer a;
        final /* synthetic */ l b;

        AnonymousClass1(l lVar, UnityPlayer unityPlayer) {
            this.b = lVar;
            this.a = unityPlayer;
        }

        public final void doFrame(long j) {
            UnityPlayer.lockNativeAccess();
            if (v.c()) {
                this.a.nativeAddVSyncTime(j);
            }
            UnityPlayer.unlockNativeAccess();
            this.b.d.lock();
            if (this.b.a != null) {
                this.b.a.postFrameCallback(this.b.c);
            }
            this.b.d.unlock();
        }
    }

    public l() {
        this.a = null;
        this.b = 0;
        this.d = new ReentrantLock();
    }

    public final void a() {
        this.d.lock();
        if (this.a != null) {
            this.a.removeFrameCallback(this.c);
        }
        this.a = null;
        this.d.unlock();
    }

    public final void a(UnityPlayer unityPlayer) {
        this.d.lock();
        if (this.a == null) {
            this.a = Choreographer.getInstance();
            if (this.a != null) {
                m.Log(4, "Choreographer available: Enabling VSYNC timing");
                this.c = new AnonymousClass1(this, unityPlayer);
                this.a.postFrameCallback(this.c);
            }
        }
        this.d.unlock();
    }
}
