package crittercism.android;

import java.util.Locale;

public final class cg {
    public static final cg a;
    private volatile int b;
    private final long c;

    static {
        a = new cg();
    }

    private cg() {
        this.b = 1;
        this.c = System.currentTimeMillis();
    }

    private synchronized int b() {
        int i;
        i = this.b;
        this.b = i + 1;
        return i;
    }

    public final String a() {
        return String.format(Locale.US, "%d.%d.%09d", new Object[]{Integer.valueOf(1), Long.valueOf(this.c), Integer.valueOf(b())});
    }
}
