.class public final Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideUpsightContextFactory;
.super Ljava/lang/Object;
.source "BaseManagedVariablesModule_ProvideUpsightContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/UpsightContext;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideUpsightContextFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideUpsightContextFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideUpsightContextFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideUpsightContextFactory;->module:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    .line 20
    return-void
.end method

.method public static create(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;",
            ")",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideUpsightContextFactory;

    invoke-direct {v0, p0}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideUpsightContextFactory;-><init>(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/UpsightContext;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideUpsightContextFactory;->module:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    .line 25
    invoke-virtual {v0}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;->provideUpsightContext()Lcom/upsight/android/UpsightContext;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideUpsightContextFactory;->get()Lcom/upsight/android/UpsightContext;

    move-result-object v0

    return-object v0
.end method
