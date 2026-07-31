.class public final Lcom/google/common/primitives/Doubles;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Doubles$a;,
        Lcom/google/common/primitives/Doubles$c;,
        Lcom/google/common/primitives/Doubles$b;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field static final a:Ljava/util/regex/Pattern;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "regular expressions"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 600
    invoke-static {}, Lcom/google/common/primitives/Doubles;->a()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/Doubles;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([DDII)I
    .locals 1

    .prologue
    .line 58
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->c([DDII)I

    move-result v0

    return v0
.end method

.method private static a()Ljava/util/regex/Pattern;
    .locals 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "regular expressions"
    .end annotation

    .prologue
    .line 604
    const-string v0, "(?:\\d++(?:\\.\\d*+)?|\\.\\d++)"

    .line 605
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?:[eE][+-]?\\d++)?[fFdD]?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    const-string v1, "(?:\\p{XDigit}++(?:\\.\\p{XDigit}*+)?|\\.\\p{XDigit}++)"

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "0[xX]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[pP][+-]?\\d++[fFdD]?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "[+-]?(?:NaN|Infinity|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private static a([DI)[D
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    new-array v0, p1, [D

    .line 336
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    return-object v0
.end method

.method public static varargs asList([D)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    array-length v0, p0

    if-nez v0, :cond_0

    .line 454
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Doubles$a;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Doubles$a;-><init>([D)V

    goto :goto_0
.end method

.method static synthetic b([DDII)I
    .locals 1

    .prologue
    .line 58
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->d([DDII)I

    move-result v0

    return v0
.end method

.method private static c([DDII)I
    .locals 5

    .prologue
    .line 148
    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_1

    .line 149
    aget-wide v2, p0, v0

    cmpl-double v1, v2, p1

    if-nez v1, :cond_0

    .line 153
    :goto_1
    return v0

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static compare(DD)I
    .locals 2

    .prologue
    .line 99
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[D)[D
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 259
    .line 260
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 261
    array-length v4, v4

    add-int/2addr v2, v4

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    new-array v3, v2, [D

    .line 265
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, p0, v0

    .line 266
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    array-length v5, v5

    add-int/2addr v2, v5

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_1
    return-object v3
.end method

.method public static contains([DD)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 124
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v4, p0, v1

    .line 125
    cmpl-double v3, v4, p1

    if-nez v3, :cond_1

    .line 126
    const/4 v0, 0x1

    .line 129
    :cond_0
    return v0

    .line 124
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static d([DDII)I
    .locals 5

    .prologue
    .line 205
    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-lt v0, p3, :cond_1

    .line 206
    aget-wide v2, p0, v0

    cmpl-double v1, v2, p1

    if-nez v1, :cond_0

    .line 210
    :goto_1
    return v0

    .line 205
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static ensureCapacity([DII)[D
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 327
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 328
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    .line 329
    invoke-static {p0, v0}, Lcom/google/common/primitives/Doubles;->a([DI)[D

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 326
    goto :goto_0

    :cond_2
    move v0, v2

    .line 327
    goto :goto_1
.end method

.method public static hashCode(D)I
    .locals 2

    .prologue
    .line 77
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([DD)I
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Doubles;->c([DDII)I

    move-result v0

    return v0
.end method

.method public static indexOf([D[D)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 171
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    array-length v0, p1

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 178
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 179
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 180
    add-int v3, v0, v2

    aget-wide v4, p0, v3

    aget-wide v6, p1, v2

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_1

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 184
    goto :goto_0

    .line 186
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static isFinite(D)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpg-double v2, v2, p0

    if-gez v2, :cond_0

    move v2, v0

    :goto_0
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v3, p0, v4

    if-gez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static varargs join(Ljava/lang/String;[D)Ljava/lang/String;
    .locals 6

    .prologue
    .line 355
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    array-length v0, p1

    if-nez v0, :cond_0

    .line 357
    const-string v0, ""

    .line 366
    :goto_0
    return-object v0

    .line 361
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0xc

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 362
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 363
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 364
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 366
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf([DD)I
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Doubles;->d([DDII)I

    move-result v0

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[D>;"
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, Lcom/google/common/primitives/Doubles$c;->a:Lcom/google/common/primitives/Doubles$c;

    return-object v0
.end method

.method public static varargs max([D)D
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    array-length v0, p0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 242
    aget-wide v2, p0, v2

    .line 243
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 244
    aget-wide v4, p0, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 241
    goto :goto_0

    .line 246
    :cond_1
    return-wide v2
.end method

.method public static varargs min([D)D
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    array-length v0, p0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 224
    aget-wide v2, p0, v2

    .line 225
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 226
    aget-wide v4, p0, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 223
    goto :goto_0

    .line 228
    :cond_1
    return-wide v2
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    sget-object v0, Lcom/google/common/primitives/Doubles$b;->a:Lcom/google/common/primitives/Doubles$b;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[D"
        }
    .end annotation

    .prologue
    .line 421
    instance-of v0, p0, Lcom/google/common/primitives/Doubles$a;

    if-eqz v0, :cond_0

    .line 422
    check-cast p0, Lcom/google/common/primitives/Doubles$a;

    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$a;->a()[D

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 425
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 426
    array-length v4, v3

    .line 427
    new-array v1, v4, [D

    .line 428
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 430
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 428
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 432
    goto :goto_0
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "regular expressions"
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 636
    sget-object v0, Lcom/google/common/primitives/Doubles;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 646
    :goto_0
    return-object v0

    .line 641
    :catch_0
    move-exception v0

    .line 646
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
