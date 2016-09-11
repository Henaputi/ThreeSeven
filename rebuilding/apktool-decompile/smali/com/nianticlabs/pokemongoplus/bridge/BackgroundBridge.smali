.class public Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;
.super Ljava/lang/Object;
.source "BackgroundBridge.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static currentContext:Landroid/content/Context;

.field private static messageHandler:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;


# instance fields
.field private nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->initialize()V

    .line 18
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v1, "Initialize();"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->messageHandler:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

    return-object v0
.end method

.method public static createBridge(Landroid/content/Context;Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageHandler"    # Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

    .prologue
    .line 23
    sput-object p1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->messageHandler:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

    .line 24
    sput-object p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    .line 25
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-class v2, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->nativeInit()V

    .line 27
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v2, "BackgroundBridge createBridge"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;-><init>()V

    .line 29
    .local v0, "pgpwrap":Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v2, "new BackgroundBridge"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-object v0
.end method

.method private native initialize()V
.end method

.method public static native nativeInit()V
.end method

.method public static sendBatteryLevel(D)V
    .locals 2
    .param p0, "batteryLevel"    # D

    .prologue
    .line 117
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->BATTERY_LEVEL_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 118
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setBatteryLevel(D)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 120
    return-void
.end method

.method public static sendCentralState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 92
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->CENTRAL_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 93
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 95
    return-void
.end method

.method public static sendEncounterId(J)V
    .locals 2
    .param p0, "encounterId"    # J

    .prologue
    .line 80
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->ENCOUNTER_ID_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 81
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setEncounterId(J)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 83
    return-void
.end method

.method public static sendIsScanning(I)V
    .locals 2
    .param p0, "isScanning"    # I

    .prologue
    .line 105
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->IS_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 106
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 108
    return-void
.end method

.method private static sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V
    .locals 2
    .param p0, "message"    # Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    .prologue
    .line 57
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge$1;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge$1;-><init>(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method public static sendNotification(ILjava/lang/String;)V
    .locals 2
    .param p0, "messageId"    # I
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->SEND_NOTIFICATION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 124
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setNotification(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 127
    return-void
.end method

.method public static sendPluginState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 111
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->PLUGIN_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 112
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 114
    return-void
.end method

.method public static sendPokestopId(Ljava/lang/String;)V
    .locals 2
    .param p0, "pokestop"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->POKESTOP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 87
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setPokestopId(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 89
    return-void
.end method

.method public static sendScannedSfida(Ljava/lang/String;I)V
    .locals 2
    .param p0, "deviceId"    # Ljava/lang/String;
    .param p1, "buttonValue"    # I

    .prologue
    .line 98
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->SCANNED_SFIDA_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 99
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setDeviceId(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 102
    return-void
.end method

.method public static sendSfidaState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 74
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->SFIDA_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 75
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 77
    return-void
.end method

.method public static sendUpdateTimestamp(J)V
    .locals 2
    .param p0, "timestampMs"    # J

    .prologue
    .line 68
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->UPDATE_TIMESTAMP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 69
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setTimestamp(J)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 71
    return-void
.end method

.method public static stopNotification()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->STOP_NOTIFICATION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 131
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 132
    return-void
.end method


# virtual methods
.method public destroyBridge()V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->dispose()V

    .line 36
    return-void
.end method

.method public native dispose()V
.end method

.method public onClientMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V
    .locals 12
    .param p1, "message"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getAction()Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    move-result-object v6

    .line 136
    .local v6, "action":Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClientMessage - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BackgroundService onClientMessage action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge$2;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action:[I

    invoke-virtual {v6}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 177
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t handle intent message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClientMessage DONE - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 141
    :pswitch_0
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->start()V

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->resume()V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->pause()V

    goto :goto_0

    .line 150
    :pswitch_3
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stop()V

    goto :goto_0

    .line 154
    :pswitch_4
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->startScanning()V

    goto :goto_0

    .line 157
    :pswitch_5
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stopScanning()V

    goto :goto_0

    .line 160
    :pswitch_6
    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getHostPort()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "hostPort":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "device":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getAuthToken()[B

    move-result-object v3

    .line 163
    .local v3, "authToken":[B
    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getEncounterId()J

    move-result-wide v4

    .line 165
    .local v4, "encounterId":J
    const-string v7, ""

    .line 166
    .local v7, "str":Ljava/lang/String;
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v8, "Start session: %s %s %d \"%s\""

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v10, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 168
    invoke-virtual/range {v0 .. v5}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->startSession(Ljava/lang/String;Ljava/lang/String;[BJ)V

    goto :goto_0

    .line 171
    .end local v1    # "hostPort":Ljava/lang/String;
    .end local v2    # "device":Ljava/lang/String;
    .end local v3    # "authToken":[B
    .end local v4    # "encounterId":J
    .end local v7    # "str":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stopSession()V

    goto :goto_0

    .line 174
    :pswitch_8
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->requestPgpState()V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public native pause()V
.end method

.method public native requestPgpState()V
.end method

.method public native resume()V
.end method

.method public native start()V
.end method

.method public native startScanning()V
.end method

.method public native startSession(Ljava/lang/String;Ljava/lang/String;[BJ)V
.end method

.method public native stop()V
.end method

.method public native stopScanning()V
.end method

.method public native stopSession()V
.end method
