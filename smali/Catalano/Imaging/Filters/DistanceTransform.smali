.class public LCatalano/Imaging/Filters/DistanceTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/DistanceTransform$Distance;
    }
.end annotation


# instance fields
.field private a:[[F

.field private b:F

.field private c:LCatalano/Core/IntPoint;

.field private d:LCatalano/Imaging/Filters/DistanceTransform$Distance;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/DistanceTransform;->b:F

    .line 65
    sget-object v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Euclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    iput-object v0, p0, LCatalano/Imaging/Filters/DistanceTransform;->d:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 87
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Filters/DistanceTransform$Distance;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/DistanceTransform;->b:F

    .line 65
    sget-object v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Euclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    iput-object v0, p0, LCatalano/Imaging/Filters/DistanceTransform;->d:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 94
    iput-object p1, p0, LCatalano/Imaging/Filters/DistanceTransform;->d:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 95
    return-void
.end method

.method private a([IIIIIILCatalano/Imaging/Filters/DistanceTransform$Distance;)F
    .locals 9

    .prologue
    .line 210
    aget v6, p1, p4

    .line 212
    const/4 v0, -0x1

    if-eq v6, v0, :cond_2

    .line 213
    const v0, 0xffff

    and-int v3, v6, v0

    shr-int/lit8 v0, v6, 0x10

    const v1, 0xffff

    and-int v4, v0, v1

    move-object v0, p0

    move v1, p4

    move v2, p5

    move-object/from16 v5, p7

    .line 214
    invoke-direct/range {v0 .. v5}, LCatalano/Imaging/Filters/DistanceTransform;->a(IIIILCatalano/Imaging/Filters/DistanceTransform$Distance;)I

    move-result v8

    .line 215
    if-ge v8, p6, :cond_2

    .line 218
    :goto_0
    if-eq p3, v6, :cond_1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 219
    const v0, 0xffff

    and-int v3, p3, v0

    shr-int/lit8 v0, p3, 0x10

    const v1, 0xffff

    and-int v4, v0, v1

    move-object v0, p0

    move v1, p4

    move v2, p5

    move-object/from16 v5, p7

    .line 220
    invoke-direct/range {v0 .. v5}, LCatalano/Imaging/Filters/DistanceTransform;->a(IIIILCatalano/Imaging/Filters/DistanceTransform$Distance;)I

    move-result v7

    .line 221
    if-ge v7, v8, :cond_1

    move v6, p3

    .line 226
    :goto_1
    if-eq p2, p3, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 227
    const v0, 0xffff

    and-int v3, p2, v0

    shr-int/lit8 v0, p2, 0x10

    const v1, 0xffff

    and-int v4, v0, v1

    move-object v0, p0

    move v1, p4

    move v2, p5

    move-object/from16 v5, p7

    .line 228
    invoke-direct/range {v0 .. v5}, LCatalano/Imaging/Filters/DistanceTransform;->a(IIIILCatalano/Imaging/Filters/DistanceTransform$Distance;)I

    move-result v0

    .line 229
    if-ge v0, v7, :cond_0

    .line 234
    :goto_2
    aput p2, p1, p4

    .line 235
    int-to-float v0, v0

    return v0

    :cond_0
    move p2, v6

    move v0, v7

    goto :goto_2

    :cond_1
    move v7, v8

    goto :goto_1

    :cond_2
    move v8, p6

    goto :goto_0
.end method

.method private a(IIIILCatalano/Imaging/Filters/DistanceTransform$Distance;)I
    .locals 3

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    sget-object v1, LCatalano/Imaging/Filters/DistanceTransform$1;->a:[I

    invoke-virtual {p5}, LCatalano/Imaging/Filters/DistanceTransform$Distance;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 254
    :goto_0
    return v0

    .line 242
    :pswitch_0
    sub-int v0, p1, p3

    sub-int v1, p1, p3

    mul-int/2addr v0, v1

    sub-int v1, p2, p4

    sub-int v2, p2, p4

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 243
    goto :goto_0

    .line 245
    :pswitch_1
    sub-int v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p2, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    goto :goto_0

    .line 248
    :pswitch_2
    sub-int v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p2, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 251
    :pswitch_3
    sub-int v0, p1, p3

    sub-int v1, p1, p3

    mul-int/2addr v0, v1

    sub-int v1, p2, p4

    sub-int v2, p2, p4

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a([I[F[[IIII)V
    .locals 10

    .prologue
    .line 176
    const/4 v0, 0x0

    aget-object v1, p3, v0

    .line 177
    const/4 v2, -0x1

    .line 178
    const/4 v3, -0x1

    .line 180
    const v6, 0x7fffffff

    .line 181
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p4, :cond_2

    .line 182
    aget v8, v1, v4

    .line 183
    aget v0, p1, p5

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    .line 184
    shl-int/lit8 v0, p6, 0x10

    or-int/2addr v0, v4

    aput v0, v1, v4

    .line 189
    :cond_0
    :goto_1
    aget v2, v1, v4

    .line 181
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 p5, p5, 0x1

    move v3, v8

    goto :goto_0

    .line 186
    :cond_1
    iget-object v7, p0, LCatalano/Imaging/Filters/DistanceTransform;->d:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    move-object v0, p0

    move/from16 v5, p6

    invoke-direct/range {v0 .. v7}, LCatalano/Imaging/Filters/DistanceTransform;->a([IIIIIILCatalano/Imaging/Filters/DistanceTransform$Distance;)F

    move-result v0

    .line 187
    aget v2, p2, p5

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    aput v0, p2, p5

    goto :goto_1

    .line 192
    :cond_2
    add-int/lit8 v0, p5, -0x1

    .line 193
    const/4 v1, 0x1

    aget-object v1, p3, v1

    .line 194
    const/4 v2, -0x1

    .line 195
    const/4 v3, -0x1

    .line 196
    add-int/lit8 v4, p4, -0x1

    move v9, v0

    :goto_2
    if-ltz v4, :cond_5

    .line 197
    aget v8, v1, v4

    .line 198
    aget v0, p1, v9

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_4

    .line 199
    shl-int/lit8 v0, p6, 0x10

    or-int/2addr v0, v4

    aput v0, v1, v4

    .line 204
    :cond_3
    :goto_3
    aget v2, v1, v4

    .line 196
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v9, -0x1

    move v3, v8

    move v9, v0

    goto :goto_2

    .line 201
    :cond_4
    iget-object v7, p0, LCatalano/Imaging/Filters/DistanceTransform;->d:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    move-object v0, p0

    move/from16 v5, p6

    invoke-direct/range {v0 .. v7}, LCatalano/Imaging/Filters/DistanceTransform;->a([IIIIIILCatalano/Imaging/Filters/DistanceTransform$Distance;)F

    move-result v0

    .line 202
    aget v2, p2, v9

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    aput v0, p2, v9

    goto :goto_3

    .line 207
    :cond_5
    return-void
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;)[[F
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 104
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 105
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    .line 106
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    .line 107
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v1

    .line 108
    array-length v0, v1

    new-array v2, v0, [F

    move v0, v7

    .line 110
    :goto_0
    mul-int v3, v4, v8

    if-ge v0, v3, :cond_1

    .line 111
    aget v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_0

    .line 112
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    aput v3, v2, v0

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x2

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move v0, v7

    .line 117
    :goto_1
    if-ge v0, v4, :cond_2

    .line 118
    aget-object v5, v3, v7

    aput v10, v5, v0

    .line 119
    aget-object v5, v3, v11

    aput v10, v5, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v6, v7

    .line 121
    :goto_2
    if-ge v6, v8, :cond_3

    .line 122
    mul-int v5, v6, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, LCatalano/Imaging/Filters/DistanceTransform;->a([I[F[[IIII)V

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move v0, v7

    .line 125
    :goto_3
    if-ge v0, v4, :cond_4

    .line 126
    aget-object v5, v3, v7

    aput v10, v5, v0

    .line 127
    aget-object v5, v3, v11

    aput v10, v5, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 129
    :cond_4
    add-int/lit8 v6, v8, -0x1

    :goto_4
    if-ltz v6, :cond_5

    .line 130
    mul-int v5, v6, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, LCatalano/Imaging/Filters/DistanceTransform;->a([I[F[[IIII)V

    .line 129
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 132
    :cond_5
    filled-new-array {v8, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    .line 135
    iget-object v0, p0, LCatalano/Imaging/Filters/DistanceTransform;->d:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    sget-object v1, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Euclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    if-ne v0, v1, :cond_9

    move v3, v7

    move v0, v7

    .line 136
    :goto_5
    if-ge v3, v8, :cond_d

    move v1, v0

    move v0, v7

    .line 137
    :goto_6
    if-ge v0, v4, :cond_8

    .line 138
    aget v5, v2, v1

    cmpg-float v5, v5, v9

    if-gez v5, :cond_7

    .line 139
    iget-object v5, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    aget-object v5, v5, v3

    aput v9, v5, v0

    .line 142
    :goto_7
    iget-object v5, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    aget-object v5, v5, v3

    aget v5, v5, v0

    iget v6, p0, LCatalano/Imaging/Filters/DistanceTransform;->b:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 143
    iget-object v5, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    aget-object v5, v5, v3

    aget v5, v5, v0

    iput v5, p0, LCatalano/Imaging/Filters/DistanceTransform;->b:F

    .line 144
    new-instance v5, LCatalano/Core/IntPoint;

    invoke-direct {v5, v3, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    iput-object v5, p0, LCatalano/Imaging/Filters/DistanceTransform;->c:LCatalano/Core/IntPoint;

    .line 146
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 141
    :cond_7
    iget-object v5, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    aget-object v5, v5, v3

    aget v6, v2, v1

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v6, v10

    aput v6, v5, v0

    goto :goto_7

    .line 136
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_5

    :cond_9
    move v3, v7

    move v0, v7

    .line 151
    :goto_8
    if-ge v3, v8, :cond_d

    move v1, v0

    move v0, v7

    .line 152
    :goto_9
    if-ge v0, v4, :cond_c

    .line 153
    aget v5, v2, v1

    cmpg-float v5, v5, v9

    if-gez v5, :cond_b

    .line 154
    iget-object v5, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    aget-object v5, v5, v3

    aput v9, v5, v0

    .line 157
    :goto_a
    iget-object v5, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    aget-object v5, v5, v3

    aget v5, v5, v0

    iget v6, p0, LCatalano/Imaging/Filters/DistanceTransform;->b:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    .line 158
    iget-object v5, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    aget-object v5, v5, v3

    aget v5, v5, v0

    iput v5, p0, LCatalano/Imaging/Filters/DistanceTransform;->b:F

    .line 159
    new-instance v5, LCatalano/Core/IntPoint;

    invoke-direct {v5, v3, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    iput-object v5, p0, LCatalano/Imaging/Filters/DistanceTransform;->c:LCatalano/Core/IntPoint;

    .line 161
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 156
    :cond_b
    iget-object v5, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    aget-object v5, v5, v3

    aget v6, v2, v1

    aput v6, v5, v0

    goto :goto_a

    .line 151
    :cond_c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_8

    .line 166
    :cond_d
    iget-object v0, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    return-object v0

    .line 169
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Distance Transform only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaximumDistance()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, LCatalano/Imaging/Filters/DistanceTransform;->b:F

    return v0
.end method

.method public getUltimateErodedPoint()LCatalano/Core/IntPoint;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, LCatalano/Imaging/Filters/DistanceTransform;->c:LCatalano/Core/IntPoint;

    return-object v0
.end method

.method public toFastBitmap()LCatalano/Imaging/FastBitmap;
    .locals 15

    .prologue
    .line 263
    iget-object v0, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v12, v0

    .line 264
    iget-object v0, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    array-length v13, v0

    .line 266
    new-instance v14, LCatalano/Imaging/FastBitmap;

    sget-object v0, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v14, v12, v13, v0}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 268
    iget v0, p0, LCatalano/Imaging/Filters/DistanceTransform;->b:F

    const/high16 v1, 0x437f0000    # 255.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 269
    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v13, :cond_3

    .line 270
    const/4 v0, 0x0

    move v10, v0

    :goto_1
    if-ge v10, v12, :cond_0

    .line 271
    const-wide/16 v0, 0x0

    iget v2, p0, LCatalano/Imaging/Filters/DistanceTransform;->b:F

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    const-wide v6, 0x406fe00000000000L    # 255.0

    iget-object v8, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    aget-object v8, v8, v11

    aget v8, v8, v10

    float-to-double v8, v8

    invoke-static/range {v0 .. v9}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {v14, v11, v10, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 270
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    .line 269
    :cond_0
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v13, :cond_3

    .line 277
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v12, :cond_2

    .line 278
    iget-object v2, p0, LCatalano/Imaging/Filters/DistanceTransform;->a:[[F

    aget-object v2, v2, v1

    aget v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {v14, v1, v0, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 276
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 283
    :cond_3
    return-object v14
.end method
