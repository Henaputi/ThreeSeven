.class final Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$1;
.super Ljava/lang/Object;
.source "ClientBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$1;->val$message:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 102
    :try_start_0
    # getter for: Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendMessage: action:%s thread:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$1;->val$message:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    .line 103
    invoke-virtual {v5}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getAction()Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 102
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$1;->val$message:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    iget-object v1, v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    # getter for: Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->instance:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->access$100()Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    move-result-object v2

    # getter for: Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->replyMessenger:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->access$200(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 105
    # getter for: Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->instance:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->access$100()Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    move-result-object v1

    # getter for: Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->messenger:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->access$300(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;)Landroid/os/Messenger;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$1;->val$message:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
