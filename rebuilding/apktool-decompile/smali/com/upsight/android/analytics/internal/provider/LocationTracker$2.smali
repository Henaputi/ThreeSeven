.class Lcom/upsight/android/analytics/internal/provider/LocationTracker$2;
.super Ljava/lang/Object;
.source "LocationTracker.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/provider/LocationTracker;->purge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/upsight/android/persistence/UpsightDataStoreListener",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/provider/LocationTracker;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/provider/LocationTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker$2;->this$0:Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 5
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker$2;->this$0:Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    # getter for: Lcom/upsight/android/analytics/internal/provider/LocationTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->access$200(Lcom/upsight/android/analytics/internal/provider/LocationTracker;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v1, "Upsight"

    const-string v2, "Failed to remove stale location data."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/provider/LocationTracker$2;->onSuccess(Ljava/util/Set;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    .line 70
    .local v0, "data":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker$2;->this$0:Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    # getter for: Lcom/upsight/android/analytics/internal/provider/LocationTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-static {v2}, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->access$000(Lcom/upsight/android/analytics/internal/provider/LocationTracker;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    goto :goto_0

    .line 72
    .end local v0    # "data":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    :cond_0
    return-void
.end method
