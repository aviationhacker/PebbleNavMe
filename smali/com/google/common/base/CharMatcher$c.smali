.class final Lcom/google/common/base/CharMatcher$c;
.super Lcom/google/common/base/CharMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:[C


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1739
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 1740
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/CharMatcher$c;->a:[C

    .line 1741
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$c;->a:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 1742
    return-void
.end method


# virtual methods
.method a(Ljava/util/BitSet;)V
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 1752
    iget-object v1, p0, Lcom/google/common/base/CharMatcher$c;->a:[C

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-char v3, v1, v0

    .line 1753
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1755
    :cond_0
    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1735
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$c;->a:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1759
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "CharMatcher.anyOf(\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1760
    iget-object v2, p0, Lcom/google/common/base/CharMatcher$c;->a:[C

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-char v4, v2, v0

    .line 1761
    invoke-static {v4}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1763
    :cond_0
    const-string v0, "\")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
