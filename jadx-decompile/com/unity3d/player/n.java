package com.unity3d.player;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.LinkedList;
import java.util.List;

public final class n implements i {

    /* renamed from: com.unity3d.player.n.1 */
    class AnonymousClass1 extends Fragment {
        final /* synthetic */ List a;
        final /* synthetic */ FragmentManager b;
        final /* synthetic */ Runnable c;
        final /* synthetic */ n d;

        AnonymousClass1(n nVar, List list, FragmentManager fragmentManager, Runnable runnable) {
            this.d = nVar;
            this.a = list;
            this.b = fragmentManager;
            this.c = runnable;
        }

        public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
            if (i == 15881) {
                int i2 = 0;
                while (i2 < strArr.length && i2 < iArr.length) {
                    m.Log(4, strArr[i2] + (iArr[i2] == 0 ? " granted" : " denied"));
                    i2++;
                }
                FragmentTransaction beginTransaction = this.b.beginTransaction();
                beginTransaction.remove(this);
                beginTransaction.commit();
                this.c.run();
            }
        }

        public final void onStart() {
            super.onStart();
            requestPermissions((String[]) this.a.toArray(new String[0]), 15881);
        }
    }

    private static boolean a(PackageItemInfo packageItemInfo) {
        try {
            return packageItemInfo.metaData.getBoolean("unityplayer.SkipPermissionsDialog");
        } catch (Exception e) {
            return false;
        }
    }

    public final void a(Activity activity, Runnable runnable) {
        if (activity != null) {
            PackageManager packageManager = activity.getPackageManager();
            try {
                PackageItemInfo activityInfo = packageManager.getActivityInfo(activity.getComponentName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                PackageItemInfo applicationInfo = packageManager.getApplicationInfo(activity.getPackageName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                if (a(activityInfo) || a(applicationInfo)) {
                    runnable.run();
                    return;
                }
            } catch (Exception e) {
            }
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(activity.getPackageName(), AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD);
                if (packageInfo.requestedPermissions == null) {
                    packageInfo.requestedPermissions = new String[0];
                }
                List linkedList = new LinkedList();
                for (String str : packageInfo.requestedPermissions) {
                    try {
                        if (packageManager.getPermissionInfo(str, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS).protectionLevel == 1 && activity.checkCallingOrSelfPermission(str) != 0) {
                            linkedList.add(str);
                        }
                    } catch (NameNotFoundException e2) {
                        m.Log(5, "Failed to get permission info for " + str + ", manifest likely missing custom permission declaration");
                        m.Log(5, "Permission " + str + " ignored");
                    }
                }
                if (linkedList.isEmpty()) {
                    runnable.run();
                    return;
                }
                FragmentManager fragmentManager = activity.getFragmentManager();
                Fragment anonymousClass1 = new AnonymousClass1(this, linkedList, fragmentManager, runnable);
                FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
                beginTransaction.add(0, anonymousClass1);
                beginTransaction.commit();
            } catch (Exception e3) {
                m.Log(6, "Unable to query for permission: " + e3.getMessage());
            }
        }
    }
}
