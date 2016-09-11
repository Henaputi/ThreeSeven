.class Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$7;
.super Ljava/lang/Object;
.source "SfidaPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->callMonitorDisconnectCallback(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

.field final synthetic val$err:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field final synthetic val$isDisconnected:Z


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$7;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    iput-boolean p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$7;->val$isDisconnected:Z

    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$7;->val$err:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$7;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    iget-boolean v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$7;->val$isDisconnected:Z

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$7;->val$err:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->getInt()I

    move-result v2

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeMonitorDisconnectCallback(ZI)V
    invoke-static {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$1100(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZI)V

    .line 660
    return-void
.end method
