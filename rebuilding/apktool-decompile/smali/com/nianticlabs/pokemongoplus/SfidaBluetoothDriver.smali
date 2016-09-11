.class public Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
.super Lcom/nianticlabs/pokemongoplus/ble/BluetoothDriver;
.source "SfidaBluetoothDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private context:Landroid/content/Context;

.field private isScanning:Z

.field private nativeHandle:J

.field private peripheral:Lcom/nianticlabs/pokemongoplus/ble/Peripheral;

.field private peripheralMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;",
            ">;"
        }
    .end annotation
.end field

.field private scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

.field private serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

.field private sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/ble/BluetoothDriver;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;

    .line 36
    new-instance v0, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    const-string v1, "SfidaBluetoothDriver"

    invoke-direct {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    .line 38
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private SetIsScanning(Z)V
    .locals 1
    .param p1, "isScanning"    # Z

    .prologue
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iput-boolean p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->isScanning:Z

    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->nativeStartCallback(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/ble/Peripheral;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->nativeScanCallback(Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;

    return-object v0
.end method

.method private native nativeScanCallback(Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V
.end method

.method private native nativeStartCallback(I)V
.end method


# virtual methods
.method public IsScanning()Z
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->isScanning:Z

    monitor-exit p0

    return v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEnabledBluetoothLe()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public releasePeripherals()V
    .locals 10

    .prologue
    .line 107
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v4, "Tid: %d releasePeripherals()"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v0, "continuing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;>;"
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .line 110
    .local v1, "peripheral":Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->getState()Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    move-result-object v2

    .line 111
    .local v2, "state":Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-ne v2, v4, :cond_1

    .line 113
    :cond_0
    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->onDestroy()V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    .end local v1    # "peripheral":Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    .end local v2    # "state":Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
    :cond_2
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 119
    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;

    .line 120
    return-void
.end method

.method public start(Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;)I
    .locals 7
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;

    .prologue
    const/4 v6, 0x0

    .line 56
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 57
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v2, "Tid: %d start()"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->getBluetoothManager(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    .line 59
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 61
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->PoweredOn:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    :goto_0
    invoke-interface {p1, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;->OnStateChanged(Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;)V

    .line 69
    :goto_1
    return v6

    .line 61
    :cond_0
    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->PoweredOff:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    goto :goto_0

    .line 66
    :cond_1
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v2, "start(CentralStateCallback): Could not find bluetooth manager."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    invoke-interface {p1, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;->OnStateChanged(Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;)V

    goto :goto_1
.end method

.method public startDriver()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public startScanning(Ljava/lang/String;)V
    .locals 1
    .param p1, "peripheralName"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$4;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$4;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V

    invoke-virtual {p0, p1, v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->startScanning(Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)V

    .line 150
    return-void
.end method

.method public startScanning(Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)V
    .locals 2
    .param p1, "peripheralName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->IsScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->SetIsScanning(Z)V

    .line 129
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop(I)V
    .locals 6
    .param p1, "unusedTag"    # I

    .prologue
    .line 74
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v1, "Tid: %d stop()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 81
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->stop()V

    .line 82
    return-void
.end method

.method public stopDriver()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->stop(I)V

    .line 86
    return-void
.end method

.method public stopScanning(Ljava/lang/String;)V
    .locals 2
    .param p1, "peripheralName"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->IsScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->SetIsScanning(Z)V

    .line 159
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$5;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$5;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
