package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;

public class zzd implements FusedLocationProviderApi {

    private static abstract class zza extends com.google.android.gms.location.LocationServices.zza<Status> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        public /* synthetic */ Result zzb(Status status) {
            return zzd(status);
        }

        public Status zzd(Status status) {
            return status;
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.1 */
    class AnonymousClass1 extends zza {
        final /* synthetic */ LocationRequest zzaFd;
        final /* synthetic */ LocationListener zzaFe;
        final /* synthetic */ zzd zzaFf;

        AnonymousClass1(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFd = locationRequest;
            this.zzaFe = locationListener;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaFd, this.zzaFe, null, new com.google.android.gms.location.internal.zzg.zza() {
                final /* synthetic */ AnonymousClass1 zzaFg;

                {
                    this.zzaFg = r1;
                }

                public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                    this.zzaFg.zzb(fusedLocationProviderResult.getStatus());
                }
            });
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.2 */
    class AnonymousClass2 extends zza {
        final /* synthetic */ zzd zzaFf;
        final /* synthetic */ LocationCallback zzaFh;

        AnonymousClass2(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, LocationCallback locationCallback) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFh = locationCallback;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaFh, new com.google.android.gms.location.internal.zzg.zza() {
                final /* synthetic */ AnonymousClass2 zzaFi;

                {
                    this.zzaFi = r1;
                }

                public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                    this.zzaFi.zzb(fusedLocationProviderResult.getStatus());
                }
            });
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.3 */
    class AnonymousClass3 extends zza {
        final /* synthetic */ zzd zzaFf;
        final /* synthetic */ boolean zzaFj;

        AnonymousClass3(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, boolean z) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFj = z;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zzah(this.zzaFj);
            zzb(Status.zzabb);
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.4 */
    class AnonymousClass4 extends zza {
        final /* synthetic */ zzd zzaFf;
        final /* synthetic */ Location zzaFk;

        AnonymousClass4(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, Location location) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFk = location;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zzc(this.zzaFk);
            zzb(Status.zzabb);
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.5 */
    class AnonymousClass5 extends zza {
        final /* synthetic */ LocationRequest zzaFd;
        final /* synthetic */ LocationListener zzaFe;
        final /* synthetic */ zzd zzaFf;
        final /* synthetic */ Looper zzaFl;

        AnonymousClass5(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener, Looper looper) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFd = locationRequest;
            this.zzaFe = locationListener;
            this.zzaFl = looper;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaFd, this.zzaFe, this.zzaFl, new com.google.android.gms.location.internal.zzg.zza() {
                final /* synthetic */ AnonymousClass5 zzaFm;

                {
                    this.zzaFm = r1;
                }

                public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                    this.zzaFm.zzb(fusedLocationProviderResult.getStatus());
                }
            });
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.6 */
    class AnonymousClass6 extends zza {
        final /* synthetic */ LocationRequest zzaFd;
        final /* synthetic */ zzd zzaFf;
        final /* synthetic */ LocationCallback zzaFh;
        final /* synthetic */ Looper zzaFl;

        AnonymousClass6(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFd = locationRequest;
            this.zzaFh = locationCallback;
            this.zzaFl = looper;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(LocationRequestInternal.zzb(this.zzaFd), this.zzaFh, this.zzaFl, new com.google.android.gms.location.internal.zzg.zza() {
                final /* synthetic */ AnonymousClass6 zzaFn;

                {
                    this.zzaFn = r1;
                }

                public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                    this.zzaFn.zzb(fusedLocationProviderResult.getStatus());
                }
            });
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.7 */
    class AnonymousClass7 extends zza {
        final /* synthetic */ PendingIntent zzaEY;
        final /* synthetic */ LocationRequest zzaFd;
        final /* synthetic */ zzd zzaFf;

        AnonymousClass7(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, LocationRequest locationRequest, PendingIntent pendingIntent) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFd = locationRequest;
            this.zzaEY = pendingIntent;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaFd, this.zzaEY, new com.google.android.gms.location.internal.zzg.zza() {
                final /* synthetic */ AnonymousClass7 zzaFo;

                {
                    this.zzaFo = r1;
                }

                public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                    this.zzaFo.zzb(fusedLocationProviderResult.getStatus());
                }
            });
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.8 */
    class AnonymousClass8 extends zza {
        final /* synthetic */ LocationListener zzaFe;
        final /* synthetic */ zzd zzaFf;

        AnonymousClass8(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, LocationListener locationListener) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFe = locationListener;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaFe, new com.google.android.gms.location.internal.zzg.zza() {
                final /* synthetic */ AnonymousClass8 zzaFp;

                {
                    this.zzaFp = r1;
                }

                public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                    this.zzaFp.zzb(fusedLocationProviderResult.getStatus());
                }
            });
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.9 */
    class AnonymousClass9 extends zza {
        final /* synthetic */ PendingIntent zzaEY;
        final /* synthetic */ zzd zzaFf;

        AnonymousClass9(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaEY = pendingIntent;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaEY, new com.google.android.gms.location.internal.zzg.zza() {
                final /* synthetic */ AnonymousClass9 zzaFq;

                {
                    this.zzaFq = r1;
                }

                public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                    this.zzaFq.zzb(fusedLocationProviderResult.getStatus());
                }
            });
        }
    }

    public Location getLastLocation(GoogleApiClient client) {
        try {
            return LocationServices.zzd(client).getLastLocation();
        } catch (Exception e) {
            return null;
        }
    }

    public LocationAvailability getLocationAvailability(GoogleApiClient client) {
        try {
            return LocationServices.zzd(client).zzwD();
        } catch (Exception e) {
            return null;
        }
    }

    public PendingResult<Status> removeLocationUpdates(GoogleApiClient client, PendingIntent callbackIntent) {
        return client.zzb(new AnonymousClass9(this, client, callbackIntent));
    }

    public PendingResult<Status> removeLocationUpdates(GoogleApiClient client, LocationCallback callback) {
        return client.zzb(new AnonymousClass2(this, client, callback));
    }

    public PendingResult<Status> removeLocationUpdates(GoogleApiClient client, LocationListener listener) {
        return client.zzb(new AnonymousClass8(this, client, listener));
    }

    public PendingResult<Status> requestLocationUpdates(GoogleApiClient client, LocationRequest request, PendingIntent callbackIntent) {
        return client.zzb(new AnonymousClass7(this, client, request, callbackIntent));
    }

    public PendingResult<Status> requestLocationUpdates(GoogleApiClient client, LocationRequest request, LocationCallback callback, Looper looper) {
        return client.zzb(new AnonymousClass6(this, client, request, callback, looper));
    }

    public PendingResult<Status> requestLocationUpdates(GoogleApiClient client, LocationRequest request, LocationListener listener) {
        return client.zzb(new AnonymousClass1(this, client, request, listener));
    }

    public PendingResult<Status> requestLocationUpdates(GoogleApiClient client, LocationRequest request, LocationListener listener, Looper looper) {
        return client.zzb(new AnonymousClass5(this, client, request, listener, looper));
    }

    public PendingResult<Status> setMockLocation(GoogleApiClient client, Location mockLocation) {
        return client.zzb(new AnonymousClass4(this, client, mockLocation));
    }

    public PendingResult<Status> setMockMode(GoogleApiClient client, boolean isMockMode) {
        return client.zzb(new AnonymousClass3(this, client, isMockMode));
    }
}
