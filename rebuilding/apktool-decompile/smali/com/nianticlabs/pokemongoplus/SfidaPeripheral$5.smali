.class Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;
.super Landroid/content/BroadcastReceiver;
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
    .line 456
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onHandleBluetoothIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 464
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 466
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onReceived() action was null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-void

    .line 469
    :cond_0
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceived() action was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 484
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() : Error unhandled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :sswitch_0
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 474
    :pswitch_0
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_BOND_STATE_CHANGED, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
    invoke-static {v4}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$400(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bond: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I
    invoke-static {v4}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->onBondStateChanged(Landroid/content/Intent;)V
    invoke-static {v2, p1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$800(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 479
    :pswitch_1
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_PAIRING_REQUEST, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
    invoke-static {v4}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$400(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bond: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I
    invoke-static {v4}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 481
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->onPairingRequest(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$900(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 472
    :sswitch_data_0
    .sparse-switch
        -0xd553507 -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 459
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bluetoothReceiver onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-direct {p0, p2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;->onHandleBluetoothIntent(Landroid/content/Intent;)V

    .line 461
    return-void
.end method
