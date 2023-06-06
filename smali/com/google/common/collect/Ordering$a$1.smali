.class Lcom/google/common/collect/Ordering$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Ordering$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lcom/google/common/collect/Ordering$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Ordering$a;)V
    .locals 2

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/common/collect/Ordering$a$1;->b:Lcom/google/common/collect/Ordering$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/Ordering$a$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/common/collect/Ordering$a$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Ordering$a$1;->a(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
