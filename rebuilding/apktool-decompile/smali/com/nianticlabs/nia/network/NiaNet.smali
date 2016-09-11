.class public Lcom/nianticlabs/nia/network/NiaNet;
.super Ljava/lang/Object;
.source "NiaNet.java"


# static fields
.field private static final CHUNK_SIZE:I = 0x8000

.field static readBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadChunk:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/nianticlabs/nia/network/NiaNet$1;

    invoke-direct {v0}, Lcom/nianticlabs/nia/network/NiaNet$1;-><init>()V

    sput-object v0, Lcom/nianticlabs/nia/network/NiaNet;->threadChunk:Ljava/lang/ThreadLocal;

    .line 24
    new-instance v0, Lcom/nianticlabs/nia/network/NiaNet$2;

    invoke-direct {v0}, Lcom/nianticlabs/nia/network/NiaNet$2;-><init>()V

    sput-object v0, Lcom/nianticlabs/nia/network/NiaNet;->readBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method
