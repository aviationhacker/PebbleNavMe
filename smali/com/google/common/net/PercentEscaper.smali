.class public final Lcom/google/common/net/PercentEscaper;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final a:[C

.field private static final b:[C


# instance fields
.field private final c:Z

.field private final d:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/common/net/PercentEscaper;->a:[C

    .line 65
    const-string v0, "0123456789ABCDEF"

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/net/PercentEscaper;->b:[C

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    .line 98
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz p2, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    iput-boolean p2, p0, Lcom/google/common/net/PercentEscaper;->c:Z

    .line 115
    invoke-static {v0}, Lcom/google/common/net/PercentEscaper;->a(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/net/PercentEscaper;->d:[Z

    .line 116
    return-void
.end method

.method private static a(Ljava/lang/String;)[Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 124
    const/4 v1, -0x1

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 126
    array-length v4, v3

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-char v5, v3, v1

    .line 127
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    add-int/lit8 v1, v2, 0x1

    new-array v1, v1, [Z

    .line 130
    array-length v2, v3

    :goto_1
    if-ge v0, v2, :cond_1

    aget-char v4, v3, v0

    .line 131
    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_1
    return-object v1
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 162
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 164
    iget-object v3, p0, Lcom/google/common/net/PercentEscaper;->d:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/common/net/PercentEscaper;->d:[Z

    aget-boolean v2, v3, v2

    if-nez v2, :cond_2

    .line 165
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/common/net/PercentEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 168
    :cond_1
    return-object p1

    .line 162
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected escape(I)[C
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x25

    .line 178
    iget-object v0, p0, Lcom/google/common/net/PercentEscaper;->d:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/net/PercentEscaper;->d:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 244
    :goto_0
    return-object v0

    .line 180
    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/google/common/net/PercentEscaper;->c:Z

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lcom/google/common/net/PercentEscaper;->a:[C

    goto :goto_0

    .line 182
    :cond_1
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_2

    .line 185
    new-array v0, v3, [C

    .line 186
    aput-char v2, v0, v1

    .line 187
    sget-object v1, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 188
    sget-object v1, Lcom/google/common/net/PercentEscaper;->b:[C

    ushr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    goto :goto_0

    .line 190
    :cond_2
    const/16 v0, 0x7ff

    if-gt p1, v0, :cond_3

    .line 193
    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 194
    aput-char v2, v0, v1

    .line 195
    aput-char v2, v0, v3

    .line 196
    const/4 v1, 0x5

    sget-object v2, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 197
    ushr-int/lit8 v1, p1, 0x4

    .line 198
    const/4 v2, 0x4

    sget-object v3, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 199
    ushr-int/lit8 v1, v1, 0x2

    .line 200
    sget-object v2, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v3, v1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v6

    .line 201
    ushr-int/lit8 v1, v1, 0x4

    .line 202
    sget-object v2, Lcom/google/common/net/PercentEscaper;->b:[C

    or-int/lit8 v1, v1, 0xc

    aget-char v1, v2, v1

    aput-char v1, v0, v5

    goto :goto_0

    .line 204
    :cond_3
    const v0, 0xffff

    if-gt p1, v0, :cond_4

    .line 207
    const/16 v0, 0x9

    new-array v0, v0, [C

    .line 208
    aput-char v2, v0, v1

    .line 209
    const/16 v1, 0x45

    aput-char v1, v0, v5

    .line 210
    aput-char v2, v0, v3

    .line 211
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 212
    const/16 v1, 0x8

    sget-object v2, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 213
    ushr-int/lit8 v1, p1, 0x4

    .line 214
    const/4 v2, 0x7

    sget-object v3, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 215
    ushr-int/lit8 v1, v1, 0x2

    .line 216
    const/4 v2, 0x5

    sget-object v3, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 217
    ushr-int/lit8 v1, v1, 0x4

    .line 218
    const/4 v2, 0x4

    sget-object v3, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 219
    ushr-int/lit8 v1, v1, 0x2

    .line 220
    sget-object v2, Lcom/google/common/net/PercentEscaper;->b:[C

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    goto/16 :goto_0

    .line 222
    :cond_4
    const v0, 0x10ffff

    if-gt p1, v0, :cond_5

    .line 223
    const/16 v0, 0xc

    new-array v0, v0, [C

    .line 226
    aput-char v2, v0, v1

    .line 227
    const/16 v1, 0x46

    aput-char v1, v0, v5

    .line 228
    aput-char v2, v0, v3

    .line 229
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 230
    const/16 v1, 0x9

    aput-char v2, v0, v1

    .line 231
    const/16 v1, 0xb

    sget-object v2, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 232
    ushr-int/lit8 v1, p1, 0x4

    .line 233
    const/16 v2, 0xa

    sget-object v3, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 234
    ushr-int/lit8 v1, v1, 0x2

    .line 235
    const/16 v2, 0x8

    sget-object v3, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 236
    ushr-int/lit8 v1, v1, 0x4

    .line 237
    const/4 v2, 0x7

    sget-object v3, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 238
    ushr-int/lit8 v1, v1, 0x2

    .line 239
    const/4 v2, 0x5

    sget-object v3, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 240
    ushr-int/lit8 v1, v1, 0x4

    .line 241
    const/4 v2, 0x4

    sget-object v3, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 242
    ushr-int/lit8 v1, v1, 0x2

    .line 243
    sget-object v2, Lcom/google/common/net/PercentEscaper;->b:[C

    and-int/lit8 v1, v1, 0x7

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    goto/16 :goto_0

    .line 247
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid unicode character value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2

    .prologue
    .line 143
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :goto_0
    if-ge p2, p3, :cond_0

    .line 145
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->d:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->d:[Z

    aget-boolean v0, v1, v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    return p2

    .line 144
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
