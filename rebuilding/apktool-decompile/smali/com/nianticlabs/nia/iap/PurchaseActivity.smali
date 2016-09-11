.class public Lcom/nianticlabs/nia/iap/PurchaseActivity;
.super Landroid/app/Activity;
.source "PurchaseActivity.java"


# static fields
.field public static final REQUEST_PURCHASE_RESULT:I = 0x2719

.field private static TAG:Ljava/lang/String;


# instance fields
.field private billingProvider:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "PurchaseActivity"

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 54
    packed-switch p1, :pswitch_data_0

    .line 59
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unandled requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/PurchaseActivity;->finish()V

    .line 63
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->billingProvider:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-virtual {v0, p2, p3}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->forwardedOnActivityResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x2719
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->billingProvider:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .line 24
    invoke-static {}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getInstance()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 25
    .local v0, "weakGoogleInAppBillingProvider":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;>;"
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    iput-object v1, p0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->billingProvider:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .line 29
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 36
    .local v2, "resultCode":I
    if-eqz v2, :cond_0

    .line 37
    sget-object v3, Lcom/nianticlabs/nia/iap/PurchaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Google Play Services not available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/PurchaseActivity;->finish()V

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v3, p0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->billingProvider:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    if-nez v3, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/PurchaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 44
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/PurchaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "mainActivityIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/nianticlabs/nia/iap/PurchaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 47
    .end local v0    # "mainActivityIntent":Landroid/content/Intent;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    iget-object v3, p0, Lcom/nianticlabs/nia/iap/PurchaseActivity;->billingProvider:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-virtual {v3, p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->startBuyIntent(Landroid/app/Activity;)V

    goto :goto_0
.end method
