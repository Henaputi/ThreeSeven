.class Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;
.super Ljava/lang/Object;
.source "SfidaPeripheral.java"

# interfaces
.implements Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "error"    # Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    move-result-object v0

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method
