.class public Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;
.super Ljava/lang/Object;
.source "ClientBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;,
        Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static currentContext:Landroid/content/Context;

.field private static instance:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field loginDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;

.field private messenger:Landroid/os/Messenger;

.field private nativeHandle:J

.field private replyMessenger:Landroid/os/Messenger;

.field sfidaRegisterDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->listeners:Ljava/util/List;

    .line 64
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v1, "Initialize();"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->initialize()V

    .line 66
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->instance:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->replyMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->messenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->onBackgroundMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static createBridge(Landroid/content/Context;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sput-object p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    .line 70
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->getInstance()Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->instance:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v1, "Create ClientBridge"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->nativeInit()V

    .line 77
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;-><init>()V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->instance:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    .line 79
    :cond_0
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->instance:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    return-object v0
.end method

.method private native initialize()V
.end method

.method public static native nativeInit()V
.end method

.method private onBackgroundMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V
    .locals 21
    .param p1, "message"    # Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    .prologue
    .line 140
    sget-object v16, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$3;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BackgroundBridgeMessage$Action:[I

    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getAction()Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 197
    sget-object v16, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Can\'t handle intent message: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getAction()Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 142
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getTimestamp()J

    move-result-wide v14

    .line 143
    .local v14, "timestampMs":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendUpdateTimestamp(J)V

    goto :goto_0

    .line 147
    .end local v14    # "timestampMs":J
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 148
    .local v13, "sfidaState":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendSfidaState(I)V

    goto :goto_0

    .line 152
    .end local v13    # "sfidaState":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getEncounterId()J

    move-result-wide v8

    .line 153
    .local v8, "encounterId":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendEncounterId(J)V

    goto :goto_0

    .line 157
    .end local v8    # "encounterId":J
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getPokestopId()Ljava/lang/String;

    move-result-object v12

    .line 158
    .local v12, "pokestop":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendPokestopId(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v12    # "pokestop":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 163
    .local v5, "centralState":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendCentralState(I)V

    goto :goto_0

    .line 167
    .end local v5    # "centralState":I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 168
    .local v4, "button":I
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "device":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendScannedSfida(Ljava/lang/String;I)V

    goto :goto_0

    .line 173
    .end local v4    # "button":I
    .end local v6    # "device":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 174
    .local v11, "pluginState":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendPluginState(I)V

    goto :goto_0

    .line 178
    .end local v11    # "pluginState":I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->message:Landroid/os/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 179
    .local v7, "isScanning":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendIsScanning(I)V

    goto :goto_0

    .line 183
    .end local v7    # "isScanning":I
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getBatteryLevel()D

    move-result-wide v2

    .line 184
    .local v2, "batteryLevel":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendBatteryLevel(D)V

    goto :goto_0

    .line 188
    .end local v2    # "batteryLevel":D
    :pswitch_9
    sget-object v16, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v17, "Confirmed bridge shut down"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 192
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getArg1()I

    move-result v10

    .line 193
    .local v10, "messageId":I
    sget-object v16, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v17, "Notification received: %d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 140
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
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V
    .locals 6
    .param p0, "message"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    .prologue
    .line 91
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->instance:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    iget-object v1, v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->messenger:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 92
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v2, "Service is not connected yet. Action failed: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getAction()Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    move-result-object v5

    aput-object v5, v3, v4

    .line 92
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 98
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$1;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$1;-><init>(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static sendPause()V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->PAUSE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V

    .line 218
    return-void
.end method

.method public static sendRequestPgpState()V
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->REQUEST_PGP_STATE:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V

    .line 250
    return-void
.end method

.method public static sendResume()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->RESUME_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V

    .line 214
    return-void
.end method

.method public static sendStart()V
    .locals 3

    .prologue
    .line 208
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStart PROCESS_LOCAL_VALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->START_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V

    .line 210
    return-void
.end method

.method public static sendStartScanning()V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->START_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V

    .line 226
    return-void
.end method

.method public static sendStartSession(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 5
    .param p0, "hostPort"    # Ljava/lang/String;
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "authToken"    # [B
    .param p3, "encounterId"    # J

    .prologue
    .line 234
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v1, "send startSession intent %s %s %s %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    .line 235
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 234
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->START_SESSION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .line 237
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    .line 238
    invoke-virtual {v0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setDeviceId(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p3, p4}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setEncounterId(J)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setHostPort(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    .line 241
    invoke-virtual {v0, p2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setAuthToken([B)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V

    .line 242
    return-void
.end method

.method public static sendStop()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->STOP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V

    .line 222
    return-void
.end method

.method public static sendStopScanning()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->STOP_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V

    .line 230
    return-void
.end method

.method public static sendStopSession()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->STOP_SESSION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V

    .line 246
    return-void
.end method

.method public static shutdownBackgroundBridge()V
    .locals 3

    .prologue
    .line 203
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutdown background bridge PROCESS_LOCAL_VALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->SHUTDOWN_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V

    .line 205
    return-void
.end method


# virtual methods
.method public addListener(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;)V
    .locals 1
    .param p1, "listener"    # Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public native connectDevice(Ljava/lang/String;)V
.end method

.method public native disconnectDevice()V
.end method

.method public native dispose()V
.end method

.method public native login()V
.end method

.method public native logout()V
.end method

.method public onLogin(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->loginDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->loginDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;

    invoke-interface {v0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;->onLogin(Z)V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->loginDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;

    .line 276
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 115
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->messenger:Landroid/os/Messenger;

    .line 117
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$2;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$2;-><init>(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->replyMessenger:Landroid/os/Messenger;

    .line 130
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 134
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-object v2, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->messenger:Landroid/os/Messenger;

    .line 136
    iput-object v2, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->replyMessenger:Landroid/os/Messenger;

    .line 137
    return-void
.end method

.method public onSfidaRegistered(ZLjava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "device"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sfidaRegisterDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sfidaRegisterDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;

    invoke-interface {v0, p1, p2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;->onSfidaRegistered(ZLjava/lang/String;)V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sfidaRegisterDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;

    .line 282
    :cond_0
    return-void
.end method

.method public native pausePlugin()V
.end method

.method public native registerDevice(Ljava/lang/String;)V
.end method

.method public removeListener(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;)V
    .locals 1
    .param p1, "listener"    # Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public native requestPgpState()V
.end method

.method public native resumePlugin()V
.end method

.method public native sendBatteryLevel(D)V
.end method

.method public native sendCentralState(I)V
.end method

.method public native sendEncounterId(J)V
.end method

.method public native sendIsScanning(I)V
.end method

.method public native sendPluginState(I)V
.end method

.method public native sendPokestopId(Ljava/lang/String;)V
.end method

.method public native sendScannedSfida(Ljava/lang/String;I)V
.end method

.method public native sendSfidaState(I)V
.end method

.method public native sendUpdateTimestamp(J)V
.end method

.method public native standaloneInit(J)V
.end method

.method public standaloneLogin(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->loginDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;

    .line 265
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->login()V

    .line 266
    return-void
.end method

.method public standaloneSfidaRegister(Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "delegate"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;

    .prologue
    .line 268
    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sfidaRegisterDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;

    .line 269
    invoke-virtual {p0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->registerDevice(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public native standaloneUpdate()V
.end method

.method public native startPlugin()V
.end method

.method public native startScanning()V
.end method

.method public native stopPlugin()V
.end method

.method public native stopScanning()V
.end method
