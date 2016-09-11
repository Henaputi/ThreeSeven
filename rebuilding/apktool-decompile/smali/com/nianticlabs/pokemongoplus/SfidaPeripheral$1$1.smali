.class Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$1;
.super Ljava/lang/Object;
.source "SfidaPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$newState:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;

    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$1;->val$status:I

    iput p4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$1;->val$newState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 58
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnectionStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$1;->val$status:I

    iget v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1$1;->val$newState:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 60
    return-void
.end method
