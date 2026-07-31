.class final Ljj$o;
.super Ljj$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
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
.field private static final serialVersionUID:J = 0x3L


# direct methods
.method constructor <init>(Ljj$q;Ljj$q;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapMaker$e;Ljava/util/concurrent/ConcurrentMap;)V
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
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4063
    invoke-direct/range {p0 .. p12}, Ljj$b;-><init>(Ljj$q;Ljj$q;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapMaker$e;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4074
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 4082
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4083
    invoke-virtual {p0, p1}, Ljj$o;->a(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 4084
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Ljj$o;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 4085
    invoke-virtual {p0, p1}, Ljj$o;->b(Ljava/io/ObjectInputStream;)V

    .line 4086
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4089
    iget-object v0, p0, Ljj$o;->k:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 4077
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 4078
    invoke-virtual {p0, p1}, Ljj$o;->a(Ljava/io/ObjectOutputStream;)V

    .line 4079
    return-void
.end method
