.class public Lorg/apache/commons/lang3/text/StrTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/ListIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lorg/apache/commons/lang3/text/StrTokenizer;

.field private static final b:Lorg/apache/commons/lang3/text/StrTokenizer;


# instance fields
.field private c:[C

.field private d:[Ljava/lang/String;

.field private e:I

.field private f:Lorg/apache/commons/lang3/text/StrMatcher;

.field private g:Lorg/apache/commons/lang3/text/StrMatcher;

.field private h:Lorg/apache/commons/lang3/text/StrMatcher;

.field private i:Lorg/apache/commons/lang3/text/StrMatcher;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    new-instance v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->a:Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 93
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->a:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->commaMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 94
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->a:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 95
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->a:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 96
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->a:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->trimMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 97
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->a:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 98
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->a:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 100
    new-instance v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->b:Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 101
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->b:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->tabMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 102
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->b:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 103
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->b:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 104
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->b:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->trimMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 105
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->b:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 106
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->b:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->f:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 119
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->g:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 121
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->h:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 123
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->i:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->j:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->k:Z

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->f:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 119
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->g:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 121
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->h:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 123
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->i:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->j:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->k:Z

    .line 252
    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 268
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;C)V

    .line 302
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 303
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 279
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrMatcher;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 290
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrMatcher;)V

    .line 315
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 316
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->f:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 119
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->g:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 121
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->h:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 123
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->i:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->j:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->k:Z

    .line 326
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    .line 327
    return-void
.end method

.method public constructor <init>([CC)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    .line 337
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 338
    return-void
.end method

.method public constructor <init>([CCC)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([CC)V

    .line 372
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 373
    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    .line 348
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 349
    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/lang3/text/StrMatcher;)V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    .line 359
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 360
    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([CLorg/apache/commons/lang3/text/StrMatcher;)V

    .line 385
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 386
    return-void
.end method

.method private a([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/apache/commons/lang3/text/StrBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 678
    move v7, p2

    :goto_0
    move/from16 v0, p3

    if-ge v7, v0, :cond_0

    .line 679
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 682
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    if-lez v2, :cond_1

    .line 691
    :cond_0
    move/from16 v0, p3

    if-lt v7, v0, :cond_2

    .line 692
    const-string v1, ""

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 693
    const/4 v1, -0x1

    .line 708
    :goto_1
    return v1

    .line 687
    :cond_1
    add-int/2addr v7, v1

    .line 688
    goto :goto_0

    .line 697
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    .line 698
    if-lez v1, :cond_3

    .line 699
    const-string v2, ""

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 700
    add-int/2addr v1, v7

    goto :goto_1

    .line 704
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v8

    .line 705
    if-lez v8, :cond_4

    .line 706
    add-int v3, v7, v8

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/lang3/text/StrTokenizer;->a([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I

    move-result v1

    goto :goto_1

    .line 708
    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    move-object v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v12}, Lorg/apache/commons/lang3/text/StrTokenizer;->a([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I

    move-result v1

    goto :goto_1
.end method

.method private a([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/apache/commons/lang3/text/StrBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 729
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->clear()Lorg/apache/commons/lang3/text/StrBuilder;

    .line 731
    if-lez p7, :cond_0

    const/4 v2, 0x1

    .line 732
    :goto_0
    const/4 v3, 0x0

    move v11, v3

    move v12, v2

    move v4, p2

    .line 734
    :goto_1
    move/from16 v0, p3

    if-ge v4, v0, :cond_8

    .line 738
    if-eqz v12, :cond_3

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    .line 745
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/lang3/text/StrTokenizer;->a([CIIII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 746
    add-int v7, v4, p7

    move-object v5, p0

    move-object v6, p1

    move/from16 v8, p3

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/lang3/text/StrTokenizer;->a([CIIII)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 748
    move-object/from16 v0, p4

    move/from16 v1, p7

    invoke-virtual {v0, p1, v4, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 749
    mul-int/lit8 v2, p7, 0x2

    add-int/2addr v4, v2

    .line 750
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v2

    move v11, v2

    .line 751
    goto :goto_1

    .line 731
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 755
    :cond_1
    const/4 v2, 0x0

    .line 756
    add-int v4, v4, p7

    move v12, v2

    .line 757
    goto :goto_1

    .line 761
    :cond_2
    add-int/lit8 v3, v4, 0x1

    aget-char v2, p1, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 762
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v2

    move v11, v2

    move v4, v3

    goto :goto_1

    .line 768
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v4, p2, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    .line 769
    if-lez v2, :cond_4

    .line 771
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v3}, Lorg/apache/commons/lang3/text/StrTokenizer;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 772
    add-int/2addr v2, v4

    .line 809
    :goto_2
    return v2

    .line 776
    :cond_4
    if-lez p7, :cond_5

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    .line 777
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/lang3/text/StrTokenizer;->a([CIIII)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 778
    const/4 v2, 0x1

    .line 779
    add-int v4, v4, p7

    move v12, v2

    .line 780
    goto :goto_1

    .line 785
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v4, p2, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    .line 786
    if-lez v2, :cond_6

    .line 787
    add-int/2addr v4, v2

    .line 788
    goto/16 :goto_1

    .line 794
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v4, p2, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    .line 795
    if-lez v2, :cond_7

    .line 796
    move-object/from16 v0, p4

    invoke-virtual {v0, p1, v4, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 797
    add-int/2addr v4, v2

    .line 798
    goto/16 :goto_1

    .line 802
    :cond_7
    add-int/lit8 v3, v4, 0x1

    aget-char v2, p1, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 803
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v2

    move v11, v2

    move v4, v3

    .line 804
    goto/16 :goto_1

    .line 808
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v11}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 809
    const/4 v2, -0x1

    goto :goto_2
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 653
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 654
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->isEmptyTokenAsNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    const/4 p2, 0x0

    .line 661
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a([CIIII)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 824
    move v1, v0

    :goto_0
    if-ge v1, p5, :cond_2

    .line 825
    add-int v2, p2, v1

    if-ge v2, p3, :cond_0

    add-int v2, p2, v1

    aget-char v2, p1, v2

    add-int v3, p4, v1

    aget-char v3, p1, v3

    if-eq v2, v3, :cond_1

    .line 829
    :cond_0
    :goto_1
    return v0

    .line 824
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static b()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->a:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method private static c()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->b:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 593
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    if-nez v0, :cond_1

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 597
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 600
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCSVInstance()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->b()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->b()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 166
    return-object v0
.end method

.method public static getCSVInstance([C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->b()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset([C)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 181
    return-object v0
.end method

.method public static getTSVInstance()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->c()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->c()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 216
    return-object v0
.end method

.method public static getTSVInstance([C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->c()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset([C)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 229
    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1084
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 1085
    iget-object v1, v0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    if-eqz v1, :cond_0

    .line 1086
    iget-object v1, v0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    .line 1088
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset()Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 1089
    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 584
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1069
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1071
    :goto_0
    return-object v0

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1052
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    if-nez v0, :cond_0

    .line 1053
    const/4 v0, 0x0

    .line 1055
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->f:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getIgnoredMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->h:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->g:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->d()V

    .line 433
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTokenList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->d()V

    .line 443
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 444
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 445
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_0
    return-object v1
.end method

.method public getTrimmerMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->i:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 503
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->d()V

    .line 504
    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 535
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->d()V

    .line 536
    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyTokenAsNull()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->j:Z

    return v0
.end method

.method public isIgnoreEmptyTokens()Z
    .locals 1

    .prologue
    .line 1030
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->k:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .prologue
    .line 514
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    aget-object v0, v0, v1

    return-object v0

    .line 517
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    aget-object v0, v0, v1

    .line 411
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->previous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/String;
    .locals 2

    .prologue
    .line 545
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    aget-object v0, v0, v1

    return-object v0

    .line 548
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public previousToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 420
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    aget-object v0, v0, v1

    .line 423
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 566
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->e:I

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    .line 460
    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset()Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 473
    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    .line 478
    :goto_0
    return-object p0

    .line 476
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    goto :goto_0
.end method

.method public reset([C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset()Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 491
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->c:[C

    .line 492
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 575
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelimiterChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 867
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 852
    if-nez p1, :cond_0

    .line 853
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->f:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 857
    :goto_0
    return-object p0

    .line 855
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->f:Lorg/apache/commons/lang3/text/StrMatcher;

    goto :goto_0
.end method

.method public setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 877
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyTokenAsNull(Z)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 0

    .prologue
    .line 1018
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->j:Z

    .line 1019
    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 0

    .prologue
    .line 1041
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->k:Z

    .line 1042
    return-object p0
.end method

.method public setIgnoredChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 965
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 0

    .prologue
    .line 949
    if-eqz p1, :cond_0

    .line 950
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->h:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 952
    :cond_0
    return-object p0
.end method

.method public setQuoteChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 921
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 0

    .prologue
    .line 905
    if-eqz p1, :cond_0

    .line 906
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->g:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 908
    :cond_0
    return-object p0
.end method

.method public setTrimmerMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 0

    .prologue
    .line 993
    if-eqz p1, :cond_0

    .line 994
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->i:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 996
    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 396
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->d()V

    .line 397
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->d:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1101
    const-string v0, "StrTokenizer[not tokenized yet]"

    .line 1103
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrTokenizer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 627
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 643
    :cond_1
    return-object v5

    .line 629
    :cond_2
    new-instance v4, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v4}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>()V

    .line 630
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, p2

    .line 634
    :cond_3
    :goto_0
    if-ltz v2, :cond_1

    if-ge v2, p3, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    .line 636
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrTokenizer;->a([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;)I

    move-result v2

    .line 639
    if-lt v2, p3, :cond_3

    .line 640
    const-string v0, ""

    invoke-direct {p0, v5, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method
