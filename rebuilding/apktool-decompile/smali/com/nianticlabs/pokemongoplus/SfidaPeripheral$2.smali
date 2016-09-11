.class Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;
.super Ljava/lang/Object;
.source "SfidaPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->discoverServices()V
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
    .line 266
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->discoverServices(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 283
    return-void
.end method
