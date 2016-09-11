.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$5;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->stopScanning(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 162
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tid: %d stopScanning()"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$400(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-+- SfidaBluetoothDriver stopScanning IllegalArgumentException"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
