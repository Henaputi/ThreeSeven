package net.gree.unitywebview;

import android.webkit.JavascriptInterface;
import com.unity3d.player.UnityPlayer;

/* compiled from: CWebViewPlugin */
class CWebViewPluginInterface {
    private String mGameObject;
    private CWebViewPlugin mPlugin;

    /* compiled from: CWebViewPlugin */
    /* renamed from: net.gree.unitywebview.CWebViewPluginInterface.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ String val$message;
        final /* synthetic */ String val$method;

        AnonymousClass1(String str, String str2) {
            this.val$method = str;
            this.val$message = str2;
        }

        public void run() {
            if (CWebViewPluginInterface.this.mPlugin.IsInitialized()) {
                UnityPlayer.UnitySendMessage(CWebViewPluginInterface.this.mGameObject, this.val$method, this.val$message);
            }
        }
    }

    public CWebViewPluginInterface(CWebViewPlugin plugin, String gameObject) {
        this.mPlugin = plugin;
        this.mGameObject = gameObject;
    }

    @JavascriptInterface
    public void call(String message) {
        call("CallFromJS", message);
    }

    public void call(String method, String message) {
        UnityPlayer.currentActivity.runOnUiThread(new AnonymousClass1(method, message));
    }
}
