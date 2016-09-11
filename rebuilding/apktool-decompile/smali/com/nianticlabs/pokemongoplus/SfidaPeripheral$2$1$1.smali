.class Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1$1;
.super Ljava/lang/Object;
.source "SfidaPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;

.field final synthetic val$error:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
    .locals 0
    .param p1, "this$2"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1$1;->this$2:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;

    iput-boolean p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1$1;->val$success:Z

    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1$1;->val$error:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 276
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tid: %d discoverServices() callback"

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

    .line 277
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverServices success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1$1;->val$success:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1$1;->val$error:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1$1;->this$2:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    iget-boolean v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1$1;->val$success:Z

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1$1;->val$error:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->getInt()I

    move-result v2

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeDiscoverServicesCallback(ZI)V
    invoke-static {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$300(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZI)V

    .line 279
    return-void
.end method
