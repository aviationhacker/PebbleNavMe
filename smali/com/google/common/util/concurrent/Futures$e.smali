.class final Lcom/google/common/util/concurrent/Futures$e;
.super Lcom/google/common/util/concurrent/Futures$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lcom/google/common/util/concurrent/Futures$a",
        "<TV;TX;",
        "Lcom/google/common/base/Function",
        "<-TX;+TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/common/base/Function",
            "<-TX;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 838
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/Futures$a;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 839
    return-void
.end method


# virtual methods
.method a(Lcom/google/common/base/Function;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function",
            "<-TX;+TV;>;TX;)V"
        }
    .end annotation

    .prologue
    .line 842
    invoke-interface {p1, p2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 843
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$e;->set(Ljava/lang/Object;)Z

    .line 844
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 834
    check-cast p1, Lcom/google/common/base/Function;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$e;->a(Lcom/google/common/base/Function;Ljava/lang/Throwable;)V

    return-void
.end method
