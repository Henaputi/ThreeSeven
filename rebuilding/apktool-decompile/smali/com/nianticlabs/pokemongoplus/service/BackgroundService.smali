.class public Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
.super Landroid/app/Service;
.source "BackgroundService.java"


# static fields
.field public static PROCESS_LOCAL_VALUE:I = 0x0

.field private static final STOP_FROM_NOTIFICATION:Ljava/lang/String; = "stopFromNotif"

.field private static final TAG:Ljava/lang/String;

.field private static final intentRequestCode:I = 0x3e8

.field private static final kCapturedPokemon:I = 0x1

.field private static final kEmptyMessage:I = 0x0

.field private static final kItemInventoryFull:I = 0x9

.field private static final kOutOfPokeballs:I = 0x7

.field private static final kPokemonEscaped:I = 0x2

.field private static final kPokemonInventoryFull:I = 0x8

.field private static final kPokestopCooldown:I = 0x6

.field private static final kPokestopOutOfRange:I = 0x5

.field private static final kRetrievedItems:I = 0x4

.field private static final kRetrievedOneItem:I = 0x3

.field private static final kSessionEnded:I = 0xc

.field private static final kTrackedPokemonFound:I = 0xa

.field private static final kTrackedPokemonLost:I = 0xb

.field private static final notificationId:I = 0x7d0

.field private static final notificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static serviceStopped:Z


# instance fields
.field private batteryLevel:D

.field private contentView:Landroid/widget/RemoteViews;

.field private isScanning:Z

.field private messageHandler:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

.field private messenger:Landroid/os/Messenger;

.field private pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

.field private pluginState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

.field private replyMessenger:Landroid/os/Messenger;

.field private sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    .line 53
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Captured_Pokemon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Pokemon_Escaped:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Retrieved_an_Item:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Retrieved_Items:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Pokestop_Out_Of_Range:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Pokestop_Cooldown:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Out_Of_Pokeballs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Pokemon_Inventory_Full:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Item_Inventory_Full:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Tracked_Pokemon_Found:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Tracked_Pokemon_Lost:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Session_Ended:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-class v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->serviceStopped:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->replyMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->replyMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 30
    sput-boolean p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->serviceStopped:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createNewStylePlayerNotification(Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 276
    sget-object v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BackgroundService createNewStylePlayerNotification message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createStopSelfPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 280
    .local v2, "pendingStopSelf":Landroid/app/PendingIntent;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    sget v4, Lcom/nianticlabs/pokemongoplus/R$drawable;->ic_close_black_24dp:I

    .line 283
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nianticlabs/pokemongoplus/R$string;->Stop_button_label:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 284
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 286
    .local v0, "action":Landroid/support/v4/app/NotificationCompat$Action;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/nianticlabs/pokemongoplus/R$drawable;->ic_pgp_white:I

    .line 287
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 288
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nianticlabs/pokemongoplus/R$string;->Pokemon_Go_Plus:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 289
    invoke-virtual {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x2

    .line 290
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 291
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 292
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 294
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct {p0, v1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->finishPlayerNotificationCreation(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 295
    return-void
.end method

.method private createOldStylePlayerNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 298
    sget-object v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackgroundService createOldStylePlayerNotification message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createStopSelfPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 302
    .local v1, "pendingStopSelf":Landroid/app/PendingIntent;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/nianticlabs/pokemongoplus/R$drawable;->ic_pgp_white:I

    .line 303
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 304
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 305
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 307
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/nianticlabs/pokemongoplus/R$layout;->pgp_status_notif:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->contentView:Landroid/widget/RemoteViews;

    .line 308
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcom/nianticlabs/pokemongoplus/R$id;->stopPgp:I

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 309
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcom/nianticlabs/pokemongoplus/R$id;->pgpStatusTitle:I

    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nianticlabs/pokemongoplus/R$string;->Pokemon_Go_Plus:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 310
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcom/nianticlabs/pokemongoplus/R$id;->pgpStatusDetail:I

    invoke-virtual {v2, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 311
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 313
    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->finishPlayerNotificationCreation(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 314
    return-void
.end method

.method private createPlayerNotification(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 261
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createNewStylePlayerNotification(Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createOldStylePlayerNotification(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createStopSelfPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 268
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v1, "stopSelf":Landroid/content/Intent;
    const-string v2, "com.nianticlabs.pokemongoplus.bridge"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v2, "action"

    const-string v3, "stopFromNotif"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 272
    .local v0, "pendingStopSelf":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private finishPlayerNotificationCreation(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 317
    invoke-virtual {p0, p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->GetLauncherActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    .line 318
    .local v0, "mainContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v4}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 319
    .local v2, "notificationIntent":Landroid/content/Intent;
    const/16 v4, 0x3e8

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 321
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 322
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 323
    .local v1, "notification":Landroid/app/Notification;
    const/16 v4, 0x7d0

    invoke-virtual {p0, v4, v1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->startForeground(ILandroid/app/Notification;)V

    .line 324
    return-void
.end method

.method private forceStopService()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V

    .line 232
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopSelf()V

    .line 233
    return-void
.end method

.method private formatNotification(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # I
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 247
    sget-object v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 248
    .local v1, "tag":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "format":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .end local v0    # "format":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 192
    if-nez p1, :cond_0

    .line 193
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v2, "BackgroundService onHandleIntent (intent == null)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 198
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v2, "BackgroundService onHandleIntent (action == null)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_1
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackgroundService onHandleBridgedIntent action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 207
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v3, "Unknown intent passed to BackgroundService: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :pswitch_0
    const-string v3, "stopFromNotif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_1

    .line 204
    :pswitch_1
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopBackgroundService()V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch -0x740a843c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static sendClientIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceAction"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticlabs/pokemongoplus/service/ClientService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.nianticlabs.pokemongoplus.bridge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 151
    return-void
.end method

.method private stopBackgroundService()V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Disconnecting:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Disconnected:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    if-eq v0, v1, :cond_2

    .line 215
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->contentView:Landroid/widget/RemoteViews;

    sget v1, Lcom/nianticlabs/pokemongoplus/R$id;->stopPgp:I

    const-string v2, "setEnabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nianticlabs/pokemongoplus/R$string;->Disconnecting_GO_Plus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stopSession()V

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V

    goto :goto_0

    .line 225
    :cond_2
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V

    goto :goto_0
.end method

.method private stopPlayerNotification()V
    .locals 3

    .prologue
    .line 236
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v1, "stopping notification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->contentView:Landroid/widget/RemoteViews;

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopForeground(Z)V

    .line 239
    return-void
.end method

.method private updateBatteryLevel(D)V
    .locals 1
    .param p1, "batteryLevel"    # D

    .prologue
    .line 242
    iput-wide p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->batteryLevel:D

    .line 244
    return-void
.end method

.method private updateNotificationForSfidaState(Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;)V
    .locals 3
    .param p1, "newSfidaState"    # Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    .param p2, "sfidaState"    # Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    .prologue
    .line 380
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-eq p1, p2, :cond_0

    .line 382
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$SfidaState:[I

    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 398
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 386
    :pswitch_1
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Disconnecting:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    if-ne p2, v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V

    goto :goto_0

    .line 392
    :pswitch_2
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public GetLauncherActivity(Landroid/content/Context;)Ljava/lang/Class;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 329
    .local v2, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 334
    :goto_0
    return-object v4

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launcher class not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public initBackgroundBridge()V
    .locals 3

    .prologue
    .line 142
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundService onCreate PROCESS_LOCAL_VALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->messageHandler:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

    invoke-static {p0, v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createBridge(Landroid/content/Context;Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    .line 144
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 173
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 99
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundService onCreate() PROCESS_LOCAL_VALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "pgpplugin"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$1;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$1;-><init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->messenger:Landroid/os/Messenger;

    .line 117
    new-instance v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;-><init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->messageHandler:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

    .line 133
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 138
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundService onDestroy PROCESS_LOCAL_VALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public onHandleBackgroundMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V
    .locals 8
    .param p1, "message"    # Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    .prologue
    .line 352
    sget-object v6, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BackgroundBridgeMessage$Action:[I

    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getAction()Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 377
    :goto_0
    return-void

    .line 354
    :pswitch_0
    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getArg1()I

    move-result v4

    .line 355
    .local v4, "messageId":I
    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getNotification()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "arg":Ljava/lang/String;
    invoke-direct {p0, v4, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->formatNotification(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "formatted":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "formatted":Ljava/lang/String;
    .end local v4    # "messageId":I
    :pswitch_1
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V

    goto :goto_0

    .line 363
    :pswitch_2
    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getBatteryLevel()D

    move-result-wide v2

    .line 364
    .local v2, "batteryLevel":D
    invoke-direct {p0, v2, v3}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->updateBatteryLevel(D)V

    goto :goto_0

    .line 368
    .end local v2    # "batteryLevel":D
    :pswitch_3
    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getArg1()I

    move-result v6

    invoke-static {v6}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->fromInt(I)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    move-result-object v5

    .line 369
    .local v5, "newSfidaState":Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    iget-object v6, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    invoke-direct {p0, v5, v6}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->updateNotificationForSfidaState(Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;)V

    .line 370
    iput-object v5, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    goto :goto_0

    .line 374
    .end local v5    # "newSfidaState":Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    :pswitch_4
    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->getArg1()I

    move-result v6

    invoke-static {v6}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->fromInt(I)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    move-result-object v6

    iput-object v6, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pluginState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->onHandleIntent(Landroid/content/Intent;)V

    .line 188
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopBackgroundService()V

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public shutdownBackgroundBridge()V
    .locals 3

    .prologue
    .line 156
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundService shutdownBackgroundBridge() PROCESS_LOCAL_VALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v0, "confirmBridgeShutdown"

    invoke-static {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sendClientIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v1, "BackgroundService destroy the bridge "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->destroyBridge()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    .line 165
    :cond_0
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DONE BackgroundService shutdownBackgroundBridge() PROCESS_LOCAL_VALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->serviceStopped:Z

    .line 167
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopSelf()V

    .line 168
    return-void
.end method

.method public startNotification(ILjava/lang/String;)V
    .locals 1
    .param p1, "message"    # I
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->formatNotification(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "formatted":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public stopNotification()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V

    .line 345
    return-void
.end method
