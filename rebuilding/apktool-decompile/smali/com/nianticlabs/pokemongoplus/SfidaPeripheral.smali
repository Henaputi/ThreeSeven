.class public Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
.super Lcom/nianticlabs/pokemongoplus/ble/Peripheral;
.source "SfidaPeripheral.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private final bluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private bondState:I

.field private connectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

.field private final context:Landroid/content/Context;

.field private disconnectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

.field private discoverServicesCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private nativeHandle:J

.field private scanRecord:[B

.field private final serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

.field private final serviceRef:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticlabs/pokemongoplus/SfidaService;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nianticlabs/pokemongoplus/HandlerExecutor;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 6
    .param p1, "serialExecutor"    # Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "scanRecord"    # [B

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/ble/Peripheral;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 456
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "Tid: %d SfidaPeripheral()"

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

    .line 153
    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->context:Landroid/content/Context;

    .line 154
    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 155
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 156
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    .line 157
    invoke-static {p2}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->getBluetoothManager(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 158
    iput-object p4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->scanRecord:[B

    .line 159
    const/16 v0, 0xa

    iput v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    .line 160
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->retryConnect()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeMonitorDisconnectCallback(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeDiscoverServicesCallback(ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)I
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .prologue
    .line 29
    iget v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    return v0
.end method

.method static synthetic access$600(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeConnectCallback(ZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeDisconnectCallback(ZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->onBondStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->onPairingRequest(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private bondingCanceled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 519
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "bondingCanceled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {p1}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->createBond(Landroid/bluetooth/BluetoothDevice;)V

    .line 521
    return-void
.end method

.method private byteArrayFromHexString(Ljava/lang/String;)[B
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 203
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 204
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 205
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 206
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 204
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 208
    :cond_0
    return-object v0
.end method

.method private callMonitorDisconnectCallback(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
    .locals 2
    .param p1, "isDisconnected"    # Z
    .param p2, "err"    # Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$7;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 663
    return-void
.end method

.method private disconnectFromBonding(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 514
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "disconnectFromBonding()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->createBond(Landroid/bluetooth/BluetoothDevice;)V

    .line 516
    return-void
.end method

.method private isBoundDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 441
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 443
    .local v1, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 444
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 445
    .local v0, "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "hardwareAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 452
    .end local v0    # "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "hardwareAddress":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method private native nativeConnectCallback(ZI)V
.end method

.method private native nativeDisconnectCallback(ZI)V
.end method

.method private native nativeDiscoverService(Lcom/nianticlabs/pokemongoplus/SfidaService;)V
.end method

.method private native nativeDiscoverServicesCallback(ZI)V
.end method

.method private native nativeMonitorDisconnectCallback(ZI)V
.end method

.method private onBondStateChanged(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v4, -0x80000000

    .line 540
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 541
    .local v1, "newState":I
    const-string v3, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 543
    .local v2, "oldState":I
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v4, "Tid: %d onBondStateChanged()"

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

    .line 544
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BLE] ACTION_BOND_STATE_CHANGED oldState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 545
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->getBondStateName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2192 newState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 546
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->getBondStateName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " local state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    .line 547
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->getBondStateName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 544
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 551
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 552
    iput v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    .line 553
    packed-switch v1, :pswitch_data_0

    .line 587
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 557
    :pswitch_1
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BOND_BONDED, state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v5}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bond: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->tryCompleteConnect()Z

    move-result v3

    if-nez v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-eq v3, v4, :cond_0

    .line 561
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BOND_BONDED, retrying, state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v5}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bond: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->reconnnectFromBonding(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 567
    :pswitch_2
    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 571
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BOND_NONE, disconnecting from bonding, state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v5}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bond: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-ne v3, v4, :cond_0

    .line 574
    :cond_1
    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->disconnectFromBonding(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 576
    :cond_2
    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 577
    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondingCanceled(Landroid/bluetooth/BluetoothDevice;)V

    .line 578
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BOND_NONE, bonding canceled, state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v5}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bond: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 580
    :cond_3
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled oldState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPairingRequest(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 524
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "Tid: %d onPairingRequest()"

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

    .line 525
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "onPairingRequest()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setPairingConfirmation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "cancelPairingUserInput"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 537
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 532
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 534
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method private reconnnectFromBonding(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 492
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "reconnnectFromBonding()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$6;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$6;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 499
    return-void
.end method

.method private releaseServices()V
    .locals 10

    .prologue
    .line 426
    sget-object v4, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v5, "Tid: %d releaseServices()"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-object v4, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseServices, state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v6}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bond: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    monitor-enter v5

    .line 429
    :try_start_0
    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticlabs/pokemongoplus/ble/Service;

    .line 430
    .local v2, "service":Lcom/nianticlabs/pokemongoplus/ble/Service;
    instance-of v6, v2, Lcom/nianticlabs/pokemongoplus/SfidaService;

    if-eqz v6, :cond_0

    .line 431
    move-object v0, v2

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaService;

    move-object v3, v0

    .line 432
    .local v3, "sfidaService":Lcom/nianticlabs/pokemongoplus/SfidaService;
    invoke-virtual {v3}, Lcom/nianticlabs/pokemongoplus/SfidaService;->onDestroy()V

    goto :goto_0

    .line 436
    .end local v2    # "service":Lcom/nianticlabs/pokemongoplus/ble/Service;
    .end local v3    # "sfidaService":Lcom/nianticlabs/pokemongoplus/SfidaService;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 435
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 436
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    return-void
.end method

.method private retryConnect()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 353
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 354
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "Tid: %d retryConnect"

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->isBoundDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    const/16 v1, 0xc

    iput v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    .line 357
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 360
    :cond_0
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "[BLE] BluetoothAdapter not initialized or unspecified address."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 381
    .end local v0    # "address":Ljava/lang/String;
    :goto_0
    return-void

    .line 366
    .restart local v0    # "address":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_2

    .line 367
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "[BLE] Trying to use an existing bluetoothGatt for connection."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    goto :goto_0

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v1, v2, v8, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 375
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "Trying to create a new connection."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    .end local v0    # "address":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "Create bond."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 v1, 0xa

    iput v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    .line 379
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->createBond(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private unpairDevice()V
    .locals 8

    .prologue
    .line 502
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "Tid: %d unpairDevice()"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "unpairDevice()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :try_start_0
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "removeBond"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    .line 506
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 507
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public closeBluetoothGatt()V
    .locals 6

    .prologue
    .line 416
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "Tid: %d closeBluetoothGatt()"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeBluetoothGatt, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bond: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 307
    return-void
.end method

.method public connect(Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 386
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->connectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    .line 387
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 388
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "SfidaPeripheral connect. state = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v4}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->isBoundDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->unpairDevice()V

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->retryConnect()V

    .line 396
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public disconnect(Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;)V
    .locals 8
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 400
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 401
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "Tid: %d disconnect(ConnectCallback)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 403
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "SfidaPeripheral disconnect. state = %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v3}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 405
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->disconnectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    .line 406
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 412
    :goto_0
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->unpairDevice()V

    .line 413
    return-void

    .line 408
    :cond_0
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "Gatt is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {p1, v6, v0}, Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;->onConnectionStateChanged(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto :goto_0
.end method

.method public discoverServices()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method public discoverServices(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .locals 8
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 244
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 245
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "Tid: %d discoverServices()"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discoverServices("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_0

    .line 255
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->discoverServicesCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 256
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v1

    .line 257
    .local v1, "result":Z
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discoverServices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v1    # "result":Z
    :goto_1
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 259
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "gatt is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertisingServiceDataLongValue(Ljava/lang/String;)J
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->byteArrayFromHexString(Ljava/lang/String;)[B

    move-result-object v4

    .line 222
    .local v4, "uuidBytes":[B
    array-length v3, v4

    .line 224
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->scanRecord:[B

    array-length v5, v5

    sub-int/2addr v5, v3

    if-ge v1, v5, :cond_3

    .line 227
    const/4 v0, 0x1

    .line 228
    .local v0, "found":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 229
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->scanRecord:[B

    add-int v6, v1, v2

    aget-byte v5, v5, v6

    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v2

    aget-byte v6, v4, v6

    if-eq v5, v6, :cond_1

    .line 230
    const/4 v0, 0x0

    .line 234
    :cond_0
    if-eqz v0, :cond_2

    .line 235
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->scanRecord:[B

    add-int v6, v1, v3

    aget-byte v5, v5, v6

    int-to-long v6, v5

    monitor-exit p0

    .line 238
    .end local v0    # "found":Z
    .end local v2    # "j":I
    :goto_2
    return-wide v6

    .line 228
    .restart local v0    # "found":Z
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 224
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "found":Z
    .end local v2    # "j":I
    :cond_3
    const-wide/16 v6, 0x0

    monitor-exit p0

    goto :goto_2

    .line 239
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v4    # "uuidBytes":[B
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService(I)Lcom/nianticlabs/pokemongoplus/ble/Service;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->getServiceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/ble/Service;

    goto :goto_0
.end method

.method public getService(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/ble/Service;
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 340
    if-eqz p1, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->getServiceCount()I

    move-result v0

    .line 342
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 343
    invoke-virtual {p0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->getService(I)Lcom/nianticlabs/pokemongoplus/ble/Service;

    move-result-object v2

    .line 344
    .local v2, "service":Lcom/nianticlabs/pokemongoplus/ble/Service;
    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/ble/Service;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "service":Lcom/nianticlabs/pokemongoplus/ble/Service;
    :goto_1
    return-object v2

    .line 342
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "service":Lcom/nianticlabs/pokemongoplus/ble/Service;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "service":Lcom/nianticlabs/pokemongoplus/ble/Service;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getServiceCount()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    return-object v0
.end method

.method public getStateInt()I
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->getState()Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->getInt()I

    move-result v0

    return v0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 8
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 604
    packed-switch p3, :pswitch_data_0

    .line 649
    :pswitch_0
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "Tid: %d onConnectionStateChange(default)"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange() UnhandledState status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return-void

    .line 606
    :pswitch_1
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "Connected with GATT server."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "Tid: %d onConnectionStateChange(STATE_CONNECTED)"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 609
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "CONNECTED SfidaPeripheral connect GATT callback. state = %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v4}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->tryCompleteConnect()Z

    goto :goto_0

    .line 614
    :pswitch_2
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "Tid: %d onConnectionStateChange(STATE_DISCONNECTED)"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnected from GATT server., state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v4}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {p1}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 627
    const/16 v2, 0xa

    iput v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    .line 628
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->closeBluetoothGatt()V

    .line 629
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->releaseServices()V

    .line 630
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->disconnectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    if-eqz v2, :cond_1

    .line 631
    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 632
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnected from state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v4}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->disconnectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    if-nez p2, :cond_0

    :goto_1
    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v2, v0, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;->onConnectionStateChanged(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto/16 :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->connectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-ne v1, v2, :cond_3

    .line 638
    :cond_2
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected, retrying from state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 640
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->retryConnect()V

    goto/16 :goto_0

    .line 642
    :cond_3
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected after connected, giving up from state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v3}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 644
    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->PeripheralDisconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-direct {p0, v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->callMonitorDisconnectCallback(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto/16 :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 163
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "Tid: %d onCreate()"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, "bluetoothIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "context.registerReceiver(bluetoothReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    return-void
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    .line 172
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "Tid: %d onDestroy()"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "context.unregisterReceiver(bluetoothReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->releaseServices()V

    .line 180
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "java.lang.IllegalArgumentException: Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 10
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 666
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v4, "Tid: %d onServicesDiscovered(default)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    packed-switch p2, :pswitch_data_0

    .line 690
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISCONNECTED: BluetoothError, onServicesDiscovered, from state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v5}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->discoverServicesCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v3, v8, v4}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 692
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BLE] onServicesDiscovered received error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_0
    return-void

    .line 671
    :pswitch_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    .line 672
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    monitor-enter v4

    .line 673
    :try_start_0
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServicesDiscovered thread:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 675
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 676
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    new-instance v2, Lcom/nianticlabs/pokemongoplus/SfidaService;

    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-direct {v2, v5, v0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaService;-><init>(Lcom/nianticlabs/pokemongoplus/HandlerExecutor;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGatt;)V

    .line 677
    .local v2, "sfidaService":Lcom/nianticlabs/pokemongoplus/SfidaService;
    invoke-direct {p0, v2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeDiscoverService(Lcom/nianticlabs/pokemongoplus/SfidaService;)V

    .line 678
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 680
    .end local v0    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "sfidaService":Lcom/nianticlabs/pokemongoplus/SfidaService;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->discoverServicesCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    if-eqz v3, :cond_1

    .line 682
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->discoverServicesCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v3, v9, v4}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto :goto_0

    .line 684
    :cond_1
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v4, "onServicesDiscovered() no callback when discover %d service on device %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 685
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 684
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setScanRecord([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->scanRecord:[B

    .line 215
    monitor-exit p0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryCompleteConnect()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 590
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryCompleteConnect, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v4}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bond: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "Tid: %d tryCompleteConnect()"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    sget-object v3, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-ne v2, v3, :cond_0

    .line 593
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->connectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    if-eqz v2, :cond_0

    .line 594
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "calling onConnectionStateChanged. state = %s"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v5}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->connectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v0, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;->onConnectionStateChanged(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 596
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->connectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    .line 600
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
