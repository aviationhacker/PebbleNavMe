.class public final Lcom/google/common/base/Utf8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .locals 5

    .prologue
    .line 84
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 85
    const/4 v1, 0x0

    move v0, p1

    .line 86
    :goto_0
    if-ge v0, v2, :cond_3

    .line 87
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 88
    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    .line 89
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v1, v3

    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    add-int/lit8 v1, v1, 0x2

    .line 93
    const v4, 0xd800

    if-gt v4, v3, :cond_0

    const v4, 0xdfff

    if-gt v3, v4, :cond_0

    .line 95
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Lcom/google/common/base/Utf8;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_3
    return v1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BII)Z
    .locals 8

    .prologue
    const/16 v7, -0x20

    const/16 v6, -0x60

    const/4 v1, 0x0

    const/16 v5, -0x41

    .line 143
    .line 149
    :goto_0
    if-lt p1, p2, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 195
    :goto_1
    return v0

    .line 152
    :cond_0
    add-int/lit8 v2, p1, 0x1

    aget-byte v0, p0, p1

    if-gez v0, :cond_c

    .line 154
    if-ge v0, v7, :cond_3

    .line 156
    if-ne v2, p2, :cond_1

    move v0, v1

    .line 157
    goto :goto_1

    .line 161
    :cond_1
    const/16 v3, -0x3e

    if-lt v0, v3, :cond_2

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    if-le v2, v5, :cond_b

    :cond_2
    move v0, v1

    .line 162
    goto :goto_1

    .line 164
    :cond_3
    const/16 v3, -0x10

    if-ge v0, v3, :cond_8

    .line 166
    add-int/lit8 v3, v2, 0x1

    if-lt v3, p2, :cond_4

    move v0, v1

    .line 167
    goto :goto_1

    .line 169
    :cond_4
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    .line 170
    if-gt v2, v5, :cond_7

    if-ne v0, v7, :cond_5

    if-lt v2, v6, :cond_7

    :cond_5
    const/16 v4, -0x13

    if-ne v0, v4, :cond_6

    if-le v6, v2, :cond_7

    :cond_6
    add-int/lit8 v0, v3, 0x1

    aget-byte v2, p0, v3

    if-le v2, v5, :cond_b

    :cond_7
    move v0, v1

    .line 177
    goto :goto_1

    .line 181
    :cond_8
    add-int/lit8 v3, v2, 0x2

    if-lt v3, p2, :cond_9

    move v0, v1

    .line 182
    goto :goto_1

    .line 184
    :cond_9
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    .line 185
    if-gt v2, v5, :cond_a

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_a

    add-int/lit8 v2, v3, 0x1

    aget-byte v0, p0, v3

    if-gt v0, v5, :cond_a

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    if-le v2, v5, :cond_b

    :cond_a
    move v0, v1

    .line 195
    goto :goto_1

    :cond_b
    move p1, v0

    .line 198
    goto :goto_0

    :cond_c
    move p1, v2

    goto :goto_0
.end method

.method public static encodedLength(Ljava/lang/CharSequence;)I
    .locals 6
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 55
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 57
    const/4 v0, 0x0

    .line 60
    :goto_0
    if-ge v0, v2, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x80

    if-ge v1, v3, :cond_3

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :goto_1
    if-ge v1, v2, :cond_1

    .line 66
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 67
    const/16 v4, 0x800

    if-ge v3, v4, :cond_0

    .line 68
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v0

    .line 65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    .line 70
    :cond_0
    invoke-static {p0, v1}, Lcom/google/common/base/Utf8;->a(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_1
    if-ge v0, v2, :cond_2

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    int-to-long v2, v0

    const-wide v4, 0x100000000L

    add-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x36

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_2
    return v0

    :cond_3
    move v1, v0

    move v0, v2

    goto :goto_1
.end method

.method public static isWellFormed([B)Z
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Utf8;->isWellFormed([BII)Z

    move-result v0

    return v0
.end method

.method public static isWellFormed([BII)Z
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 131
    add-int v0, p1, p2

    .line 132
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 134
    :goto_0
    if-ge p1, v0, :cond_1

    .line 135
    aget-byte v1, p0, p1

    if-gez v1, :cond_0

    .line 136
    invoke-static {p0, p1, v0}, Lcom/google/common/base/Utf8;->a([BII)Z

    move-result v0

    .line 139
    :goto_1
    return v0

    .line 134
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
