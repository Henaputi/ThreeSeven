.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5$1;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;

.field final synthetic val$error:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;

    iput-boolean p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5$1;->val$success:Z

    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5$1;->val$error:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iget-boolean v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5$1;->val$success:Z

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5$1;->val$error:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->getInt()I

    move-result v2

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeReadCompleteCallback(ZI)V
    invoke-static {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$700(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZI)V

    .line 150
    return-void
.end method
