.class Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$6;
.super Ljava/lang/Object;
.source "SfidaPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;

.field final synthetic val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$6;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;

    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$6;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$6;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iput p4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$6;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 132
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDescriptorWrite"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$6;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;

    iget-object v1, v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$6;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;

    iget-object v1, v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaService;

    .line 135
    .local v0, "service":Lcom/nianticlabs/pokemongoplus/SfidaService;
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$6;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$6;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$6;->val$status:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/nianticlabs/pokemongoplus/SfidaService;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    goto :goto_0

    .line 137
    .end local v0    # "service":Lcom/nianticlabs/pokemongoplus/SfidaService;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    return-void
.end method
