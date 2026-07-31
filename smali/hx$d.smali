.class final Lhx$d;
.super Ljj$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljj$b",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final a:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljj$q;Ljj$q;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapMaker$e;Ljava/util/concurrent/ConcurrentMap;Lcom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$q;",
            "Ljj$q;",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;JJII",
            "Lcom/google/common/collect/MapMaker$e",
            "<-TK;-TV;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 415
    invoke-direct/range {p0 .. p12}, Ljj$b;-><init>(Ljj$q;Ljj$q;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapMaker$e;Ljava/util/concurrent/ConcurrentMap;)V

    .line 426
    iput-object p13, p0, Lhx$d;->a:Lcom/google/common/base/Function;

    .line 427
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 437
    invoke-virtual {p0, p1}, Lhx$d;->a(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lhx$d;->a:Lcom/google/common/base/Function;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lhx$d;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 439
    invoke-virtual {p0, p1}, Lhx$d;->b(Ljava/io/ObjectInputStream;)V

    .line 440
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 430
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 431
    invoke-virtual {p0, p1}, Lhx$d;->a(Ljava/io/ObjectOutputStream;)V

    .line 432
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lhx$d;->k:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method
