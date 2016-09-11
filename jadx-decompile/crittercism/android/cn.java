package crittercism.android;

public final class cn {
    public int a;
    public int b;

    public cn(Throwable th) {
        this.a = co.Android.ordinal();
        this.b = cm.OK.ordinal();
        if (th != null) {
            this.a = co.a(th);
            if (this.a == co.Android.ordinal()) {
                this.b = cm.a(th).a();
            } else {
                this.b = Integer.parseInt(th.getMessage());
            }
        }
    }
}
