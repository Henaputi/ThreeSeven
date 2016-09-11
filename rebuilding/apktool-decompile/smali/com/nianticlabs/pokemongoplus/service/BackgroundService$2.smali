.class Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;
.super Ljava/lang/Object;
.source "BackgroundService.java"

# interfaces
.implements Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->replyMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$100(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->replyMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$100(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Landroid/os/Messenger;

    move-result-object v1

    iget-object v2, p1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-virtual {v1, p1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->onHandleBackgroundMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 131
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "replyMessenger not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
