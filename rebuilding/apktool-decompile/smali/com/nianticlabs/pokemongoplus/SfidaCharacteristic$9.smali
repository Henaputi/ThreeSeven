.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->disableNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "error"    # Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    move-result-object v0

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method
