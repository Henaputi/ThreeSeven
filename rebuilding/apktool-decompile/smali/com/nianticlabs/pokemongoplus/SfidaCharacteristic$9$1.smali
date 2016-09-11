.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;

.field final synthetic val$error:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;

    iput-boolean p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;->val$success:Z

    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;->val$error:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 262
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableNotify callback success: %b error[%d]:%s UUID:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;->val$success:Z

    .line 263
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;->val$error:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-virtual {v4}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;->val$error:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-virtual {v4}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;

    iget-object v4, v4, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-virtual {v4}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 262
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;

    iget-object v0, v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iget-boolean v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;->val$success:Z

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9$1;->val$error:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->getInt()I

    move-result v2

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeDisableNotifyCallback(ZI)V
    invoke-static {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZI)V

    .line 265
    return-void
.end method
