.class public Lcom/mopub/volley/ExecutorDelivery;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/mopub/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/mopub/volley/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/volley/ExecutorDelivery$1;-><init>(Lcom/mopub/volley/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mopub/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/mopub/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    .line 51
    return-void
.end method


# virtual methods
.method public postError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V
    .locals 4
    .param p2, "error"    # Lcom/mopub/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;",
            "Lcom/mopub/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    const-string v1, "post-error"

    invoke-virtual {p1, v1}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v0

    .line 69
    .local v0, "response":Lcom/mopub/volley/Response;, "Lcom/mopub/volley/Response<*>;"
    iget-object v1, p0, Lcom/mopub/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/mopub/volley/ExecutorDelivery;Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;",
            "Lcom/mopub/volley/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    .local p2, "response":Lcom/mopub/volley/Response;, "Lcom/mopub/volley/Response<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mopub/volley/ExecutorDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;",
            "Lcom/mopub/volley/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    .local p2, "response":Lcom/mopub/volley/Response;, "Lcom/mopub/volley/Response<*>;"
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->markDelivered()V

    .line 61
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/mopub/volley/ExecutorDelivery;Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
