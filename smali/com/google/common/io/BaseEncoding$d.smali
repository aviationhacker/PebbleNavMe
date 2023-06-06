.class final Lcom/google/common/io/BaseEncoding$d;
.super Lcom/google/common/io/BaseEncoding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/google/common/io/BaseEncoding;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/io/BaseEncoding;Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 988
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding;-><init>()V

    .line 989
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/BaseEncoding;

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    .line 990
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->b:Ljava/lang/String;

    .line 991
    iput p3, p0, Lcom/google/common/io/BaseEncoding$d;->c:I

    .line 992
    if-lez p3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot add a separator after every %s chars"

    new-array v1, v1, [Ljava/lang/Object;

    .line 993
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 992
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 994
    invoke-static {p2}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/base/CharMatcher;

    .line 995
    return-void

    :cond_0
    move v0, v2

    .line 992
    goto :goto_0
.end method


# virtual methods
.method a(I)I
    .locals 5

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->a(I)I

    move-result v0

    .line 1005
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    .line 1006
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/google/common/io/BaseEncoding$d;->c:I

    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v2, v3, v4}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method a([BLjava/lang/CharSequence;)I
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, p2}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/common/io/BaseEncoding;->a([BLjava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method a()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->a()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Appendable;[BII)V
    .locals 3

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$d;->c:I

    invoke-static {p1, v1, v2}, Lcom/google/common/io/BaseEncoding$d;->a(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/common/io/BaseEncoding;->a(Ljava/lang/Appendable;[BII)V

    .line 1018
    return-void
.end method

.method b(I)I
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->b(I)I

    move-result v0

    return v0
.end method

.method public decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Reader,InputStream"
    .end annotation

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/base/CharMatcher;

    invoke-static {p1, v1}, Lcom/google/common/io/BaseEncoding$d;->a(Ljava/io/Reader;Lcom/google/common/base/CharMatcher;)Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding;->decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Writer,OutputStream"
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$d;->c:I

    invoke-static {p1, v1, v2}, Lcom/google/common/io/BaseEncoding$d;->a(Ljava/io/Writer;Ljava/lang/String;I)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding;->encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public lowerCase()Lcom/google/common/io/BaseEncoding;
    .locals 3

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->lowerCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$d;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/BaseEncoding;->withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    return-object v0
.end method

.method public omitPadding()Lcom/google/common/io/BaseEncoding;
    .locals 3

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->omitPadding()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$d;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/BaseEncoding;->withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$d;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".withSeparator(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upperCase()Lcom/google/common/io/BaseEncoding;
    .locals 3

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->upperCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$d;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/BaseEncoding;->withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    return-object v0
.end method

.method public withPadChar(C)Lcom/google/common/io/BaseEncoding;
    .locals 3

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->a:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->withPadChar(C)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$d;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/BaseEncoding;->withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    return-object v0
.end method

.method public withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
    .locals 2

    .prologue
    .line 1048
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Already have a separator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
