.class public final enum Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;
.super Ljava/lang/Enum;
.source "ClientBridgeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

.field public static final enum PAUSE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

.field public static final enum REQUEST_PGP_STATE:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

.field public static final enum RESUME_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

.field public static final enum SHUTDOWN_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

.field public static final enum START_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

.field public static final enum START_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

.field public static final enum START_SERVICE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

.field public static final enum START_SESSION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

.field public static final enum STOP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

.field public static final enum STOP_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

.field public static final enum STOP_SESSION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    const-string v1, "START_ACTION"

    invoke-direct {v0, v1, v3}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->START_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .line 12
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    const-string v1, "RESUME_ACTION"

    invoke-direct {v0, v1, v4}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->RESUME_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .line 13
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    const-string v1, "PAUSE_ACTION"

    invoke-direct {v0, v1, v5}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->PAUSE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .line 14
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    const-string v1, "STOP_ACTION"

    invoke-direct {v0, v1, v6}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->STOP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .line 15
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    const-string v1, "START_SCANNING_ACTION"

    invoke-direct {v0, v1, v7}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->START_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .line 16
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    const-string v1, "STOP_SCANNING_ACTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->STOP_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .line 17
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    const-string v1, "START_SESSION_ACTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->START_SESSION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .line 18
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    const-string v1, "STOP_SESSION_ACTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->STOP_SESSION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .line 19
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    const-string v1, "START_SERVICE_ACTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->START_SERVICE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .line 20
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    const-string v1, "SHUTDOWN_ACTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->SHUTDOWN_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .line 21
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    const-string v1, "REQUEST_PGP_STATE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->REQUEST_PGP_STATE:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .line 10
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->START_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->RESUME_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->PAUSE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->STOP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->START_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->STOP_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->START_SESSION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->STOP_SESSION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->START_SERVICE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->SHUTDOWN_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->REQUEST_PGP_STATE:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->$VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->$VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    invoke-virtual {v0}, [Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    return-object v0
.end method
