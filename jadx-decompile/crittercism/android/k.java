package crittercism.android;

import com.voxelbusters.nativeplugins.defines.Keys.Scheme;
import java.net.InetAddress;

public final class k {
    InetAddress a;
    String b;
    public String c;
    a d;
    int e;
    boolean f;

    public enum a {
        HTTP(Scheme.HTTP, 80),
        HTTPS(Scheme.HTTPS, 443);
        
        private String c;
        private int d;

        private a(String str, int i) {
            this.c = str;
            this.d = i;
        }
    }

    public k() {
        this.c = "/";
        this.d = null;
        this.e = -1;
        this.f = false;
    }
}
