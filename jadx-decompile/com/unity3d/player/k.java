package com.unity3d.player;

import android.app.Presentation;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManager.DisplayListener;
import android.os.Bundle;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;

public final class k implements g {
    private Object a;
    private Presentation b;
    private DisplayListener c;

    /* renamed from: com.unity3d.player.k.1 */
    class AnonymousClass1 implements DisplayListener {
        final /* synthetic */ UnityPlayer a;
        final /* synthetic */ k b;

        AnonymousClass1(k kVar, UnityPlayer unityPlayer) {
            this.b = kVar;
            this.a = unityPlayer;
        }

        public final void onDisplayAdded(int i) {
            this.a.displayChanged(-1, null);
        }

        public final void onDisplayChanged(int i) {
            this.a.displayChanged(-1, null);
        }

        public final void onDisplayRemoved(int i) {
            this.a.displayChanged(-1, null);
        }
    }

    /* renamed from: com.unity3d.player.k.2 */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ Context a;
        final /* synthetic */ Display b;
        final /* synthetic */ UnityPlayer c;
        final /* synthetic */ k d;

        /* renamed from: com.unity3d.player.k.2.1 */
        class AnonymousClass1 extends Presentation {
            final /* synthetic */ AnonymousClass2 a;

            AnonymousClass1(AnonymousClass2 anonymousClass2, Context context, Display display) {
                this.a = anonymousClass2;
                super(context, display);
            }

            protected final void onCreate(Bundle bundle) {
                View surfaceView = new SurfaceView(this.a.a);
                surfaceView.getHolder().addCallback(new Callback() {
                    final /* synthetic */ AnonymousClass1 a;

                    {
                        this.a = r1;
                    }

                    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                        this.a.a.c.displayChanged(1, surfaceHolder.getSurface());
                    }

                    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
                        this.a.a.c.displayChanged(1, surfaceHolder.getSurface());
                    }

                    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                        this.a.a.c.displayChanged(1, null);
                    }
                });
                setContentView(surfaceView);
            }

            public final void onDisplayRemoved() {
                dismiss();
                synchronized (this.a.d.a) {
                    this.a.d.b = null;
                }
            }
        }

        AnonymousClass2(k kVar, Context context, Display display, UnityPlayer unityPlayer) {
            this.d = kVar;
            this.a = context;
            this.b = display;
            this.c = unityPlayer;
        }

        public final void run() {
            synchronized (this.d.a) {
                if (this.d.b != null) {
                    this.d.b.dismiss();
                }
                this.d.b = new AnonymousClass1(this, this.a, this.b);
                this.d.b.show();
            }
        }
    }

    public k() {
        this.a = new Object[0];
    }

    public final void a(Context context) {
        if (this.c != null) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                displayManager.unregisterDisplayListener(this.c);
            }
        }
    }

    public final void a(UnityPlayer unityPlayer, Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            displayManager.registerDisplayListener(new AnonymousClass1(this, unityPlayer), null);
        }
    }

    public final boolean a(UnityPlayer unityPlayer, Context context, int i) {
        synchronized (this.a) {
            Display display;
            if (this.b != null && this.b.isShowing()) {
                display = this.b.getDisplay();
                if (display != null && display.getDisplayId() == i) {
                    return true;
                }
            }
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager == null) {
                return false;
            }
            display = displayManager.getDisplay(i);
            if (display == null) {
                return false;
            }
            unityPlayer.b(new AnonymousClass2(this, context, display, unityPlayer));
            return true;
        }
    }
}
