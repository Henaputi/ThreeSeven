.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->startScanning(Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

.field final synthetic val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

.field final synthetic val$peripheralName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->val$peripheralName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 132
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tid: %d startScanning()"

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

    .line 133
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->releasePeripherals()V

    .line 134
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;
    invoke-static {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$302(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    .line 135
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->isEnabledBluetoothLe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->val$peripheralName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Ljava/lang/String;)V

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    invoke-static {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$402(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    .line 137
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$400(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 139
    :cond_0
    return-void
.end method
