.class Lcom/nianticlabs/nia/platform/SafetyNetService$2;
.super Ljava/lang/Object;
.source "SafetyNetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/platform/SafetyNetService;->attest([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

.field final synthetic val$nonce:[B


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/platform/SafetyNetService;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/platform/SafetyNetService;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    iput-object p2, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->val$nonce:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 106
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiState:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$000(Lcom/nianticlabs/nia/platform/SafetyNetService;)Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    move-result-object v3

    sget-object v4, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    if-ne v3, v4, :cond_2

    .line 109
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->val$nonce:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    .local v0, "nonceBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$100(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->requestMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$300(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/PendingResult;

    .line 114
    .local v1, "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;>;"
    if-nez v1, :cond_0

    .line 115
    sget-object v3, Lcom/google/android/gms/safetynet/SafetyNet;->SafetyNetApi:Lcom/google/android/gms/safetynet/SafetyNetApi;

    iget-object v5, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;
    invoke-static {v5}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$400(Lcom/nianticlabs/nia/platform/SafetyNetService;)Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->getClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v5

    iget-object v6, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->val$nonce:[B

    invoke-interface {v3, v5, v6}, Lcom/google/android/gms/safetynet/SafetyNetApi;->attest(Lcom/google/android/gms/common/api/GoogleApiClient;[B)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    .line 117
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->requestMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$300(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v3, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;

    invoke-direct {v3, p0, v0}, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;-><init>(Lcom/nianticlabs/nia/platform/SafetyNetService$2;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 145
    :cond_0
    monitor-exit v4

    .line 162
    .end local v0    # "nonceBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;>;"
    :cond_1
    :goto_0
    return-void

    .line 145
    .restart local v0    # "nonceBuffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 148
    .end local v0    # "nonceBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    const/4 v2, 0x0

    .line 150
    .local v2, "sendFailResponse":Z
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$100(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 151
    :try_start_1
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$200(Lcom/nianticlabs/nia/platform/SafetyNetService;)[B

    move-result-object v3

    if-nez v3, :cond_3

    .line 152
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    iget-object v5, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->val$nonce:[B

    # setter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B
    invoke-static {v3, v5}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$202(Lcom/nianticlabs/nia/platform/SafetyNetService;[B)[B

    .line 156
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    if-eqz v2, :cond_1

    .line 159
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    iget-object v4, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->val$nonce:[B

    const/4 v5, 0x0

    # invokes: Lcom/nianticlabs/nia/platform/SafetyNetService;->attestResponse([BLjava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$600(Lcom/nianticlabs/nia/platform/SafetyNetService;[BLjava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 156
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method
