.class public Lar/com/hjg/pngj/pixels/FiltersPerformance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/pixels/FiltersPerformance$1;
    }
.end annotation


# static fields
.field public static final FILTER_WEIGHTS_DEFAULT:[D

.field private static final l:D


# instance fields
.field private final a:Lar/com/hjg/pngj/ImageInfo;

.field private b:D

.field private c:I

.field private d:[D

.field private e:[D

.field private f:[D

.field private g:[I

.field private h:I

.field private i:Z

.field private j:D

.field private k:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->FILTER_WEIGHTS_DEFAULT:[D

    .line 33
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->l:D

    return-void

    .line 28
    :array_0
    .array-data 8
        0x3fe75c28f5c28f5cL    # 0.73
        0x3ff07ae147ae147bL    # 1.03
        0x3fef0a3d70a3d70aL    # 0.97
        0x3ff1c28f5c28f5c3L    # 1.11
        0x3ff3851eb851eb85L    # 1.22
    .end array-data
.end method

.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide v0, 0x3fe6666666666666L    # 0.7

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->b:D

    .line 15
    iput v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->c:I

    .line 16
    new-array v0, v2, [D

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->d:[D

    .line 18
    new-array v0, v2, [D

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->e:[D

    .line 19
    new-array v0, v2, [D

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->f:[D

    .line 20
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    .line 21
    iput v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->h:I

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->i:Z

    .line 23
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->j:D

    .line 31
    new-array v0, v2, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->k:[D

    .line 36
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    .line 37
    return-void

    .line 31
    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->k:[D

    aget-wide v0, v0, v4

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 41
    sget-object v0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->FILTER_WEIGHTS_DEFAULT:[D

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->k:[D

    const/4 v2, 0x5

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->k:[D

    aget-wide v0, v0, v4

    .line 43
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 44
    const-wide v0, 0x3ff3333333333333L    # 1.2

    .line 49
    :cond_0
    :goto_0
    iget-wide v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->j:D

    div-double/2addr v0, v2

    .line 50
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->k:[D

    aput-wide v0, v2, v4

    .line 52
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->f:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->i:Z

    .line 54
    return-void

    .line 45
    :cond_2
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v2, v2, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v2, :cond_3

    .line 46
    const-wide v0, 0x3fe999999999999aL    # 0.8

    goto :goto_0

    .line 47
    :cond_3
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v2, v2, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 48
    :cond_4
    const-wide v0, 0x3fd999999999999aL    # 0.4

    goto :goto_0
.end method

.method private a(Lar/com/hjg/pngj/FilterType;[B[B[BI)V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 67
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->i:Z

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a()V

    .line 69
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->c:I

    if-eq p5, v0, :cond_1

    .line 70
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->d:[D

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 71
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->e:[D

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 73
    :cond_1
    iput p5, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->c:I

    .line 74
    if-eqz p2, :cond_2

    .line 75
    invoke-virtual {p0, p2}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->computeHistogram([B)V

    .line 78
    :goto_0
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    if-ne p1, v0, :cond_3

    .line 79
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->e:[D

    iget v1, p1, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->computeEntropyFromHistogram()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 82
    :goto_1
    return-void

    .line 77
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->computeHistogramForFilter(Lar/com/hjg/pngj/FilterType;[B[B)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->d:[D

    iget v1, p1, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->computeAbsFromHistogram()D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_1
.end method


# virtual methods
.method public computeAbsFromHistogram()D
    .locals 5

    .prologue
    const/16 v0, 0x80

    .line 150
    const/4 v2, 0x0

    .line 151
    const/4 v1, 0x1

    move v4, v1

    move v1, v2

    move v2, v4

    :goto_0
    if-ge v2, v0, :cond_0

    .line 152
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    aget v3, v3, v2

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    .line 151
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    move v2, v1

    move v1, v0

    .line 153
    :goto_1
    if-lez v0, :cond_1

    .line 154
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    aget v3, v3, v1

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 153
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 155
    :cond_1
    int-to-double v0, v2

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final computeEntropyFromHistogram()D
    .locals 15

    .prologue
    .line 159
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    int-to-double v2, v2

    div-double v4, v0, v2

    .line 160
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    .line 162
    const-wide/16 v2, 0x0

    .line 163
    iget-object v8, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    array-length v9, v8

    const/4 v0, 0x0

    move v14, v0

    move-wide v0, v2

    move v2, v14

    :goto_0
    if-ge v2, v9, :cond_1

    aget v3, v8, v2

    .line 164
    if-lez v3, :cond_0

    .line 165
    int-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    add-double/2addr v10, v6

    int-to-double v12, v3

    mul-double/2addr v10, v12

    add-double/2addr v0, v10

    .line 163
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_1
    sget-wide v2, Lar/com/hjg/pngj/pixels/FiltersPerformance;->l:D

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 168
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    .line 169
    const-wide/16 v0, 0x0

    .line 170
    :cond_2
    return-wide v0
.end method

.method public computeHistogram([B)V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 145
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public final computeHistogramForFilter(Lar/com/hjg/pngj/FilterType;[B[B)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 108
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([II)V

    .line 109
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    .line 110
    sget-object v0, Lar/com/hjg/pngj/pixels/FiltersPerformance$1;->a:[I

    invoke-virtual {p1}, Lar/com/hjg/pngj/FilterType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad filter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :goto_0
    :pswitch_0
    if-gt v1, v2, :cond_3

    .line 113
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 116
    :goto_1
    if-gt v0, v2, :cond_0

    .line 117
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    aget-byte v4, p2, v0

    aget-byte v5, p3, v0

    and-int/lit16 v5, v5, 0xff

    invoke-static {v4, v6, v5, v6}, Lar/com/hjg/pngj/PngHelperInternal;->filterRowPaeth(IIII)I

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    if-gt v0, v2, :cond_3

    .line 119
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    aget-byte v4, p2, v0

    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p3, v0

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p3, v1

    and-int/lit16 v7, v7, 0xff

    invoke-static {v4, v5, v6, v7}, Lar/com/hjg/pngj/PngHelperInternal;->filterRowPaeth(IIII)I

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 118
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_2
    move v0, v1

    .line 123
    :goto_3
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    if-gt v0, v3, :cond_1

    .line 124
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 125
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    add-int/lit8 v0, v0, 0x1

    :goto_4
    if-gt v0, v2, :cond_3

    .line 126
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    aget-byte v4, p2, v0

    aget-byte v5, p2, v1

    sub-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 125
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 129
    :goto_5
    :pswitch_3
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    if-gt v1, v0, :cond_3

    .line 130
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    aget-byte v2, p2, v1

    aget-byte v3, p3, v1

    sub-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_4
    move v0, v1

    .line 133
    :goto_6
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    if-gt v0, v3, :cond_2

    .line 134
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p3, v0

    and-int/lit16 v5, v5, 0xff

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 135
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    add-int/lit8 v0, v0, 0x1

    :goto_7
    if-gt v0, v2, :cond_3

    .line 136
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->g:[I

    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p3, v0

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p2, v1

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 135
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 141
    :cond_3
    return-void

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPreferred()Lar/com/hjg/pngj/FilterType;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 86
    .line 87
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v4, v5

    .line 88
    :goto_0
    const/4 v0, 0x5

    if-ge v5, v0, :cond_1

    .line 89
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->d:[D

    aget-wide v0, v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->d:[D

    aget-wide v0, v0, v5

    .line 95
    :goto_1
    iget-object v6, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->k:[D

    aget-wide v6, v6, v5

    mul-double/2addr v0, v6

    .line 96
    iget-object v6, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->f:[D

    aget-wide v6, v6, v5

    iget-wide v8, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->b:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->b:D

    sub-double v8, v10, v8

    mul-double/2addr v0, v8

    add-double/2addr v0, v6

    .line 97
    iget-object v6, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->f:[D

    aput-wide v0, v6, v5

    .line 98
    cmpg-double v6, v0, v2

    if-gez v6, :cond_2

    move v2, v5

    .line 88
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->e:[D

    aget-wide v0, v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget-object v6, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->e:[D

    aget-wide v6, v6, v5

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, v10

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v6

    goto :goto_1

    .line 103
    :cond_1
    iput v4, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->h:I

    .line 104
    iget v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->h:I

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    return-object v0

    :cond_2
    move-wide v0, v2

    move v2, v4

    goto :goto_2
.end method

.method public setFilterWeights([D)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->k:[D

    const/4 v1, 0x5

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    return-void
.end method

.method public setPreferenceForNone(D)V
    .locals 1

    .prologue
    .line 179
    iput-wide p1, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->j:D

    .line 180
    return-void
.end method

.method public tuneMemory(D)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 188
    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    .line 189
    iput-wide v2, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->b:D

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->b:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/FiltersPerformance;->b:D

    goto :goto_0
.end method

.method public updateFromFiltered(Lar/com/hjg/pngj/FilterType;[BI)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a(Lar/com/hjg/pngj/FilterType;[B[B[BI)V

    .line 58
    return-void
.end method

.method public updateFromRaw(Lar/com/hjg/pngj/FilterType;[B[BI)V
    .locals 6

    .prologue
    .line 62
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->a(Lar/com/hjg/pngj/FilterType;[B[B[BI)V

    .line 63
    return-void
.end method
