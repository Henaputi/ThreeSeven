package crittercism.android;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class bj extends ci {
    private String a;
    private String b;
    private a c;
    private String d;

    public enum a {
        ACTIVATED,
        DEACTIVATED
    }

    public bj(a aVar, String str) {
        this.a = cg.a.a();
        this.b = ed.a.a();
        this.c = aVar;
        this.d = str;
    }

    public final String e() {
        return this.a;
    }

    public final JSONArray a() {
        Map hashMap = new HashMap();
        hashMap.put(SendEvent.EVENT, Integer.valueOf(this.c.ordinal()));
        hashMap.put("viewName", this.d);
        return new JSONArray().put(this.b).put(5).put(new JSONObject(hashMap));
    }
}
