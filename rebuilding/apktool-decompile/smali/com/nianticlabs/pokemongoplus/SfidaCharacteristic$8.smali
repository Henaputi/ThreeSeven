.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->disableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

.field final synthetic val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 224
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v5, v11}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$802(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 225
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iget-object v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v5, v6}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$902(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 226
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$300(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    iget-object v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v6}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v4

    .line 228
    .local v4, "success":Z
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 229
    .local v0, "currentValue":[B
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    sget-object v6, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 231
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "disableNotify Config characteristic:%s descriptor:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-virtual {v8}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-eqz v1, :cond_1

    .line 233
    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, "result":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x7

    if-ge v2, v5, :cond_0

    .line 236
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$300(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v3

    .line 237
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "disableNotify Write descriptor success: %b"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-eqz v3, :cond_2

    .line 245
    :cond_0
    if-nez v3, :cond_1

    .line 246
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$900(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v5

    sget-object v6, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v5, v9, v6}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 247
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v5, v11}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$902(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 250
    .end local v2    # "i":I
    .end local v3    # "result":Z
    :cond_1
    return-void

    .line 240
    .restart local v2    # "i":I
    .restart local v3    # "result":Z
    :cond_2
    const-wide/16 v6, 0xfa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v5

    goto :goto_1
.end method
