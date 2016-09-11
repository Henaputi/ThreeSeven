.class final Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge$1;
.super Ljava/lang/Object;
.source "BackgroundBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge$1;->val$message:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    # getter for: Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge$1;->val$message:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getAction()Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    # getter for: Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->messageHandler:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->access$100()Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge$1;->val$message:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-interface {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;->handleMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 63
    return-void
.end method
