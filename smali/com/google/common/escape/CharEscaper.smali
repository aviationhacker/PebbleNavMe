.class public abstract Lcom/google/common/escape/CharEscaper;
.super Lcom/google/common/escape/Escaper;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method private static a([CII)[C
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    new-array v0, p2, [C

    .line 164
    if-lez p1, :cond_0

    .line 165
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 62
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v2

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/google/common/escape/CharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 67
    :cond_0
    return-object p1

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract escape(C)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 85
    invoke-static {}, Lks;->a()[C

    move-result-object v3

    .line 86
    array-length v2, v3

    move v0, v5

    move v1, v5

    .line 92
    :goto_0
    if-ge p2, v6, :cond_3

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v4

    .line 98
    if-nez v4, :cond_0

    .line 92
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    array-length v7, v4

    .line 101
    sub-int v8, p2, v0

    .line 106
    add-int v9, v1, v8

    add-int/2addr v9, v7

    .line 107
    if-ge v2, v9, :cond_1

    .line 108
    sub-int v2, v6, p2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v9

    .line 109
    invoke-static {v3, v1, v2}, Lcom/google/common/escape/CharEscaper;->a([CII)[C

    move-result-object v3

    .line 113
    :cond_1
    if-lez v8, :cond_6

    .line 114
    invoke-virtual {p1, v0, p2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 115
    add-int v0, v1, v8

    .line 119
    :goto_2
    if-lez v7, :cond_2

    .line 120
    invoke-static {v4, v5, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    add-int/2addr v0, v7

    .line 123
    :cond_2
    add-int/lit8 v1, p2, 0x1

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_1

    .line 127
    :cond_3
    sub-int v4, v6, v0

    .line 128
    if-lez v4, :cond_5

    .line 129
    add-int/2addr v4, v1

    .line 130
    if-ge v2, v4, :cond_4

    .line 133
    invoke-static {v3, v1, v4}, Lcom/google/common/escape/CharEscaper;->a([CII)[C

    move-result-object v3

    .line 135
    :cond_4
    invoke-virtual {p1, v0, v6, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    move v1, v4

    .line 138
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_6
    move v0, v1

    goto :goto_2
.end method
