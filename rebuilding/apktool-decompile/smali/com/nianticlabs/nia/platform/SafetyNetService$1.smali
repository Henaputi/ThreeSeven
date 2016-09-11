.class Lcom/nianticlabs/nia/platform/SafetyNetService$1;
.super Ljava/lang/Object;
.source "SafetyNetService.java"

# interfaces
.implements Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/platform/SafetyNetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/platform/SafetyNetService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/platform/SafetyNetService;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$1;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .prologue
    .line 52
    iget-object v1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$1;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    sget-object v2, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    # setter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiState:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;
    invoke-static {v1, v2}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$002(Lcom/nianticlabs/nia/platform/SafetyNetService;Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;)Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    .line 54
    iget-object v1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$1;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$100(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$1;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B
    invoke-static {v1}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$200(Lcom/nianticlabs/nia/platform/SafetyNetService;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$1;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    # getter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B
    invoke-static {v1}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$200(Lcom/nianticlabs/nia/platform/SafetyNetService;)[B

    move-result-object v0

    .line 57
    .local v0, "nonce":[B
    iget-object v1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$1;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    const/4 v3, 0x0

    # setter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B
    invoke-static {v1, v3}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$202(Lcom/nianticlabs/nia/platform/SafetyNetService;[B)[B

    .line 58
    iget-object v1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$1;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    invoke-virtual {v1, v0}, Lcom/nianticlabs/nia/platform/SafetyNetService;->attest([B)V

    .line 60
    .end local v0    # "nonce":[B
    :cond_0
    monitor-exit v2

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$1;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    sget-object v1, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    # setter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiState:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$002(Lcom/nianticlabs/nia/platform/SafetyNetService;Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;)Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    .line 71
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService$1;->this$0:Lcom/nianticlabs/nia/platform/SafetyNetService;

    sget-object v1, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    # setter for: Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiState:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/platform/SafetyNetService;->access$002(Lcom/nianticlabs/nia/platform/SafetyNetService;Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;)Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    .line 66
    return-void
.end method
