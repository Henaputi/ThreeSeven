.class final enum Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;
.super Ljava/lang/Enum;
.source "SafetyNetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/platform/SafetyNetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GoogleApiState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

.field public static final enum STARTED:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

.field public static final enum STOPPED:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    .line 27
    new-instance v0, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    sget-object v1, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->$VALUES:[Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->$VALUES:[Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    invoke-virtual {v0}, [Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/nia/platform/SafetyNetService$GoogleApiState;

    return-object v0
.end method
