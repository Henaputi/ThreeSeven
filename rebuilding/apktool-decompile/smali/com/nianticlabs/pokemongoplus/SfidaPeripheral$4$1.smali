.class Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4$1;
.super Ljava/lang/Object;
.source "SfidaPeripheral.java"

# interfaces
.implements Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "error"    # Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .prologue
    .line 318
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tid: %d disconnect() onConnectionStateChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    invoke-virtual {p2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->getInt()I

    move-result v1

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeDisconnectCallback(ZI)V
    invoke-static {v0, p1, v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$700(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZI)V

    .line 320
    return-void
.end method
