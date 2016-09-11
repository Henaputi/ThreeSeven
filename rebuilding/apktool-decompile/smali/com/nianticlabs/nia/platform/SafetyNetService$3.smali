.class Lcom/nianticlabs/nia/platform/SafetyNetService$3;
.super Ljava/lang/Object;
.source "SafetyNetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/platform/SafetyNetService;->cancel([B)V
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
    .line 168
    iput-object p1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    iput-object p2, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->val$nonce:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 171
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiState:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$000(Lcom/nianticlabs/nia/platform/SafetyNetService;)Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    move-result-object v3

    sget-object v4, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    if-ne v3, v4, :cond_2

    .line 174
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->val$nonce:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 176
    .local v1, "nonceBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$100(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 177
    const/4 v0, 0x1

    .line 179
    .local v0, "keepLooking":Z
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$200(Lcom/nianticlabs/nia/platform/SafetyNetService;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$200(Lcom/nianticlabs/nia/platform/SafetyNetService;)[B

    move-result-object v3

    iget-object v5, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->val$nonce:[B

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    const/4 v5, 0x0

    # setter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B
    invoke-static {v3, v5}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$202(Lcom/nianticlabs/nia/platform/SafetyNetService;[B)[B

    .line 182
    const/4 v0, 0x0

    .line 186
    :cond_0
    if-eqz v0, :cond_1

    .line 187
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->requestMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$300(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/PendingResult;

    .line 189
    .local v2, "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;>;"
    if-eqz v2, :cond_1

    .line 190
    const/4 v0, 0x0

    .line 191
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->requestMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$300(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    .line 195
    .end local v2    # "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;>;"
    :cond_1
    monitor-exit v4

    .line 205
    .end local v0    # "keepLooking":Z
    .end local v1    # "nonceBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-void

    .line 195
    .restart local v0    # "keepLooking":Z
    .restart local v1    # "nonceBuffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 197
    .end local v0    # "keepLooking":Z
    .end local v1    # "nonceBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$100(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 198
    :try_start_1
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$200(Lcom/nianticlabs/nia/platform/SafetyNetService;)[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B
    invoke-static {v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$200(Lcom/nianticlabs/nia/platform/SafetyNetService;)[B

    move-result-object v3

    iget-object v5, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->val$nonce:[B

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    const/4 v5, 0x0

    # setter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B
    invoke-static {v3, v5}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$202(Lcom/nianticlabs/nia/platform/SafetyNetService;[B)[B

    .line 203
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method
