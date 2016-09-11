.class public Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
.super Lcom/nianticlabs/pokemongoplus/ble/Characteristic;
.source "SfidaCharacteristic.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final RETRIES:I

.field private final SLEEP_DELAY_MS:J

.field private characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private nativeHandle:J

.field private onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

.field private onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

.field private onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

.field private onValueChangedCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;

.field private onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

.field private volatile queue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<[B>;"
        }
    .end annotation
.end field

.field private final serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nianticlabs/pokemongoplus/HandlerExecutor;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V
    .locals 2
    .param p1, "serialExecutor"    # Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/ble/Characteristic;-><init>()V

    .line 22
    const/4 v0, 0x7

    iput v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->RETRIES:I

    .line 23
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->SLEEP_DELAY_MS:J

    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->queue:Ljava/util/ArrayDeque;

    .line 41
    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 42
    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 43
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZZI)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeValueChangedCallback(ZZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeEnableNotifyCallback(ZI)V

    return-void
.end method

.method static synthetic access$1200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeDisableNotifyCallback(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeWriteCompleteCallback(ZI)V

    return-void
.end method

.method static synthetic access$500(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object p1
.end method

.method static synthetic access$700(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeReadCompleteCallback(ZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object v0
.end method

.method static synthetic access$802(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object p1
.end method

.method static synthetic access$900(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object p1
.end method

.method private native nativeDisableNotifyCallback(ZI)V
.end method

.method private native nativeEnableNotifyCallback(ZI)V
.end method

.method private native nativeReadCompleteCallback(ZI)V
.end method

.method private native nativeSaveValueChangedCallback([B)V
.end method

.method private native nativeValueChangedCallback(ZZI)V
.end method

.method private native nativeWriteCompleteCallback(ZI)V
.end method


# virtual methods
.method public cancelNotify()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onValueChangedCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;

    .line 72
    return-void
.end method

.method public disableNotify()V
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->disableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 269
    return-void
.end method

.method public disableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;

    invoke-direct {v1, p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public enableNotify()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->enableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 218
    return-void
.end method

.method public enableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;

    invoke-direct {v1, p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 55
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 67
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public notifyValueChanged()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onValueChangedCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;

    .line 81
    return-void
.end method

.method public onCharacteristicChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 272
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 273
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    const-string v2, "onCharacteristicChanged: %s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 275
    .local v0, "receivedValue":[B
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onValueChangedCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;

    if-eqz v1, :cond_0

    .line 276
    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeSaveValueChangedCallback([B)V

    .line 277
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onValueChangedCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v6, v6, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;->OnValueChange(ZZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 280
    :cond_0
    return-void
.end method

.method public onCharacteristicRead(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 294
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 295
    if-nez p1, :cond_0

    .line 296
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    const-string v1, "onCharacteristicRead: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeSaveValueChangedCallback([B)V

    .line 298
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v0, v5, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v0, v4, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto :goto_0
.end method

.method public onCharacteristicWrite(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 284
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    if-eqz v0, :cond_0

    .line 285
    if-nez p1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    const/4 v1, 0x1

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    const/4 v1, 0x0

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto :goto_0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 7
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    const-string v3, "onDescriptorWrite status:%d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 307
    if-nez p2, :cond_1

    .line 308
    .local v0, "succeeded":Z
    :goto_0
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v0, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 310
    iput-object v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 315
    :cond_0
    :goto_1
    return-void

    .end local v0    # "succeeded":Z
    :cond_1
    move v0, v1

    .line 307
    goto :goto_0

    .line 311
    .restart local v0    # "succeeded":Z
    :cond_2
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v0, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 313
    iput-object v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 48
    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 49
    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 50
    return-void
.end method

.method public readValue()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->readValue(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 154
    return-void
.end method

.method public readValue(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;

    invoke-direct {v1, p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public writeByteArray([B)V
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 112
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$3;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$3;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-virtual {p0, p1, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->writeByteArray([BLcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 124
    return-void
.end method

.method public writeByteArray([BLcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .locals 2
    .param p1, "byteArray"    # [B
    .param p2, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;[B)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method
