.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SfidaScanCallback"
.end annotation


# instance fields
.field private peripheralName:Ljava/lang/String;

.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;


# direct methods
.method public constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Ljava/lang/String;)V
    .locals 0
    .param p2, "peripheralName"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->peripheralName:Ljava/lang/String;

    .line 190
    return-void
.end method

.method static synthetic access$700(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->peripheralName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    move-result-object v1

    new-instance v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;[B)V

    invoke-virtual {v1, v2}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method
