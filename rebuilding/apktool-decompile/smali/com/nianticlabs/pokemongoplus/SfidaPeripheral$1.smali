.class Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SfidaPeripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 112
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCharacteristicChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    move-result-object v0

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$5;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 79
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCharacteristicRead"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    move-result-object v0

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$3;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 96
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCharacteristicWrite"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    move-result-object v0

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$4;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 53
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnectionStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    move-result-object v0

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;Landroid/bluetooth/BluetoothGatt;II)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 128
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDescriptorWrite"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    move-result-object v0

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$6;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 146
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMthChanged mtu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 66
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServicesDiscovered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    move-result-object v0

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$2;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method
