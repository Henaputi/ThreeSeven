package crittercism.android;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class bu implements bv {
    private Map a;

    public final /* synthetic */ Object b() {
        return a();
    }

    public bu() {
        this.a = new HashMap();
    }

    public final bu a(bw bwVar) {
        if (bwVar.b() != null) {
            this.a.put(bwVar.a(), bwVar.b());
        }
        return this;
    }

    public final JSONObject a() {
        return new JSONObject(this.a);
    }
}
