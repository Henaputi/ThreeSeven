.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->readValue(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
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
    .line 128
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 131
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v1, v2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$602(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 134
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$300(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 136
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$600(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 139
    :cond_0
    return-void
.end method
