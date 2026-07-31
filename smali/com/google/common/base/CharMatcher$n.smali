.class final Lcom/google/common/base/CharMatcher$n;
.super Lcom/google/common/base/CharMatcher$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 1664
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$h;-><init>()V

    .line 1665
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    .line 1666
    return-void
.end method


# virtual methods
.method a(Ljava/util/BitSet;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 1686
    const/4 v0, 0x0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 1687
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 1688
    return-void
.end method

.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 1675
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher$h;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public matches(C)Z
    .locals 1

    .prologue
    .line 1670
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 1692
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher$n;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 1680
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/base/CharMatcher$n;->any()Lcom/google/common/base/CharMatcher;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1697
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CharMatcher.isNot(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
