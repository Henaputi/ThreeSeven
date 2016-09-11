package crittercism.android;

import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class by extends ci {
    private String a;
    private String b;
    private String c;
    private String d;

    public by(String str, String str2) {
        this.a = cg.a.a();
        this.b = ed.a.a();
        this.c = str;
        this.d = str2;
    }

    public final String e() {
        return this.a;
    }

    public final JSONArray a() {
        Map hashMap = new HashMap();
        hashMap.put(Twitter.NAME, this.c);
        hashMap.put("reason", this.d);
        return new JSONArray().put(this.b).put(6).put(new JSONObject(hashMap));
    }
}
