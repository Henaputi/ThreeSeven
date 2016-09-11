package crittercism.android;

import java.lang.Thread.UncaughtExceptionHandler;

public final class ay implements UncaughtExceptionHandler {
    private UncaughtExceptionHandler a;
    private final az b;

    public ay(az azVar, UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.b = azVar;
        this.a = uncaughtExceptionHandler;
    }

    public final void uncaughtException(Thread thread, Throwable exception) {
        try {
            this.b.a(exception);
            if (this.a != null && !(this.a instanceof ay)) {
                this.a.uncaughtException(Thread.currentThread(), exception);
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            if (!(this.a == null || (this.a instanceof ay))) {
                this.a.uncaughtException(Thread.currentThread(), exception);
            }
        }
    }
}
