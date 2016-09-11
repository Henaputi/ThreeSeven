package com.squareup.otto;

import android.os.Looper;

public interface ThreadEnforcer {
    public static final ThreadEnforcer ANY;
    public static final ThreadEnforcer MAIN;

    void enforce(Bus bus);

    static {
        ANY = new ThreadEnforcer() {
            public void enforce(Bus bus) {
            }
        };
        MAIN = new ThreadEnforcer() {
            public void enforce(Bus bus) {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    throw new IllegalStateException("Event bus " + bus + " accessed from non-main thread " + Looper.myLooper());
                }
            }
        };
    }
}
