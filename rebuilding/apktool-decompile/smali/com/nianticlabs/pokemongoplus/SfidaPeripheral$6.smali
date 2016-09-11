.class Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$6;
.super Ljava/lang/Object;
.source "SfidaPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->reconnnectFromBonding(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$6;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->retryConnect()V
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$1000(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V

    .line 497
    return-void
.end method
