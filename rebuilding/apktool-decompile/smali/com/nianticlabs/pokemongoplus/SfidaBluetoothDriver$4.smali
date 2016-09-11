.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$4;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->startScanning(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$4;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScan(Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V
    .locals 1
    .param p1, "peripheral"    # Lcom/nianticlabs/pokemongoplus/ble/Peripheral;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$4;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->nativeScanCallback(Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V
    invoke-static {v0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$600(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V

    .line 148
    return-void
.end method
