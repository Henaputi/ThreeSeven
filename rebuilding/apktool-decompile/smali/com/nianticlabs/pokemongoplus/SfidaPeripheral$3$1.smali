.class Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3$1;
.super Ljava/lang/Object;
.source "SfidaPeripheral.java"

# interfaces
.implements Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
    .locals 8
    .param p1, "success"    # Z
    .param p2, "error"    # Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 297
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tid: %d connect() onConnectionStateChanged()"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-nez p1, :cond_0

    .line 299
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect() FAILED, state = %d, bond: %d, ERROR: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;

    iget-object v3, v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .line 300
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
    invoke-static {v3}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$400(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;

    iget-object v3, v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondState:I
    invoke-static {v3}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 299
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    invoke-virtual {p2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->getInt()I

    move-result v1

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeConnectCallback(ZI)V
    invoke-static {v0, p1, v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$600(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZI)V

    .line 303
    return-void
.end method
