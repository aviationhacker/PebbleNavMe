.class final Lcom/google/common/collect/TreeRangeMap$b;
.super Lhh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lhh",
        "<",
        "Lcom/google/common/collect/Range",
        "<TK;>;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lhh;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$b;->a:Lcom/google/common/collect/Range;

    .line 79
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeMap$b;->b:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method constructor <init>(Lic;Lic;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lic",
            "<TK;>;",
            "Lic",
            "<TK;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/google/common/collect/TreeRangeMap$b;-><init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    .line 75
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$b;->a:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method public a(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$b;->a:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method b()Lic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$b;->a:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lic;

    return-object v0
.end method

.method c()Lic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$b;->a:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    return-object v0
.end method

.method public synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$b;->a()Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$b;->b:Ljava/lang/Object;

    return-object v0
.end method
