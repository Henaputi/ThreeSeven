.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->enableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
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
    .line 158
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x7

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 161
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iget-object v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v5, v6}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$802(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 162
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v5, v12}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$902(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_0

    .line 166
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$300(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    iget-object v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v6}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v4

    .line 167
    .local v4, "success":Z
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setCharacteristicNotification success: %b"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-eqz v4, :cond_4

    .line 175
    .end local v4    # "success":Z
    :cond_0
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_1

    .line 176
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Enable Notify not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    .line 179
    .local v2, "previousValue":[B
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    sget-object v6, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 181
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Config characteristic:%s descriptor:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-virtual {v8}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz v0, :cond_3

    .line 183
    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 184
    const/4 v3, 0x0

    .line 185
    .local v3, "result":Z
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v11, :cond_2

    .line 186
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$300(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v3

    .line 187
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Write descriptor success: %b"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz v3, :cond_5

    .line 195
    :cond_2
    if-nez v3, :cond_3

    .line 196
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$800(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v5

    sget-object v6, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v5, v9, v6}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 197
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v5, v12}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$802(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 200
    .end local v3    # "result":Z
    :cond_3
    return-void

    .line 170
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v2    # "previousValue":[B
    .restart local v4    # "success":Z
    :cond_4
    const-wide/16 v6, 0xfa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 190
    .end local v4    # "success":Z
    .restart local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .restart local v2    # "previousValue":[B
    .restart local v3    # "result":Z
    :cond_5
    const-wide/16 v6, 0xfa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v2    # "previousValue":[B
    .end local v3    # "result":Z
    .restart local v4    # "success":Z
    :catch_0
    move-exception v5

    goto :goto_2

    .line 191
    .end local v4    # "success":Z
    .restart local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .restart local v2    # "previousValue":[B
    .restart local v3    # "result":Z
    :catch_1
    move-exception v5

    goto :goto_3
.end method
