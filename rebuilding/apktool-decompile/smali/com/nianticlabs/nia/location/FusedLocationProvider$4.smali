.class Lcom/nianticlabs/nia/location/FusedLocationProvider$4;
.super Lcom/google/android/gms/location/LocationCallback;
.source "FusedLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/location/FusedLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/location/FusedLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/location/FusedLocationProvider;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2
    .param p1, "locationAvailability"    # Lcom/google/android/gms/location/LocationAvailability;

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->RUNNING:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->PERMISSION_DENIED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    goto :goto_0
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 6
    .param p1, "result"    # Lcom/google/android/gms/location/LocationResult;

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    .line 220
    .local v2, "location":Landroid/location/Location;
    sget-object v4, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v5, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    .line 221
    # getter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;
    invoke-static {v5}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$400(Lcom/nianticlabs/nia/location/FusedLocationProvider;)Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->getClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLocationAvailability(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v3

    .line 223
    .local v3, "locationAvailability":Lcom/google/android/gms/location/LocationAvailability;
    if-eqz v3, :cond_1

    .line 224
    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v0

    .line 226
    .local v0, "isValidLocation":Z
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 231
    iget-object v4, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    # getter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    invoke-static {v4}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$500(Lcom/nianticlabs/nia/location/FusedLocationProvider;)Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    move-result-object v1

    .line 232
    .local v1, "listener":Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    if-eqz v1, :cond_0

    .line 233
    invoke-interface {v1, v2}, Lcom/nianticlabs/nia/location/Provider$ProviderListener;->onProviderLocation(Landroid/location/Location;)V

    .line 236
    .end local v1    # "listener":Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    :cond_0
    return-void

    .line 224
    .end local v0    # "isValidLocation":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
