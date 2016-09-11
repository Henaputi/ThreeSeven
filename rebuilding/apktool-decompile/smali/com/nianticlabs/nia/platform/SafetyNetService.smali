.class public Lcom/nianticlabs/nia/platform/SafetyNetService;
.super Lcom/nianticlabs/nia/contextservice/ContextService;
.source "SafetyNetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;
    }
.end annotation


# instance fields
.field private googleApiListener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

.field private final googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

.field private googleApiState:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

.field private final lock:Ljava/lang/Object;

.field private queuedNonce:[B

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeClassPointer"    # J

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticlabs/nia/contextservice/ContextService;-><init>(Landroid/content/Context;J)V

    .line 31
    sget-object v0, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    iput-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiState:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->requestMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->lock:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/nianticlabs/nia/platform/SafetyNetService$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/platform/SafetyNetService$1;-><init>(Lcom/nianticlabs/nia/platform/SafetyNetService;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiListener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    .line 41
    new-instance v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-direct {v0, p1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    .line 43
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiListener:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->setListener(Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;)V

    .line 45
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->builder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/safetynet/SafetyNet;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 46
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->build()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/platform/SafetyNetService;)Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/platform/SafetyNetService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiState:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nianticlabs/nia/platform/SafetyNetService;Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;)Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/platform/SafetyNetService;
    .param p1, "x1"    # Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiState:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/platform/SafetyNetService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticlabs/nia/platform/SafetyNetService;)[B
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/platform/SafetyNetService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B

    return-object v0
.end method

.method static synthetic access$202(Lcom/nianticlabs/nia/platform/SafetyNetService;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/platform/SafetyNetService;
    .param p1, "x1"    # [B

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->queuedNonce:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/nianticlabs/nia/platform/SafetyNetService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/platform/SafetyNetService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->requestMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nianticlabs/nia/platform/SafetyNetService;)Lcom/nianticlabs/nia/contextservice/GoogleApiManager;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/platform/SafetyNetService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/nianticlabs/nia/platform/SafetyNetService;->checkResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/nianticlabs/nia/platform/SafetyNetService;[BLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/platform/SafetyNetService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/nia/platform/SafetyNetService;->attestResponse([BLjava/lang/String;)V

    return-void
.end method

.method private attestResponse([BLjava/lang/String;)V
    .locals 2
    .param p1, "nonce"    # [B
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/nia/platform/SafetyNetService;->nativeAttestResponse([BLjava/lang/String;)V

    .line 232
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static checkResult(Ljava/lang/String;)Z
    .locals 7
    .param p0, "jwsResult"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 82
    :try_start_0
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "parts":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 85
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 86
    .local v0, "dataFields":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, "root":Lorg/json/JSONObject;
    const-string v5, "error"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 98
    .end local v0    # "dataFields":Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "root":Lorg/json/JSONObject;
    :goto_0
    return v3

    .line 90
    .restart local v0    # "dataFields":Ljava/lang/String;
    .restart local v1    # "parts":[Ljava/lang/String;
    .restart local v2    # "root":Lorg/json/JSONObject;
    :cond_0
    const-string v3, "SafetyNetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got error from SafetyNet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 91
    goto :goto_0

    .line 94
    .end local v0    # "dataFields":Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    :cond_1
    move v3, v4

    .line 98
    goto :goto_0
.end method

.method private native nativeAttestResponse([BLjava/lang/String;)V
.end method


# virtual methods
.method public attest([B)V
    .locals 1
    .param p1, "nonce"    # [B

    .prologue
    .line 103
    new-instance v0, Lcom/nianticlabs/nia/platform/SafetyNetService$2;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/nia/platform/SafetyNetService$2;-><init>(Lcom/nianticlabs/nia/platform/SafetyNetService;[B)V

    invoke-static {v0}, Lcom/nianticlabs/nia/platform/SafetyNetService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public cancel([B)V
    .locals 1
    .param p1, "nonce"    # [B

    .prologue
    .line 168
    new-instance v0, Lcom/nianticlabs/nia/platform/SafetyNetService$3;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/nia/platform/SafetyNetService$3;-><init>(Lcom/nianticlabs/nia/platform/SafetyNetService;[B)V

    invoke-static {v0}, Lcom/nianticlabs/nia/platform/SafetyNetService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->onPause()V

    .line 227
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->onResume()V

    .line 222
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->onStart()V

    .line 212
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nianticlabs/nia/platform/SafetyNetService;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->onStop()V

    .line 217
    return-void
.end method
