package crittercism.android;

import org.json.JSONArray;

public final class bo {
    public JSONArray a;

    public bo(bs bsVar) {
        this.a = new JSONArray();
        for (bq a : bsVar.c()) {
            Object a2 = a.a();
            if (a2 != null) {
                this.a.put(a2);
            }
        }
    }
}
