.class public final Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/nio/ByteOrder;

.field static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a:Ljava/nio/ByteOrder;

    .line 69
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 194
    const v0, -0x61c8864f

    mul-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x13

    return v0
.end method

.method static a([BI)I
    .locals 2

    .prologue
    .line 251
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static a([BII)I
    .locals 13

    .prologue
    .line 91
    add-int v5, p1, p2

    .line 92
    add-int/lit8 v6, v5, -0x5

    .line 93
    add-int/lit8 v7, v5, -0xc

    .line 95
    const/4 v0, 0x0

    .line 99
    const/16 v1, 0xd

    if-lt p2, v1, :cond_0

    .line 101
    const/16 v1, 0x2000

    new-array v8, v1, [S

    .line 103
    add-int/lit8 v1, p1, 0x1

    move v2, v1

    move v1, v0

    move v0, p1

    .line 111
    :goto_0
    const/4 v3, 0x1

    sget v4, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->b:I

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    move v4, v2

    move v2, v3

    .line 114
    :goto_1
    add-int/lit8 v3, v2, 0x1

    sget v9, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->b:I

    ushr-int/2addr v2, v9

    add-int/2addr v2, v4

    .line 116
    if-le v2, v7, :cond_2

    move p1, v0

    move v0, v1

    .line 173
    :cond_0
    :goto_2
    sub-int v1, v5, p1

    .line 174
    const/16 v2, 0x10e

    if-lt v1, v2, :cond_1

    .line 175
    add-int/lit8 v2, v1, -0xf

    div-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 178
    add-int/2addr v0, v1

    .line 179
    return v0

    .line 120
    :cond_2
    invoke-static {p0, v4}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->c([BI)I

    move-result v9

    invoke-static {v9}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a(I)I

    move-result v9

    .line 121
    invoke-static {v8, v9}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a([SI)I

    move-result v10

    add-int/2addr v10, p1

    .line 122
    sub-int v11, v4, p1

    invoke-static {v8, v9, v11}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a([SII)V

    .line 123
    invoke-static {p0, v10, v4}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->b([BII)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 126
    invoke-static {p0, v10, v4, p1, v0}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a([BIIII)I

    move-result v2

    .line 127
    sub-int v3, v4, v2

    .line 128
    sub-int v2, v10, v2

    .line 130
    sub-int v4, v3, v0

    .line 131
    add-int/lit8 v0, v1, 0x1

    .line 133
    const/16 v1, 0xf

    if-lt v4, v1, :cond_4

    .line 134
    const/16 v1, 0xf

    if-le v4, v1, :cond_3

    .line 135
    add-int/lit8 v1, v4, -0xf

    div-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 136
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 138
    :cond_4
    add-int/2addr v0, v4

    move v1, v0

    move v0, v2

    move v2, v3

    .line 141
    :goto_3
    add-int/lit8 v1, v1, 0x2

    .line 143
    add-int/lit8 v2, v2, 0x4

    .line 144
    add-int/lit8 v0, v0, 0x4

    .line 145
    invoke-static {p0, v0, v2, v6}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a([BIII)I

    move-result v3

    .line 146
    add-int v0, v2, v3

    .line 148
    const/16 v2, 0xf

    if-lt v3, v2, :cond_6

    .line 149
    const/16 v2, 0x10e

    if-lt v3, v2, :cond_5

    .line 150
    add-int/lit8 v2, v3, -0xf

    div-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 151
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 154
    :cond_6
    if-le v0, v7, :cond_7

    move p1, v0

    move v0, v1

    .line 156
    goto :goto_2

    .line 159
    :cond_7
    add-int/lit8 v2, v0, -0x2

    invoke-static {p0, v2}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->c([BI)I

    move-result v2

    invoke-static {v2}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a(I)I

    move-result v2

    add-int/lit8 v3, v0, -0x2

    sub-int/2addr v3, p1

    invoke-static {v8, v2, v3}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a([SII)V

    .line 161
    invoke-static {p0, v0}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->c([BI)I

    move-result v2

    invoke-static {v2}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a(I)I

    move-result v3

    .line 162
    invoke-static {v8, v3}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a([SI)I

    move-result v2

    add-int/2addr v2, p1

    .line 163
    sub-int v4, v0, p1

    invoke-static {v8, v3, v4}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a([SII)V

    .line 164
    invoke-static {p0, v0, v2}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->b([BII)Z

    move-result v3

    if-nez v3, :cond_8

    .line 170
    add-int/lit8 v2, v0, 0x1

    .line 171
    goto/16 :goto_0

    .line 167
    :cond_8
    add-int/lit8 v1, v1, 0x1

    move v12, v2

    move v2, v0

    move v0, v12

    .line 168
    goto :goto_3

    :cond_9
    move v4, v2

    move v2, v3

    goto/16 :goto_1
.end method

.method static a([BIII)I
    .locals 5

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    :goto_0
    if-ge p2, p3, :cond_0

    add-int/lit8 v2, p1, 0x1

    aget-byte v3, p0, p1

    add-int/lit8 v1, p2, 0x1

    aget-byte v4, p0, p2

    if-ne v3, v4, :cond_0

    .line 209
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    move p1, v2

    goto :goto_0

    .line 211
    :cond_0
    return v0
.end method

.method static a([BIIII)I
    .locals 3

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    :goto_0
    if-le p1, p3, :cond_0

    if-le p2, p4, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-byte v1, p0, p1

    add-int/lit8 p2, p2, -0x1

    aget-byte v2, p0, p2

    if-ne v1, v2, :cond_0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return v0
.end method

.method static a([SI)I
    .locals 2

    .prologue
    .line 223
    aget-short v0, p0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method static a([SII)V
    .locals 1

    .prologue
    .line 269
    int-to-short v0, p2

    aput-short v0, p0, p1

    .line 270
    return-void
.end method

.method static b([BI)I
    .locals 2

    .prologue
    .line 256
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static b([BII)Z
    .locals 2

    .prologue
    .line 202
    aget-byte v0, p0, p1

    aget-byte v1, p0, p2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c([BI)I
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 262
    invoke-static {p0, p1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a([BI)I

    move-result v0

    .line 264
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->b([BI)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public compressEstim([B)I
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->compressEstim([BII)I

    move-result v0

    return v0
.end method

.method public compressEstim([BII)I
    .locals 6

    .prologue
    const v3, 0x1000a

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 33
    const/16 v0, 0xa

    if-ge p3, v0, :cond_0

    .line 52
    :goto_0
    return p3

    .line 36
    :cond_0
    add-int v0, p3, v3

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v3

    .line 37
    div-int v1, p3, v0

    .line 38
    if-ge v1, v3, :cond_1

    mul-int v3, v1, v0

    if-gt v3, p3, :cond_1

    if-lt v0, v4, :cond_1

    if-ge v1, v4, :cond_2

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, p3

    move v3, v2

    .line 43
    :goto_1
    if-lez v0, :cond_4

    .line 44
    if-le v0, v1, :cond_3

    move v0, v1

    .line 46
    :cond_3
    invoke-static {p1, p2, v0}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->a([BII)I

    move-result v4

    add-int/2addr v2, v4

    .line 47
    add-int/2addr p2, v0

    .line 48
    add-int/2addr v3, v0

    .line 49
    sub-int v0, p3, v3

    goto :goto_1

    .line 51
    :cond_4
    int-to-double v0, v2

    int-to-double v4, v3

    div-double/2addr v0, v4

    .line 52
    if-ne v3, p3, :cond_5

    move v0, v2

    :goto_2
    move p3, v0

    goto :goto_0

    :cond_5
    int-to-double v2, p3

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_2
.end method
