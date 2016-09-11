package crittercism.android;

import com.google.android.gms.common.GooglePlayServicesUtil;
import crittercism.android.do.a.a;
import crittercism.android.do.b;
import java.util.HashMap;
import java.util.Map;

public final class dp {
    private static Map a;

    static {
        Map hashMap = new HashMap();
        a = hashMap;
        hashMap.put("com.amazon.venezia", new a());
        a.put(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE, new b.a());
    }

    public static dn a(String str) {
        if (str == null || !a.containsKey(str)) {
            return null;
        }
        return (dn) a.get(str);
    }
}
