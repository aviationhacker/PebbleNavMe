.class final Lcom/google/common/util/concurrent/Futures$f;
.super Lcom/google/common/util/concurrent/Futures$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Futures$b",
        "<TI;TO;",
        "Lcom/google/common/base/Function",
        "<-TI;+TO;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TI;>;",
            "Lcom/google/common/base/Function",
            "<-TI;+TO;>;)V"
        }
    .end annotation

    .prologue
    .line 1458
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$b;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V

    .line 1459
    return-void
.end method


# virtual methods
.method a(Lcom/google/common/base/Function;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function",
            "<-TI;+TO;>;TI;)V"
        }
    .end annotation

    .prologue
    .line 1464
    invoke-interface {p1, p2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$f;->set(Ljava/lang/Object;)Z

    .line 1465
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1453
    check-cast p1, Lcom/google/common/base/Function;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$f;->a(Lcom/google/common/base/Function;Ljava/lang/Object;)V

    return-void
.end method
