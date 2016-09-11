package crittercism.android;

public final class cv {
    private long a;
    private long b;

    public cv(long j) {
        this.a = 0;
        this.b = j;
    }

    public final synchronized boolean a() {
        return System.nanoTime() - this.a > this.b;
    }

    public final synchronized void b() {
        this.a = System.nanoTime();
    }
}
