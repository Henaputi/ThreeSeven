.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2$1;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnStateChanged(Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;)V
    .locals 6
    .param p1, "state"    # Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    .prologue
    .line 97
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tid: %d startDriver(), OnStateChanged"

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

    .line 98
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 99
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->getInt()I

    move-result v1

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->nativeStartCallback(I)V
    invoke-static {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$200(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;I)V

    .line 100
    return-void
.end method
