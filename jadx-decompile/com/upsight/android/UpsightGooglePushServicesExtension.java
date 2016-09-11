package com.upsight.android;

import com.upsight.android.googlepushservices.UpsightGooglePushServices.OnRegisterListener;
import com.upsight.android.googlepushservices.UpsightGooglePushServicesApi;
import com.upsight.android.googlepushservices.UpsightGooglePushServicesComponent;
import com.upsight.android.googlepushservices.internal.DaggerGooglePushServicesComponent;
import com.upsight.android.googlepushservices.internal.PushConfigManager;
import com.upsight.android.googlepushservices.internal.PushConfigManager.Config;
import com.upsight.android.googlepushservices.internal.PushModule;
import java.io.IOException;
import javax.inject.Inject;
import rx.functions.Action1;

public class UpsightGooglePushServicesExtension extends UpsightExtension<UpsightGooglePushServicesComponent, UpsightGooglePushServicesApi> {
    public static final String EXTENSION_NAME = "com.upsight.extension.googlepushservices";
    private static final String LOG_TAG;
    @Inject
    PushConfigManager mPushConfigManager;
    @Inject
    UpsightGooglePushServicesApi mUpsightPush;

    /* renamed from: com.upsight.android.UpsightGooglePushServicesExtension.1 */
    class AnonymousClass1 implements Action1<Config> {
        final /* synthetic */ UpsightContext val$upsight;

        AnonymousClass1(UpsightContext upsightContext) {
            this.val$upsight = upsightContext;
        }

        public void call(Config config) {
            if (config.autoRegister) {
                UpsightGooglePushServicesExtension.this.mUpsightPush.register(new OnRegisterListener() {
                    public void onSuccess(String registrationId) {
                        AnonymousClass1.this.val$upsight.getLogger().d(UpsightGooglePushServicesExtension.LOG_TAG, "Auto-registered for push notifications with registrationId=" + registrationId, new Object[0]);
                    }

                    public void onFailure(UpsightException e) {
                        AnonymousClass1.this.val$upsight.getLogger().e(UpsightGooglePushServicesExtension.LOG_TAG, "Failed to auto-register for push notifications", e);
                    }
                });
            } else {
                this.val$upsight.getLogger().d(UpsightGooglePushServicesExtension.LOG_TAG, "Skipping auto-registration of push notifications", new Object[0]);
            }
        }
    }

    static {
        LOG_TAG = UpsightGooglePushServicesExtension.class.getSimpleName();
    }

    UpsightGooglePushServicesExtension() {
    }

    protected UpsightGooglePushServicesComponent onResolve(UpsightContext upsight) {
        return DaggerGooglePushServicesComponent.builder().pushModule(new PushModule(upsight)).build();
    }

    public UpsightGooglePushServicesApi getApi() {
        return this.mUpsightPush;
    }

    protected void onPostCreate(UpsightContext upsight) {
        try {
            this.mPushConfigManager.fetchCurrentConfigObservable().subscribeOn(upsight.getCoreComponent().subscribeOnScheduler()).observeOn(upsight.getCoreComponent().observeOnScheduler()).subscribe(new AnonymousClass1(upsight));
        } catch (IOException e) {
            upsight.getLogger().e(LOG_TAG, "Failed to fetch push configurations", e);
        }
    }
}
