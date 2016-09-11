.class Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$2;
.super Landroid/os/Handler;
.source "ClientBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$2;->this$0:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 120
    # getter for: Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received a message: what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>(Landroid/os/Message;)V

    .line 123
    .local v0, "bridgeMessage":Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$2;->this$0:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    # invokes: Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->onBackgroundMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V
    invoke-static {v2, v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->access$400(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$2;->this$0:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    # getter for: Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->listeners:Ljava/util/List;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->access$500(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$2;->this$0:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    # getter for: Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->listeners:Ljava/util/List;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->access$500(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

    invoke-interface {v2, v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;->handleMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method
