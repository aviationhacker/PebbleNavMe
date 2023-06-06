.class public Lhx;
.super Ljj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhx$d;,
        Lhx$e;,
        Lhx$b;,
        Lhx$a;,
        Lhx$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljj",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field protected final a:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljj;-><init>(Lcom/google/common/collect/MapMaker;)V

    .line 51
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lhx;->a:Lcom/google/common/base/Function;

    .line 52
    return-void
.end method


# virtual methods
.method a(I)Lhx$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lhx$c",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-super {p0, p1}, Ljj;->b(I)Ljj$n;

    move-result-object v0

    check-cast v0, Lhx$c;

    return-object v0
.end method

.method protected a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhx;->b(Ljava/lang/Object;)I

    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Lhx;->a(I)Lhx$c;

    move-result-object v1

    iget-object v2, p0, Lhx;->a:Lcom/google/common/base/Function;

    invoke-virtual {v1, p1, v0, v2}, Lhx$c;->a(Ljava/lang/Object;ILcom/google/common/base/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(II)Ljj$n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljj$n",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lhx$c;

    invoke-direct {v0, p0, p1, p2}, Lhx$c;-><init>(Ljj;II)V

    return-object v0
.end method

.method synthetic b(I)Ljj$n;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lhx;->a(I)Lhx$c;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 15

    .prologue
    .line 385
    new-instance v1, Lhx$d;

    iget-object v2, p0, Lhx;->h:Ljj$q;

    iget-object v3, p0, Lhx;->i:Ljj$q;

    iget-object v4, p0, Lhx;->f:Lcom/google/common/base/Equivalence;

    iget-object v5, p0, Lhx;->g:Lcom/google/common/base/Equivalence;

    iget-wide v6, p0, Lhx;->l:J

    iget-wide v8, p0, Lhx;->k:J

    iget v10, p0, Lhx;->j:I

    iget v11, p0, Lhx;->e:I

    iget-object v12, p0, Lhx;->n:Lcom/google/common/collect/MapMaker$e;

    iget-object v14, p0, Lhx;->a:Lcom/google/common/base/Function;

    move-object v13, p0

    invoke-direct/range {v1 .. v14}, Lhx$d;-><init>(Ljj$q;Ljj$q;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapMaker$e;Ljava/util/concurrent/ConcurrentMap;Lcom/google/common/base/Function;)V

    return-object v1
.end method
