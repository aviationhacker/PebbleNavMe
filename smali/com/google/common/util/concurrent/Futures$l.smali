.class Lcom/google/common/util/concurrent/Futures$l;
.super Lcom/google/common/util/concurrent/Futures$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Futures$j",
        "<TV;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/util/concurrent/Futures$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/Futures$l",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lcom/google/common/util/concurrent/Futures$l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/Futures$l;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/common/util/concurrent/Futures$l;->a:Lcom/google/common/util/concurrent/Futures$l;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$j;-><init>(Lcom/google/common/util/concurrent/Futures$1;)V

    .line 194
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$l;->b:Ljava/lang/Object;

    .line 195
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$l;->b:Ljava/lang/Object;

    return-object v0
.end method
