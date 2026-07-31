.class public abstract Lcom/google/common/escape/ArrayBasedCharEscaper;
.super Lcom/google/common/escape/CharEscaper;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final a:[[C

.field private final b:I

.field private final c:C

.field private final d:C


# direct methods
.method protected constructor <init>(Lcom/google/common/escape/ArrayBasedEscaperMap;CC)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/common/escape/CharEscaper;-><init>()V

    .line 98
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->a()[[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->a:[[C

    .line 100
    iget-object v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->a:[[C

    array-length v0, v0

    iput v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->b:I

    .line 101
    if-ge p3, p2, :cond_0

    .line 104
    const/4 p3, 0x0

    .line 105
    const p2, 0xffff

    .line 107
    :cond_0
    iput-char p2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->c:C

    .line 108
    iput-char p3, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->d:C

    .line 109
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;CC)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;CC)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->create(Ljava/util/Map;)Lcom/google/common/escape/ArrayBasedEscaperMap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/common/escape/ArrayBasedCharEscaper;-><init>(Lcom/google/common/escape/ArrayBasedEscaperMap;CC)V

    .line 78
    return-void
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 121
    iget v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->b:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->a:[[C

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    :cond_0
    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->d:C

    if-gt v1, v2, :cond_1

    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->c:C

    if-ge v1, v2, :cond_3

    .line 123
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/common/escape/ArrayBasedCharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_2
    return-object p1

    .line 119
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final escape(C)[C
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->b:I

    if-ge p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->a:[[C

    aget-object v0, v0, p1

    .line 137
    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget-char v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->c:C

    if-lt p1, v0, :cond_1

    iget-char v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->d:C

    if-gt p1, v0, :cond_1

    .line 142
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/escape/ArrayBasedCharEscaper;->escapeUnsafe(C)[C

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract escapeUnsafe(C)[C
.end method
