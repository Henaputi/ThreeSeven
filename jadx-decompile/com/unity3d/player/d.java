package com.unity3d.player;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Handler;
import android.view.View;
import android.view.View.OnSystemUiVisibilityChangeListener;
import com.google.android.gms.location.LocationStatusCodes;

public final class d implements f {
    private static final SurfaceTexture a;
    private static final int b;
    private volatile boolean c;

    /* renamed from: com.unity3d.player.d.1 */
    class AnonymousClass1 implements OnSystemUiVisibilityChangeListener {
        final /* synthetic */ View a;
        final /* synthetic */ d b;

        AnonymousClass1(d dVar, View view) {
            this.b = dVar;
            this.a = view;
        }

        public final void onSystemUiVisibilityChange(int i) {
            this.b.a(this.a, (int) LocationStatusCodes.GEOFENCE_NOT_AVAILABLE);
        }
    }

    /* renamed from: com.unity3d.player.d.2 */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ View a;
        final /* synthetic */ d b;

        AnonymousClass2(d dVar, View view) {
            this.b = dVar;
            this.a = view;
        }

        public final void run() {
            this.b.a(this.a, this.b.c);
        }
    }

    static {
        a = new SurfaceTexture(-1);
        b = q.f ? 5894 : 1;
    }

    private void a(View view, int i) {
        Handler handler = view.getHandler();
        if (handler == null) {
            a(view, this.c);
        } else {
            handler.postDelayed(new AnonymousClass2(this, view), 1000);
        }
    }

    public final void a(View view) {
        if (!q.g) {
            view.setOnSystemUiVisibilityChangeListener(new AnonymousClass1(this, view));
        }
    }

    public final void a(View view, boolean z) {
        this.c = z;
        view.setSystemUiVisibility(this.c ? view.getSystemUiVisibility() | b : view.getSystemUiVisibility() & (b ^ -1));
    }

    public final boolean a(Camera camera) {
        try {
            camera.setPreviewTexture(a);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public final void b(View view) {
        if (!q.f && this.c) {
            a(view, false);
            this.c = true;
        }
        a(view, (int) LocationStatusCodes.GEOFENCE_NOT_AVAILABLE);
    }
}
