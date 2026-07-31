.class final Lcom/google/common/base/CharMatcher$m;
.super Lcom/google/common/base/CharMatcher$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation


# instance fields
.field private final a:C

.field private final b:C


# direct methods
.method constructor <init>(CC)V
    .locals 0

    .prologue
    .line 1711
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$h;-><init>()V

    .line 1712
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$m;->a:C

    .line 1713
    iput-char p2, p0, Lcom/google/common/base/CharMatcher$m;->b:C

    .line 1714
    return-void
.end method


# virtual methods
.method a(Ljava/util/BitSet;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 1724
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$m;->a:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 1725
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$m;->b:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 1726
    return-void
.end method

.method public matches(C)Z
    .locals 1

    .prologue
    .line 1718
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$m;->a:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$m;->b:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1730
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$m;->a:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$m;->b:C

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "CharMatcher.anyOf(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
