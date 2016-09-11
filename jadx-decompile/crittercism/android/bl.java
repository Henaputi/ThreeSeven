package crittercism.android;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class bl extends ci {
    private String a;
    private String b;
    private a c;

    public enum a {
        FOREGROUND("foregrounded"),
        BACKGROUND("backgrounded");
        
        private String c;

        private a(String str) {
            this.c = str;
        }

        public final String a() {
            return this.c;
        }
    }

    public bl(a aVar) {
        this.a = cg.a.a();
        this.b = ed.a.a();
        this.c = aVar;
    }

    public final String e() {
        return this.a;
    }

    public final JSONArray a() {
        Map hashMap = new HashMap();
        hashMap.put(SendEvent.EVENT, this.c.a());
        return new JSONArray().put(this.b).put(3).put(new JSONObject(hashMap));
    }
}
