package com.unity3d.player;

import android.app.Activity;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;

public final class o {
    private final Bundle a;

    public o(Activity activity) {
        Bundle bundle = Bundle.EMPTY;
        PackageManager packageManager = activity.getPackageManager();
        ComponentName componentName = activity.getComponentName();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            if (!(activityInfo == null || activityInfo.metaData == null)) {
                bundle = activityInfo.metaData;
            }
        } catch (NameNotFoundException e) {
            m.Log(6, "Unable to retreive meta data for activity '" + componentName + "'");
        }
        this.a = new Bundle(bundle);
    }

    private static String a(String str) {
        return String.format("%s.%s", new Object[]{"unityplayer", str});
    }

    public final boolean a() {
        return this.a.getBoolean(a("ForwardNativeEventsToDalvik"));
    }
}
