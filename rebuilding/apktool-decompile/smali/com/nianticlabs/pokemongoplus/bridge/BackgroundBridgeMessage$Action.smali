.class public final enum Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;
.super Ljava/lang/Enum;
.source "BackgroundBridgeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

.field public static final enum BATTERY_LEVEL_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

.field public static final enum CENTRAL_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

.field public static final enum CONFIRM_BRIDGE_SHUTDOWN_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

.field public static final enum ENCOUNTER_ID_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

.field public static final enum IS_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

.field public static final enum PLUGIN_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

.field public static final enum POKESTOP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

.field public static final enum SCANNED_SFIDA_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

.field public static final enum SEND_NOTIFICATION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

.field public static final enum SFIDA_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

.field public static final enum STOP_NOTIFICATION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

.field public static final enum UPDATE_TIMESTAMP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    const-string v1, "UPDATE_TIMESTAMP_ACTION"

    invoke-direct {v0, v1, v3}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->UPDATE_TIMESTAMP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 16
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    const-string v1, "SFIDA_STATE_ACTION"

    invoke-direct {v0, v1, v4}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->SFIDA_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 17
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    const-string v1, "ENCOUNTER_ID_ACTION"

    invoke-direct {v0, v1, v5}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->ENCOUNTER_ID_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 18
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    const-string v1, "POKESTOP_ACTION"

    invoke-direct {v0, v1, v6}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->POKESTOP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 19
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    const-string v1, "CENTRAL_STATE_ACTION"

    invoke-direct {v0, v1, v7}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->CENTRAL_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 20
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    const-string v1, "SCANNED_SFIDA_ACTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->SCANNED_SFIDA_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 21
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    const-string v1, "BATTERY_LEVEL_ACTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->BATTERY_LEVEL_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 22
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    const-string v1, "PLUGIN_STATE_ACTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->PLUGIN_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 23
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    const-string v1, "IS_SCANNING_ACTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->IS_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 24
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    const-string v1, "SEND_NOTIFICATION_ACTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->SEND_NOTIFICATION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 25
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    const-string v1, "STOP_NOTIFICATION_ACTION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->STOP_NOTIFICATION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 26
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    const-string v1, "CONFIRM_BRIDGE_SHUTDOWN_ACTION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->CONFIRM_BRIDGE_SHUTDOWN_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 14
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->UPDATE_TIMESTAMP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->SFIDA_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->ENCOUNTER_ID_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->POKESTOP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->CENTRAL_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->SCANNED_SFIDA_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->BATTERY_LEVEL_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->PLUGIN_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->IS_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->SEND_NOTIFICATION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->STOP_NOTIFICATION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->CONFIRM_BRIDGE_SHUTDOWN_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->$VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->$VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    invoke-virtual {v0}, [Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    return-object v0
.end method
