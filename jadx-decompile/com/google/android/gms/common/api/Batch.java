package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult.zza;
import com.google.android.gms.internal.zzlc;
import java.util.ArrayList;
import java.util.List;

public final class Batch extends zzlc<BatchResult> {
    private boolean zzaaA;
    private final PendingResult<?>[] zzaaB;
    private int zzaay;
    private boolean zzaaz;
    private final Object zzpd;

    public static final class Builder {
        private GoogleApiClient zzVs;
        private List<PendingResult<?>> zzaaD;

        public Builder(GoogleApiClient googleApiClient) {
            this.zzaaD = new ArrayList();
            this.zzVs = googleApiClient;
        }

        public <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            BatchResultToken<R> batchResultToken = new BatchResultToken(this.zzaaD.size());
            this.zzaaD.add(pendingResult);
            return batchResultToken;
        }

        public Batch build() {
            return new Batch(this.zzVs, null);
        }
    }

    private Batch(List<PendingResult<?>> pendingResultList, GoogleApiClient apiClient) {
        super(apiClient);
        this.zzpd = new Object();
        this.zzaay = pendingResultList.size();
        this.zzaaB = new PendingResult[this.zzaay];
        for (int i = 0; i < pendingResultList.size(); i++) {
            PendingResult pendingResult = (PendingResult) pendingResultList.get(i);
            this.zzaaB[i] = pendingResult;
            pendingResult.zza(new zza() {
                final /* synthetic */ Batch zzaaC;

                {
                    this.zzaaC = r1;
                }

                public void zzt(Status status) {
                    synchronized (this.zzaaC.zzpd) {
                        if (this.zzaaC.isCanceled()) {
                            return;
                        }
                        if (status.isCanceled()) {
                            this.zzaaC.zzaaA = true;
                        } else if (!status.isSuccess()) {
                            this.zzaaC.zzaaz = true;
                        }
                        this.zzaaC.zzaay = this.zzaaC.zzaay - 1;
                        if (this.zzaaC.zzaay == 0) {
                            if (this.zzaaC.zzaaA) {
                                super.cancel();
                            } else {
                                this.zzaaC.zzb(new BatchResult(this.zzaaC.zzaaz ? new Status(13) : Status.zzabb, this.zzaaC.zzaaB));
                            }
                        }
                    }
                }
            });
        }
    }

    public void cancel() {
        super.cancel();
        for (PendingResult cancel : this.zzaaB) {
            cancel.cancel();
        }
    }

    public BatchResult createFailedResult(Status status) {
        return new BatchResult(status, this.zzaaB);
    }

    public /* synthetic */ Result zzb(Status status) {
        return createFailedResult(status);
    }
}
