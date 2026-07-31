.class Lcom/google/common/base/CharMatcher$v;
.super Lcom/google/common/base/CharMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
.end annotation


# instance fields
.field final c:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;)V
    .locals 1

    .prologue
    .line 1505
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 1506
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    iput-object v0, p0, Lcom/google/common/base/CharMatcher$v;->c:Lcom/google/common/base/CharMatcher;

    .line 1507
    return-void
.end method


# virtual methods
.method a(Ljava/util/BitSet;)V
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 1532
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1533
    iget-object v1, p0, Lcom/google/common/base/CharMatcher$v;->c:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->a(Ljava/util/BitSet;)V

    .line 1534
    const/4 v1, 0x0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->flip(II)V

    .line 1535
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1536
    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1501
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 2

    .prologue
    .line 1526
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$v;->c:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, p1}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public matches(C)Z
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$v;->c:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$v;->c:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$v;->c:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$v;->c:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$v;->c:Lcom/google/common/base/CharMatcher;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".negate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
