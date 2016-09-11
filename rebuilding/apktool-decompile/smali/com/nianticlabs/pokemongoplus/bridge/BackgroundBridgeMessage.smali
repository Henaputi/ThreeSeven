.class public Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;
.super Ljava/lang/Object;
.source "BackgroundBridgeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;,
        Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;
    }
.end annotation


# instance fields
.field public final message:Landroid/os/Message;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>(Landroid/os/Message;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    .line 37
    return-void
.end method


# virtual methods
.method public getAction()Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->values()[Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getArg1()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    return v0
.end method

.method public getBatteryLevel()D
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "battery"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncounterId()J
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "encounterId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPokestopId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pokestopId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;
    .locals 2
    .param p1, "action"    # Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 45
    return-object p0
.end method

.method public setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;
    .locals 1
    .param p1, "arg1"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 95
    return-object p0
.end method

.method public setBatteryLevel(D)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;
    .locals 3
    .param p1, "batteryLevel"    # D

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "battery"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 90
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-object p0
.end method

.method public setEncounterId(J)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;
    .locals 3
    .param p1, "encounterId"    # J

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "encounterId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    return-object p0
.end method

.method public setNotification(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;
    .locals 2
    .param p1, "notification"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object p0
.end method

.method public setPokestopId(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;
    .locals 2
    .param p1, "pokestopId"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pokestopId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object p0
.end method

.method public setTimestamp(J)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 81
    return-object p0
.end method
