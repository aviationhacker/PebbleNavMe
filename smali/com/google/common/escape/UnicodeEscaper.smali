.class public abstract Lcom/google/common/escape/UnicodeEscaper;
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
    .line 64
    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method private static a([CII)[C
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    new-array v0, p2, [C

    .line 304
    if-lez p1, :cond_0

    .line 305
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    :cond_0
    return-object v0
.end method

.method protected static codePointAt(Ljava/lang/CharSequence;II)I
    .locals 6

    .prologue
    .line 266
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    if-ge p1, p2, :cond_5

    .line 268
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 269
    const v2, 0xd800

    if-lt v0, v2, :cond_0

    const v2, 0xdfff

    if-le v0, v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    const v2, 0xdbff

    if-gt v0, v2, :cond_4

    .line 275
    if-ne v1, p2, :cond_2

    .line 276
    neg-int v0, v0

    goto :goto_0

    .line 279
    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 280
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_0

    .line 283
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x59

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Expected low surrogate but got char \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " at index "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x58

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected low surrogate character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " at index "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index exceeds specified range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 154
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 155
    if-ne v1, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 179
    invoke-static {}, Lks;->a()[C

    move-result-object v3

    move v2, v4

    move v0, v4

    .line 183
    :goto_0
    if-ge p2, v5, :cond_5

    .line 184
    invoke-static {p1, p2, v5}, Lcom/google/common/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 185
    if-gez v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trailing high surrogate at end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v6

    .line 193
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    :goto_1
    add-int/2addr v1, p2

    .line 194
    if-eqz v6, :cond_8

    .line 195
    sub-int v7, p2, v2

    .line 199
    add-int v8, v0, v7

    array-length v9, v6

    add-int/2addr v8, v9

    .line 200
    array-length v9, v3

    if-ge v9, v8, :cond_1

    .line 201
    sub-int v9, v5, p2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x20

    .line 202
    invoke-static {v3, v0, v8}, Lcom/google/common/escape/UnicodeEscaper;->a([CII)[C

    move-result-object v3

    .line 205
    :cond_1
    if-lez v7, :cond_2

    .line 206
    invoke-virtual {p1, v2, p2, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 207
    add-int/2addr v0, v7

    .line 209
    :cond_2
    array-length v2, v6

    if-lez v2, :cond_3

    .line 210
    array-length v2, v6

    invoke-static {v6, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    array-length v2, v6

    add-int/2addr v0, v2

    :cond_3
    move v2, v0

    move v0, v1

    .line 216
    :goto_2
    invoke-virtual {p0, p1, v1, v5}, Lcom/google/common/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    move v10, v0

    move v0, v2

    move v2, v10

    .line 217
    goto :goto_0

    .line 193
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 221
    :cond_5
    sub-int v1, v5, v2

    .line 222
    if-lez v1, :cond_7

    .line 223
    add-int/2addr v1, v0

    .line 224
    array-length v6, v3

    if-ge v6, v1, :cond_6

    .line 225
    invoke-static {v3, v0, v1}, Lcom/google/common/escape/UnicodeEscaper;->a([CII)[C

    move-result-object v3

    .line 227
    :cond_6
    invoke-virtual {p1, v2, v5, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v0, v1

    .line 230
    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_8
    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_2
.end method

.method public nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2

    .prologue
    .line 116
    .line 117
    :goto_0
    if-ge p2, p3, :cond_0

    .line 118
    invoke-static {p1, p2, p3}, Lcom/google/common/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 119
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    return p2

    .line 122
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_1
    add-int/2addr p2, v0

    .line 123
    goto :goto_0

    .line 122
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
