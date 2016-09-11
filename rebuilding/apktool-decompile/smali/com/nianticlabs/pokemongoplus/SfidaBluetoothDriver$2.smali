.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->startDriver()V
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
    .line 89
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 92
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tid: %d startDriver()"

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

    .line 94
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2$1;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->start(Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;)I

    .line 102
    return-void
.end method
