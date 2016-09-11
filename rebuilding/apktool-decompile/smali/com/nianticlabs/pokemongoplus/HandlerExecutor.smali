.class Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
.super Ljava/lang/Object;
.source "HandlerExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final reallyAssertOnThread:Z


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->handlerThread:Landroid/os/HandlerThread;

    .line 18
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->handler:Landroid/os/Handler;

    .line 21
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    return-void
.end method

.method public maybeAssertOnThread()V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->onThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    :cond_0
    return-void
.end method

.method public onThread()Z
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 42
    return-void
.end method
