.class Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;
.super Ljava/lang/Object;
.source "SafetyNetService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/platform/SafetyNetService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/nia/platform/SafetyNetService$2;

.field final synthetic val$nonceBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/platform/SafetyNetService$2;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/nia/platform/SafetyNetService$2;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;->this$1:Lcom/nianticlabs/nia/platform/SafetyNetService$2;

    iput-object p2, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;->val$nonceBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;

    invoke-virtual {p0, p1}, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;->onResult(Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;)V
    .locals 6
    .param p1, "result"    # Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;

    .prologue
    const/4 v5, 0x0

    .line 123
    iget-object v2, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;->this$1:Lcom/nianticlabs/nia/platform/SafetyNetService$2;

    iget-object v2, v2, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$100(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;->this$1:Lcom/nianticlabs/nia/platform/SafetyNetService$2;

    iget-object v2, v2, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->requestMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$300(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;->val$nonceBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-interface {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 128
    .local v1, "status":Lcom/google/android/gms/common/api/Status;
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-interface {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;->getJwsResult()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "jwsResult":Ljava/lang/String;
    # invokes: Lcom/nianticlabs/nia/platform/SafetyNetService;->checkResult(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$500(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;->this$1:Lcom/nianticlabs/nia/platform/SafetyNetService$2;

    iget-object v2, v2, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;->this$1:Lcom/nianticlabs/nia/platform/SafetyNetService$2;

    iget-object v3, v3, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->val$nonce:[B

    # invokes: Lcom/nianticlabs/nia/platform/SafetyNetService;->attestResponse([BLjava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$600(Lcom/nianticlabs/nia/platform/SafetyNetService;[BLjava/lang/String;)V

    .line 142
    .end local v0    # "jwsResult":Ljava/lang/String;
    :goto_0
    return-void

    .line 125
    .end local v1    # "status":Lcom/google/android/gms/common/api/Status;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 136
    .restart local v0    # "jwsResult":Ljava/lang/String;
    .restart local v1    # "status":Lcom/google/android/gms/common/api/Status;
    :cond_0
    iget-object v2, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;->this$1:Lcom/nianticlabs/nia/platform/SafetyNetService$2;

    iget-object v2, v2, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;->this$1:Lcom/nianticlabs/nia/platform/SafetyNetService$2;

    iget-object v3, v3, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->val$nonce:[B

    # invokes: Lcom/nianticlabs/nia/platform/SafetyNetService;->attestResponse([BLjava/lang/String;)V
    invoke-static {v2, v3, v5}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$600(Lcom/nianticlabs/nia/platform/SafetyNetService;[BLjava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v0    # "jwsResult":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;->this$1:Lcom/nianticlabs/nia/platform/SafetyNetService$2;

    iget-object v2, v2, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    iget-object v3, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$2$1;->this$1:Lcom/nianticlabs/nia/platform/SafetyNetService$2;

    iget-object v3, v3, Lcom/nianticlabs/nia/platform/SafetyNetService$2;->val$nonce:[B

    # invokes: Lcom/nianticlabs/nia/platform/SafetyNetService;->attestResponse([BLjava/lang/String;)V
    invoke-static {v2, v3, v5}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$600(Lcom/nianticlabs/nia/platform/SafetyNetService;[BLjava/lang/String;)V

    goto :goto_0
.end method
