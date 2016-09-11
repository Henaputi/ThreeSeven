.class public Lcom/nianticlabs/pokemongoplus/SfidaService;
.super Lcom/nianticlabs/pokemongoplus/ble/Service;
.source "SfidaService.java"


# instance fields
.field private characteristicRef:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private nativeHandle:J

.field private final serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

.field private service:Landroid/bluetooth/BluetoothGattService;


# direct methods
.method public constructor <init>(Lcom/nianticlabs/pokemongoplus/HandlerExecutor;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGatt;)V
    .locals 5
    .param p1, "serialExecutor"    # Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    .param p2, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p3, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/ble/Service;-><init>()V

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    .line 25
    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->service:Landroid/bluetooth/BluetoothGattService;

    .line 26
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    .line 27
    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 30
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    .line 31
    .local v1, "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 32
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    new-instance v2, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-direct {v2, p1, v0, p3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;-><init>(Lcom/nianticlabs/pokemongoplus/HandlerExecutor;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    .line 37
    .local v2, "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v2    # "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :cond_0
    return-void
.end method


# virtual methods
.method public discoverCharacteristics(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .locals 0
    .param p1, "complete"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 56
    return-void
.end method

.method public declared-synchronized getCharacteristic(I)Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaService;->getCharacteristicCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCharacteristic(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v4}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 73
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaService;->getCharacteristicCount()I

    move-result v2

    .line 74
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 75
    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .line 76
    .local v0, "characteristic":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "check_uuid":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    .end local v0    # "characteristic":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .end local v1    # "check_uuid":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 74
    .restart local v0    # "characteristic":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .restart local v1    # "check_uuid":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "characteristic":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .end local v1    # "check_uuid":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getCharacteristicCount()I
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 44
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->service:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 101
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .line 103
    .local v0, "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onCharacteristicChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v0    # "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :cond_1
    monitor-exit p0

    return-void

    .line 100
    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 114
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .line 116
    .local v0, "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v0, p3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onCharacteristicRead(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v0    # "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :cond_1
    monitor-exit p0

    return-void

    .line 113
    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 89
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .line 91
    .local v0, "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v0, p3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onCharacteristicWrite(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v0    # "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :cond_1
    monitor-exit p0

    return-void

    .line 88
    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 126
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .line 128
    .local v0, "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v0, p2, p3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v0    # "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :cond_1
    monitor-exit p0

    return-void

    .line 125
    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 136
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 137
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/ble/Characteristic;

    .line 138
    .local v0, "characteristic":Lcom/nianticlabs/pokemongoplus/ble/Characteristic;
    instance-of v3, v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 139
    check-cast v1, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .line 140
    .local v1, "sfidaCharacteristic":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDestroy()V

    goto :goto_0

    .line 143
    .end local v0    # "characteristic":Lcom/nianticlabs/pokemongoplus/ble/Characteristic;
    .end local v1    # "sfidaCharacteristic":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :cond_1
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 144
    return-void
.end method
