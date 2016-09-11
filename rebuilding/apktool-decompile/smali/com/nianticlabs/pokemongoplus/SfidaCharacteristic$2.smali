.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->writeByteArray([BLcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

.field final synthetic val$byteArray:[B

.field final synthetic val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;->val$byteArray:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 89
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v2, v3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$102(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 92
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;->val$byteArray:[B

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$300(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    .line 96
    if-eqz v1, :cond_2

    .line 103
    :cond_0
    if-nez v1, :cond_1

    .line 104
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v2, v3, v4}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 105
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    const/4 v3, 0x0

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v2, v3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$102(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 107
    :cond_1
    return-void

    .line 98
    :cond_2
    const-wide/16 v2, 0xfa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    goto :goto_1
.end method
