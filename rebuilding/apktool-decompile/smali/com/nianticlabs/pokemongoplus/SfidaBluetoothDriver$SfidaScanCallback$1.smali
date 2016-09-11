.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$scanRecord:[B


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$address:Ljava/lang/String;

    iput-object p4, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$scanRecord:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 198
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->IsScanning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "deviceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->peripheralName:Ljava/lang/String;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->access$700(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$300(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$800(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$address:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 209
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-+- SfidaBluetoothDriver SfidaScanCallback new peripheral: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$address:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v3, v3, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$900(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$scanRecord:[B

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;-><init>(Lcom/nianticlabs/pokemongoplus/HandlerExecutor;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;[B)V

    .line 211
    .local v1, "foundPeripheral":Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$800(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$address:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :goto_1
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$300(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;->onScan(Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V

    goto :goto_0

    .line 213
    .end local v1    # "foundPeripheral":Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    :cond_2
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$800(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$address:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .line 214
    .restart local v1    # "foundPeripheral":Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$scanRecord:[B

    invoke-virtual {v1, v2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->setScanRecord([B)V

    goto :goto_1
.end method
