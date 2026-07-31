.class public LCatalano/Imaging/Corners/Fast12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Corners/ICornersFeatureDetector;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Corners/Fast12;->a:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Corners/Fast12;->b:Z

    .line 124
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Corners/Fast12;->a:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Corners/Fast12;->b:Z

    .line 131
    iput p1, p0, LCatalano/Imaging/Corners/Fast12;->a:I

    .line 132
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Corners/Fast12;->a:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Corners/Fast12;->b:Z

    .line 140
    iput p1, p0, LCatalano/Imaging/Corners/Fast12;->a:I

    .line 141
    iput-boolean p2, p0, LCatalano/Imaging/Corners/Fast12;->b:Z

    .line 142
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;II)I
    .locals 4

    .prologue
    .line 1707
    const/4 v2, 0x0

    .line 1708
    const/16 v1, 0xff

    .line 1709
    const/16 v0, 0x7f

    .line 1712
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, LCatalano/Imaging/Corners/Fast12;->a(LCatalano/Imaging/FastBitmap;III)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    .line 1718
    :goto_1
    add-int/lit8 v0, v1, -0x1

    if-eq v2, v0, :cond_0

    if-ne v2, v1, :cond_2

    .line 1719
    :cond_0
    return v2

    :cond_1
    move v1, v0

    .line 1715
    goto :goto_1

    .line 1722
    :cond_2
    add-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static a(IILjava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/Corners/FeaturePoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/Corners/FeaturePoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3247
    filled-new-array {p1, p0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 3248
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 3250
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 3251
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Imaging/Corners/FeaturePoint;

    .line 3252
    iget v5, v1, LCatalano/Imaging/Corners/FeaturePoint;->x:I

    aget-object v5, v0, v5

    iget v6, v1, LCatalano/Imaging/Corners/FeaturePoint;->y:I

    iget v1, v1, LCatalano/Imaging/Corners/FeaturePoint;->score:I

    aput v1, v5, v6

    .line 3250
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 3255
    :cond_0
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 3256
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Imaging/Corners/FeaturePoint;

    .line 3257
    iget v2, v1, LCatalano/Imaging/Corners/FeaturePoint;->x:I

    .line 3258
    iget v5, v1, LCatalano/Imaging/Corners/FeaturePoint;->y:I

    .line 3259
    iget v6, v1, LCatalano/Imaging/Corners/FeaturePoint;->score:I

    .line 3260
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v0, v7

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    if-lt v6, v7, :cond_1

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v0, v7

    aget v7, v7, v5

    if-lt v6, v7, :cond_1

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v0, v7

    add-int/lit8 v8, v5, -0x1

    aget v7, v7, v8

    if-lt v6, v7, :cond_1

    aget-object v7, v0, v2

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    if-lt v6, v7, :cond_1

    aget-object v7, v0, v2

    add-int/lit8 v8, v5, -0x1

    aget v7, v7, v8

    if-lt v6, v7, :cond_1

    add-int/lit8 v7, v2, 0x1

    aget-object v7, v0, v7

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    if-lt v6, v7, :cond_1

    add-int/lit8 v7, v2, 0x1

    aget-object v7, v0, v7

    aget v7, v7, v5

    if-lt v6, v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v0, v2

    add-int/lit8 v5, v5, -0x1

    aget v2, v2, v5

    if-lt v6, v2, :cond_1

    .line 3264
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3255
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3267
    :cond_2
    return-object v4
.end method

.method private a(LCatalano/Imaging/FastBitmap;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            "I)",
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/Corners/FeaturePoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 170
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    move v4, v3

    move v2, v1

    .line 174
    :goto_0
    add-int/lit8 v0, v7, -0x4

    if-ge v4, v0, :cond_3f

    move v0, v2

    move v2, v3

    .line 175
    :goto_1
    add-int/lit8 v8, v6, -0x4

    if-ge v2, v8, :cond_3e

    .line 176
    invoke-virtual {p1, v4, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    add-int/2addr v8, p2

    .line 177
    invoke-virtual {p1, v4, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, p2

    .line 179
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, 0x0

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_1d

    .line 180
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_15

    .line 181
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_11

    .line 182
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_c

    .line 183
    add-int/lit8 v10, v4, 0x0

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_9

    .line 184
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_8

    .line 185
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_7

    .line 186
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_6

    .line 187
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_5

    .line 188
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_4

    .line 189
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_3

    .line 190
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_2

    .line 1692
    :cond_0
    :goto_2
    new-instance v8, LCatalano/Imaging/Corners/FeaturePoint;

    invoke-direct {v8, v4, v2}, LCatalano/Imaging/Corners/FeaturePoint;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1693
    add-int/lit8 v0, v0, 0x1

    .line 175
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 193
    :cond_2
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto :goto_2

    .line 198
    :cond_3
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 199
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto :goto_2

    .line 206
    :cond_4
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 207
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 208
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto :goto_2

    .line 217
    :cond_5
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 218
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 219
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 220
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto :goto_2

    .line 231
    :cond_6
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 232
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 233
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 234
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 235
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 248
    :cond_7
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 249
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 250
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 251
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 252
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 253
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 268
    :cond_8
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 269
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 270
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 271
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 272
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 273
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 274
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 290
    :cond_9
    add-int/lit8 v10, v4, 0x0

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_b

    .line 291
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, 0x0

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_a

    .line 292
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 293
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 294
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 295
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 296
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 297
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 298
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 314
    :cond_a
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 315
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 316
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 317
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 318
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 319
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 320
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 321
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 322
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 323
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 324
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 349
    :cond_b
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 350
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 351
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 352
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 353
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 354
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 355
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 356
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 374
    :cond_c
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_f

    .line 375
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_e

    .line 376
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_d

    .line 377
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 378
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 379
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 380
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 381
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 382
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 383
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 399
    :cond_d
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 400
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 401
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 402
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 403
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 404
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 405
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 406
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 407
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 408
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 409
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 434
    :cond_e
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 435
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 436
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 437
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 438
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 439
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 440
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 441
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 442
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 443
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 444
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 469
    :cond_f
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_10

    .line 470
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 471
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 472
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 473
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 474
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 475
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 476
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 477
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 495
    :cond_10
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 496
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 497
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 498
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 499
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 500
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 501
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 502
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 503
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 504
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 505
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 506
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 532
    :cond_11
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_13

    .line 533
    add-int/lit8 v10, v4, -0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_12

    .line 534
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 535
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 536
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 537
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 538
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 539
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 540
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 541
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 542
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 545
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 546
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 547
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 571
    :cond_12
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 572
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 573
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 574
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 575
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 576
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 577
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 578
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 579
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 580
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 581
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 584
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 585
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 612
    :cond_13
    add-int/lit8 v10, v4, -0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_14

    .line 613
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 614
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 615
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 616
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 617
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 618
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 619
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 620
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 621
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 624
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 625
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 626
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 650
    :cond_14
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 651
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 652
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 653
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 654
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 655
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 656
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 657
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 658
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 659
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 660
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 661
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 664
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 690
    :cond_15
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_19

    .line 691
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_17

    .line 692
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 693
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 694
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 695
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 696
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 697
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 698
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 699
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 700
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_16

    .line 701
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 704
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 705
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 712
    :cond_16
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 713
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 714
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 738
    :cond_17
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 739
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 740
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 741
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 742
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 743
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 744
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 745
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 746
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 747
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_18

    .line 748
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 751
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 752
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 759
    :cond_18
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 760
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 761
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 788
    :cond_19
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_1b

    .line 789
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 790
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 791
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 792
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 793
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 794
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 795
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 796
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 797
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1a

    .line 798
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 801
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 802
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 809
    :cond_1a
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 810
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 811
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 835
    :cond_1b
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 836
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 837
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 838
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 839
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 840
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 841
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 842
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 843
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 844
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 845
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1c

    .line 846
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 849
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 854
    :cond_1c
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 855
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 881
    :cond_1d
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, 0x0

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_38

    .line 882
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_21

    .line 883
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_1f

    .line 884
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 885
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 886
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 887
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 888
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 889
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 890
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 891
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 892
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1e

    .line 893
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 896
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 897
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 904
    :cond_1e
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 905
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 906
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 930
    :cond_1f
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 931
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 932
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 933
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 934
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 935
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 936
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 937
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 938
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 939
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_20

    .line 940
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 943
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 944
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 951
    :cond_20
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 952
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 953
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 979
    :cond_21
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_34

    .line 980
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_23

    .line 981
    add-int/lit8 v10, v4, -0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_22

    .line 982
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 983
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 984
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 985
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 986
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 987
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 988
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 989
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 990
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 991
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 994
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 995
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1019
    :cond_22
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1020
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1021
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1022
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1023
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1024
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1025
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1026
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1027
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1028
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1031
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1032
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1033
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1059
    :cond_23
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_32

    .line 1060
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_26

    .line 1061
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_25

    .line 1062
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_24

    .line 1063
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1064
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1065
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1066
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1067
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1068
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1069
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1070
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1071
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1072
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1094
    :cond_24
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1095
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1096
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1097
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1098
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1099
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1100
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1101
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1120
    :cond_25
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1121
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1122
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1123
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1124
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1125
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1126
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1127
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1128
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1129
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1130
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1154
    :cond_26
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_30

    .line 1155
    add-int/lit8 v10, v4, 0x0

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_28

    .line 1156
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, 0x0

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_27

    .line 1157
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1158
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1159
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1160
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1161
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1162
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1163
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1164
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1165
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1166
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1188
    :cond_27
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1189
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1190
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1191
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1192
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1193
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1194
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1195
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1213
    :cond_28
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_2f

    .line 1214
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_2e

    .line 1215
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_2d

    .line 1216
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_2c

    .line 1217
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_2b

    .line 1218
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_2a

    .line 1219
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_29

    .line 1220
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1223
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1228
    :cond_29
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1229
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1236
    :cond_2a
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1237
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1238
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1247
    :cond_2b
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1248
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1249
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1250
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1261
    :cond_2c
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1262
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1263
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1264
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1265
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1278
    :cond_2d
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1279
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1280
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1281
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1282
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1283
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1298
    :cond_2e
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1299
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1300
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1301
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1302
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1303
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1304
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1321
    :cond_2f
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1322
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1323
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1324
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1325
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1326
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1327
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1328
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1347
    :cond_30
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_31

    .line 1348
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1349
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1350
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1351
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1352
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1353
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1354
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1355
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1356
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1357
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1358
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1382
    :cond_31
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1383
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1384
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1385
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1386
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1387
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1388
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1389
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1390
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1411
    :cond_32
    add-int/lit8 v10, v4, -0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_33

    .line 1412
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1413
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1414
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1415
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1416
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1417
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1418
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1419
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1420
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1421
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1422
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 1425
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1449
    :cond_33
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1450
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1451
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1452
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1453
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1454
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1455
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1456
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1457
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1458
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1461
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1462
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1463
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1490
    :cond_34
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_36

    .line 1491
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1492
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1493
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1494
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1495
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1496
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1497
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1498
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1499
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1500
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_35

    .line 1501
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 1504
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1509
    :cond_35
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1510
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1534
    :cond_36
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1535
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1536
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1537
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1538
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1539
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1540
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1541
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1542
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1543
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_37

    .line 1544
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1547
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1548
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1555
    :cond_37
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1556
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1557
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1584
    :cond_38
    add-int/lit8 v10, v4, 0x0

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_3b

    .line 1585
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1586
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1587
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1588
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1589
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1590
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1591
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1592
    add-int/lit8 v9, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1593
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_3a

    .line 1594
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_39

    .line 1595
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 1598
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1603
    :cond_39
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1604
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1611
    :cond_3a
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1612
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1613
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1637
    :cond_3b
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1638
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1639
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1640
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1641
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x0

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1642
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1643
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1644
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1645
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1646
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_3d

    .line 1647
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_3c

    .line 1648
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1651
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1656
    :cond_3c
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1657
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1664
    :cond_3d
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1665
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1666
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 174
    :cond_3e
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto/16 :goto_0

    .line 1696
    :cond_3f
    :goto_3
    if-ge v1, v2, :cond_40

    .line 1697
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FeaturePoint;

    iget v3, v0, LCatalano/Imaging/Corners/FeaturePoint;->x:I

    .line 1698
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FeaturePoint;

    iget v4, v0, LCatalano/Imaging/Corners/FeaturePoint;->y:I

    .line 1700
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FeaturePoint;

    invoke-direct {p0, p1, v3, v4}, LCatalano/Imaging/Corners/Fast12;->a(LCatalano/Imaging/FastBitmap;II)I

    move-result v3

    iput v3, v0, LCatalano/Imaging/Corners/FeaturePoint;->score:I

    .line 1696
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1702
    :cond_40
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1703
    return-object v5
.end method

.method private a(LCatalano/Imaging/FastBitmap;III)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1728
    invoke-virtual {p1, p2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    add-int/2addr v2, p4

    .line 1729
    invoke-virtual {p1, p2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    sub-int/2addr v3, p4

    .line 1731
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, 0x0

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_cb

    .line 1732
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_96

    .line 1733
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_68

    .line 1734
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_37

    .line 1735
    add-int/lit8 v4, p2, 0x0

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_1d

    .line 1736
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_16

    .line 1737
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_10

    .line 1738
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b

    .line 1739
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_7

    .line 1740
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_4

    .line 1741
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2

    .line 1742
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1

    .line 3243
    :cond_0
    :goto_0
    return v0

    .line 1745
    :cond_1
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 1748
    goto :goto_0

    .line 1750
    :cond_2
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_3

    .line 1751
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 1754
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1756
    goto :goto_0

    .line 1758
    :cond_4
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_6

    .line 1759
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_5

    .line 1760
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 1763
    goto :goto_0

    :cond_5
    move v0, v1

    .line 1765
    goto :goto_0

    :cond_6
    move v0, v1

    .line 1767
    goto :goto_0

    .line 1769
    :cond_7
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_a

    .line 1770
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9

    .line 1771
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_8

    .line 1772
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 1775
    goto :goto_0

    :cond_8
    move v0, v1

    .line 1777
    goto :goto_0

    :cond_9
    move v0, v1

    .line 1779
    goto :goto_0

    :cond_a
    move v0, v1

    .line 1781
    goto :goto_0

    .line 1783
    :cond_b
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_f

    .line 1784
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_e

    .line 1785
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d

    .line 1786
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_c

    .line 1787
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 1790
    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 1792
    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 1794
    goto/16 :goto_0

    :cond_e
    move v0, v1

    .line 1796
    goto/16 :goto_0

    :cond_f
    move v0, v1

    .line 1798
    goto/16 :goto_0

    .line 1800
    :cond_10
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_15

    .line 1801
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_14

    .line 1802
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_13

    .line 1803
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_12

    .line 1804
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_11

    .line 1805
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 1808
    goto/16 :goto_0

    :cond_11
    move v0, v1

    .line 1810
    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 1812
    goto/16 :goto_0

    :cond_13
    move v0, v1

    .line 1814
    goto/16 :goto_0

    :cond_14
    move v0, v1

    .line 1816
    goto/16 :goto_0

    :cond_15
    move v0, v1

    .line 1818
    goto/16 :goto_0

    .line 1820
    :cond_16
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1c

    .line 1821
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1b

    .line 1822
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a

    .line 1823
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_19

    .line 1824
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_18

    .line 1825
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_17

    .line 1826
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 1829
    goto/16 :goto_0

    :cond_17
    move v0, v1

    .line 1831
    goto/16 :goto_0

    :cond_18
    move v0, v1

    .line 1833
    goto/16 :goto_0

    :cond_19
    move v0, v1

    .line 1835
    goto/16 :goto_0

    :cond_1a
    move v0, v1

    .line 1837
    goto/16 :goto_0

    :cond_1b
    move v0, v1

    .line 1839
    goto/16 :goto_0

    :cond_1c
    move v0, v1

    .line 1841
    goto/16 :goto_0

    .line 1842
    :cond_1d
    add-int/lit8 v4, p2, 0x0

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_2f

    .line 1843
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, 0x0

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_24

    .line 1844
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_23

    .line 1845
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_22

    .line 1846
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_21

    .line 1847
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_20

    .line 1848
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1f

    .line 1849
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1e

    .line 1850
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 1853
    goto/16 :goto_0

    :cond_1e
    move v0, v1

    .line 1855
    goto/16 :goto_0

    :cond_1f
    move v0, v1

    .line 1857
    goto/16 :goto_0

    :cond_20
    move v0, v1

    .line 1859
    goto/16 :goto_0

    :cond_21
    move v0, v1

    .line 1861
    goto/16 :goto_0

    :cond_22
    move v0, v1

    .line 1863
    goto/16 :goto_0

    :cond_23
    move v0, v1

    .line 1865
    goto/16 :goto_0

    .line 1866
    :cond_24
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2e

    .line 1867
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2d

    .line 1868
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2c

    .line 1869
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2b

    .line 1870
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2a

    .line 1871
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_29

    .line 1872
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_28

    .line 1873
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_27

    .line 1874
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_26

    .line 1875
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_25

    .line 1876
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 1879
    goto/16 :goto_0

    :cond_25
    move v0, v1

    .line 1881
    goto/16 :goto_0

    :cond_26
    move v0, v1

    .line 1883
    goto/16 :goto_0

    :cond_27
    move v0, v1

    .line 1885
    goto/16 :goto_0

    :cond_28
    move v0, v1

    .line 1887
    goto/16 :goto_0

    :cond_29
    move v0, v1

    .line 1889
    goto/16 :goto_0

    :cond_2a
    move v0, v1

    .line 1891
    goto/16 :goto_0

    :cond_2b
    move v0, v1

    .line 1893
    goto/16 :goto_0

    :cond_2c
    move v0, v1

    .line 1895
    goto/16 :goto_0

    :cond_2d
    move v0, v1

    .line 1897
    goto/16 :goto_0

    :cond_2e
    move v0, v1

    .line 1899
    goto/16 :goto_0

    .line 1901
    :cond_2f
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_36

    .line 1902
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_35

    .line 1903
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_34

    .line 1904
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_33

    .line 1905
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_32

    .line 1906
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_31

    .line 1907
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_30

    .line 1908
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 1911
    goto/16 :goto_0

    :cond_30
    move v0, v1

    .line 1913
    goto/16 :goto_0

    :cond_31
    move v0, v1

    .line 1915
    goto/16 :goto_0

    :cond_32
    move v0, v1

    .line 1917
    goto/16 :goto_0

    :cond_33
    move v0, v1

    .line 1919
    goto/16 :goto_0

    :cond_34
    move v0, v1

    .line 1921
    goto/16 :goto_0

    :cond_35
    move v0, v1

    .line 1923
    goto/16 :goto_0

    :cond_36
    move v0, v1

    .line 1925
    goto/16 :goto_0

    .line 1926
    :cond_37
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_54

    .line 1927
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_49

    .line 1928
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_3e

    .line 1929
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_3d

    .line 1930
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_3c

    .line 1931
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_3b

    .line 1932
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_3a

    .line 1933
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_39

    .line 1934
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_38

    .line 1935
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 1938
    goto/16 :goto_0

    :cond_38
    move v0, v1

    .line 1940
    goto/16 :goto_0

    :cond_39
    move v0, v1

    .line 1942
    goto/16 :goto_0

    :cond_3a
    move v0, v1

    .line 1944
    goto/16 :goto_0

    :cond_3b
    move v0, v1

    .line 1946
    goto/16 :goto_0

    :cond_3c
    move v0, v1

    .line 1948
    goto/16 :goto_0

    :cond_3d
    move v0, v1

    .line 1950
    goto/16 :goto_0

    .line 1951
    :cond_3e
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_48

    .line 1952
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_47

    .line 1953
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_46

    .line 1954
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_45

    .line 1955
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_44

    .line 1956
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_43

    .line 1957
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_42

    .line 1958
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_41

    .line 1959
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_40

    .line 1960
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_3f

    .line 1961
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 1964
    goto/16 :goto_0

    :cond_3f
    move v0, v1

    .line 1966
    goto/16 :goto_0

    :cond_40
    move v0, v1

    .line 1968
    goto/16 :goto_0

    :cond_41
    move v0, v1

    .line 1970
    goto/16 :goto_0

    :cond_42
    move v0, v1

    .line 1972
    goto/16 :goto_0

    :cond_43
    move v0, v1

    .line 1974
    goto/16 :goto_0

    :cond_44
    move v0, v1

    .line 1976
    goto/16 :goto_0

    :cond_45
    move v0, v1

    .line 1978
    goto/16 :goto_0

    :cond_46
    move v0, v1

    .line 1980
    goto/16 :goto_0

    :cond_47
    move v0, v1

    .line 1982
    goto/16 :goto_0

    :cond_48
    move v0, v1

    .line 1984
    goto/16 :goto_0

    .line 1986
    :cond_49
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_53

    .line 1987
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_52

    .line 1988
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_51

    .line 1989
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_50

    .line 1990
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_4f

    .line 1991
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_4e

    .line 1992
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_4d

    .line 1993
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_4c

    .line 1994
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_4b

    .line 1995
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_4a

    .line 1996
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 1999
    goto/16 :goto_0

    :cond_4a
    move v0, v1

    .line 2001
    goto/16 :goto_0

    :cond_4b
    move v0, v1

    .line 2003
    goto/16 :goto_0

    :cond_4c
    move v0, v1

    .line 2005
    goto/16 :goto_0

    :cond_4d
    move v0, v1

    .line 2007
    goto/16 :goto_0

    :cond_4e
    move v0, v1

    .line 2009
    goto/16 :goto_0

    :cond_4f
    move v0, v1

    .line 2011
    goto/16 :goto_0

    :cond_50
    move v0, v1

    .line 2013
    goto/16 :goto_0

    :cond_51
    move v0, v1

    .line 2015
    goto/16 :goto_0

    :cond_52
    move v0, v1

    .line 2017
    goto/16 :goto_0

    :cond_53
    move v0, v1

    .line 2019
    goto/16 :goto_0

    .line 2021
    :cond_54
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_5c

    .line 2022
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_5b

    .line 2023
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_5a

    .line 2024
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_59

    .line 2025
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_58

    .line 2026
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_57

    .line 2027
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_56

    .line 2028
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_55

    .line 2029
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2032
    goto/16 :goto_0

    :cond_55
    move v0, v1

    .line 2034
    goto/16 :goto_0

    :cond_56
    move v0, v1

    .line 2036
    goto/16 :goto_0

    :cond_57
    move v0, v1

    .line 2038
    goto/16 :goto_0

    :cond_58
    move v0, v1

    .line 2040
    goto/16 :goto_0

    :cond_59
    move v0, v1

    .line 2042
    goto/16 :goto_0

    :cond_5a
    move v0, v1

    .line 2044
    goto/16 :goto_0

    :cond_5b
    move v0, v1

    .line 2046
    goto/16 :goto_0

    .line 2047
    :cond_5c
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_67

    .line 2048
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_66

    .line 2049
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_65

    .line 2050
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_64

    .line 2051
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_63

    .line 2052
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_62

    .line 2053
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_61

    .line 2054
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_60

    .line 2055
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_5f

    .line 2056
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_5e

    .line 2057
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_5d

    .line 2058
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2061
    goto/16 :goto_0

    :cond_5d
    move v0, v1

    .line 2063
    goto/16 :goto_0

    :cond_5e
    move v0, v1

    .line 2065
    goto/16 :goto_0

    :cond_5f
    move v0, v1

    .line 2067
    goto/16 :goto_0

    :cond_60
    move v0, v1

    .line 2069
    goto/16 :goto_0

    :cond_61
    move v0, v1

    .line 2071
    goto/16 :goto_0

    :cond_62
    move v0, v1

    .line 2073
    goto/16 :goto_0

    :cond_63
    move v0, v1

    .line 2075
    goto/16 :goto_0

    :cond_64
    move v0, v1

    .line 2077
    goto/16 :goto_0

    :cond_65
    move v0, v1

    .line 2079
    goto/16 :goto_0

    :cond_66
    move v0, v1

    .line 2081
    goto/16 :goto_0

    :cond_67
    move v0, v1

    .line 2083
    goto/16 :goto_0

    .line 2084
    :cond_68
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_7f

    .line 2085
    add-int/lit8 v4, p2, -0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_73

    .line 2086
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_72

    .line 2087
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_71

    .line 2088
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_70

    .line 2089
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_6f

    .line 2090
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_6e

    .line 2091
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_6d

    .line 2092
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_6c

    .line 2093
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_6b

    .line 2094
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 2097
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_6a

    .line 2098
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_69

    .line 2099
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2102
    goto/16 :goto_0

    :cond_69
    move v0, v1

    .line 2104
    goto/16 :goto_0

    :cond_6a
    move v0, v1

    .line 2106
    goto/16 :goto_0

    :cond_6b
    move v0, v1

    .line 2108
    goto/16 :goto_0

    :cond_6c
    move v0, v1

    .line 2110
    goto/16 :goto_0

    :cond_6d
    move v0, v1

    .line 2112
    goto/16 :goto_0

    :cond_6e
    move v0, v1

    .line 2114
    goto/16 :goto_0

    :cond_6f
    move v0, v1

    .line 2116
    goto/16 :goto_0

    :cond_70
    move v0, v1

    .line 2118
    goto/16 :goto_0

    :cond_71
    move v0, v1

    .line 2120
    goto/16 :goto_0

    :cond_72
    move v0, v1

    .line 2122
    goto/16 :goto_0

    .line 2123
    :cond_73
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_7e

    .line 2124
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_7d

    .line 2125
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_7c

    .line 2126
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_7b

    .line 2127
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_7a

    .line 2128
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_79

    .line 2129
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_78

    .line 2130
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_77

    .line 2131
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_76

    .line 2132
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_75

    .line 2133
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 2136
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_74

    .line 2137
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2140
    goto/16 :goto_0

    :cond_74
    move v0, v1

    .line 2142
    goto/16 :goto_0

    :cond_75
    move v0, v1

    .line 2144
    goto/16 :goto_0

    :cond_76
    move v0, v1

    .line 2146
    goto/16 :goto_0

    :cond_77
    move v0, v1

    .line 2148
    goto/16 :goto_0

    :cond_78
    move v0, v1

    .line 2150
    goto/16 :goto_0

    :cond_79
    move v0, v1

    .line 2152
    goto/16 :goto_0

    :cond_7a
    move v0, v1

    .line 2154
    goto/16 :goto_0

    :cond_7b
    move v0, v1

    .line 2156
    goto/16 :goto_0

    :cond_7c
    move v0, v1

    .line 2158
    goto/16 :goto_0

    :cond_7d
    move v0, v1

    .line 2160
    goto/16 :goto_0

    :cond_7e
    move v0, v1

    .line 2162
    goto/16 :goto_0

    .line 2164
    :cond_7f
    add-int/lit8 v4, p2, -0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_8a

    .line 2165
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_89

    .line 2166
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_88

    .line 2167
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_87

    .line 2168
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_86

    .line 2169
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_85

    .line 2170
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_84

    .line 2171
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_83

    .line 2172
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_82

    .line 2173
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 2176
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_81

    .line 2177
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_80

    .line 2178
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2181
    goto/16 :goto_0

    :cond_80
    move v0, v1

    .line 2183
    goto/16 :goto_0

    :cond_81
    move v0, v1

    .line 2185
    goto/16 :goto_0

    :cond_82
    move v0, v1

    .line 2187
    goto/16 :goto_0

    :cond_83
    move v0, v1

    .line 2189
    goto/16 :goto_0

    :cond_84
    move v0, v1

    .line 2191
    goto/16 :goto_0

    :cond_85
    move v0, v1

    .line 2193
    goto/16 :goto_0

    :cond_86
    move v0, v1

    .line 2195
    goto/16 :goto_0

    :cond_87
    move v0, v1

    .line 2197
    goto/16 :goto_0

    :cond_88
    move v0, v1

    .line 2199
    goto/16 :goto_0

    :cond_89
    move v0, v1

    .line 2201
    goto/16 :goto_0

    .line 2202
    :cond_8a
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_95

    .line 2203
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_94

    .line 2204
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_93

    .line 2205
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_92

    .line 2206
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_91

    .line 2207
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_90

    .line 2208
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_8f

    .line 2209
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_8e

    .line 2210
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_8d

    .line 2211
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_8c

    .line 2212
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_8b

    .line 2213
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 2216
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2219
    goto/16 :goto_0

    :cond_8b
    move v0, v1

    .line 2221
    goto/16 :goto_0

    :cond_8c
    move v0, v1

    .line 2223
    goto/16 :goto_0

    :cond_8d
    move v0, v1

    .line 2225
    goto/16 :goto_0

    :cond_8e
    move v0, v1

    .line 2227
    goto/16 :goto_0

    :cond_8f
    move v0, v1

    .line 2229
    goto/16 :goto_0

    :cond_90
    move v0, v1

    .line 2231
    goto/16 :goto_0

    :cond_91
    move v0, v1

    .line 2233
    goto/16 :goto_0

    :cond_92
    move v0, v1

    .line 2235
    goto/16 :goto_0

    :cond_93
    move v0, v1

    .line 2237
    goto/16 :goto_0

    :cond_94
    move v0, v1

    .line 2239
    goto/16 :goto_0

    :cond_95
    move v0, v1

    .line 2241
    goto/16 :goto_0

    .line 2242
    :cond_96
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_b1

    .line 2243
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_a3

    .line 2244
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_a2

    .line 2245
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_a1

    .line 2246
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_a0

    .line 2247
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9f

    .line 2248
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9e

    .line 2249
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9d

    .line 2250
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9c

    .line 2251
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9b

    .line 2252
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_98

    .line 2253
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 2256
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_97

    .line 2257
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2260
    goto/16 :goto_0

    :cond_97
    move v0, v1

    .line 2262
    goto/16 :goto_0

    .line 2264
    :cond_98
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9a

    .line 2265
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_99

    .line 2266
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2269
    goto/16 :goto_0

    :cond_99
    move v0, v1

    .line 2271
    goto/16 :goto_0

    :cond_9a
    move v0, v1

    .line 2273
    goto/16 :goto_0

    :cond_9b
    move v0, v1

    .line 2275
    goto/16 :goto_0

    :cond_9c
    move v0, v1

    .line 2277
    goto/16 :goto_0

    :cond_9d
    move v0, v1

    .line 2279
    goto/16 :goto_0

    :cond_9e
    move v0, v1

    .line 2281
    goto/16 :goto_0

    :cond_9f
    move v0, v1

    .line 2283
    goto/16 :goto_0

    :cond_a0
    move v0, v1

    .line 2285
    goto/16 :goto_0

    :cond_a1
    move v0, v1

    .line 2287
    goto/16 :goto_0

    :cond_a2
    move v0, v1

    .line 2289
    goto/16 :goto_0

    .line 2290
    :cond_a3
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_b0

    .line 2291
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_af

    .line 2292
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ae

    .line 2293
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ad

    .line 2294
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ac

    .line 2295
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ab

    .line 2296
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_aa

    .line 2297
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_a9

    .line 2298
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_a8

    .line 2299
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_a5

    .line 2300
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 2303
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_a4

    .line 2304
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2307
    goto/16 :goto_0

    :cond_a4
    move v0, v1

    .line 2309
    goto/16 :goto_0

    .line 2311
    :cond_a5
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_a7

    .line 2312
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_a6

    .line 2313
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2316
    goto/16 :goto_0

    :cond_a6
    move v0, v1

    .line 2318
    goto/16 :goto_0

    :cond_a7
    move v0, v1

    .line 2320
    goto/16 :goto_0

    :cond_a8
    move v0, v1

    .line 2322
    goto/16 :goto_0

    :cond_a9
    move v0, v1

    .line 2324
    goto/16 :goto_0

    :cond_aa
    move v0, v1

    .line 2326
    goto/16 :goto_0

    :cond_ab
    move v0, v1

    .line 2328
    goto/16 :goto_0

    :cond_ac
    move v0, v1

    .line 2330
    goto/16 :goto_0

    :cond_ad
    move v0, v1

    .line 2332
    goto/16 :goto_0

    :cond_ae
    move v0, v1

    .line 2334
    goto/16 :goto_0

    :cond_af
    move v0, v1

    .line 2336
    goto/16 :goto_0

    :cond_b0
    move v0, v1

    .line 2338
    goto/16 :goto_0

    .line 2340
    :cond_b1
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_be

    .line 2341
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_bd

    .line 2342
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_bc

    .line 2343
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_bb

    .line 2344
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_ba

    .line 2345
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b9

    .line 2346
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b8

    .line 2347
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b7

    .line 2348
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b6

    .line 2349
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b3

    .line 2350
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 2353
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b2

    .line 2354
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2357
    goto/16 :goto_0

    :cond_b2
    move v0, v1

    .line 2359
    goto/16 :goto_0

    .line 2361
    :cond_b3
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b5

    .line 2362
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b4

    .line 2363
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2366
    goto/16 :goto_0

    :cond_b4
    move v0, v1

    .line 2368
    goto/16 :goto_0

    :cond_b5
    move v0, v1

    .line 2370
    goto/16 :goto_0

    :cond_b6
    move v0, v1

    .line 2372
    goto/16 :goto_0

    :cond_b7
    move v0, v1

    .line 2374
    goto/16 :goto_0

    :cond_b8
    move v0, v1

    .line 2376
    goto/16 :goto_0

    :cond_b9
    move v0, v1

    .line 2378
    goto/16 :goto_0

    :cond_ba
    move v0, v1

    .line 2380
    goto/16 :goto_0

    :cond_bb
    move v0, v1

    .line 2382
    goto/16 :goto_0

    :cond_bc
    move v0, v1

    .line 2384
    goto/16 :goto_0

    :cond_bd
    move v0, v1

    .line 2386
    goto/16 :goto_0

    .line 2387
    :cond_be
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ca

    .line 2388
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c9

    .line 2389
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c8

    .line 2390
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c7

    .line 2391
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c6

    .line 2392
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c5

    .line 2393
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c4

    .line 2394
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c3

    .line 2395
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c2

    .line 2396
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c1

    .line 2397
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_bf

    .line 2398
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 2401
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2404
    goto/16 :goto_0

    .line 2406
    :cond_bf
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c0

    .line 2407
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2410
    goto/16 :goto_0

    :cond_c0
    move v0, v1

    .line 2412
    goto/16 :goto_0

    :cond_c1
    move v0, v1

    .line 2414
    goto/16 :goto_0

    :cond_c2
    move v0, v1

    .line 2416
    goto/16 :goto_0

    :cond_c3
    move v0, v1

    .line 2418
    goto/16 :goto_0

    :cond_c4
    move v0, v1

    .line 2420
    goto/16 :goto_0

    :cond_c5
    move v0, v1

    .line 2422
    goto/16 :goto_0

    :cond_c6
    move v0, v1

    .line 2424
    goto/16 :goto_0

    :cond_c7
    move v0, v1

    .line 2426
    goto/16 :goto_0

    :cond_c8
    move v0, v1

    .line 2428
    goto/16 :goto_0

    :cond_c9
    move v0, v1

    .line 2430
    goto/16 :goto_0

    :cond_ca
    move v0, v1

    .line 2432
    goto/16 :goto_0

    .line 2433
    :cond_cb
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, 0x0

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_195

    .line 2434
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_e6

    .line 2435
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_d8

    .line 2436
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d7

    .line 2437
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d6

    .line 2438
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d5

    .line 2439
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d4

    .line 2440
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d3

    .line 2441
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d2

    .line 2442
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d1

    .line 2443
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d0

    .line 2444
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_cd

    .line 2445
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 2448
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_cc

    .line 2449
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2452
    goto/16 :goto_0

    :cond_cc
    move v0, v1

    .line 2454
    goto/16 :goto_0

    .line 2456
    :cond_cd
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_cf

    .line 2457
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_ce

    .line 2458
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2461
    goto/16 :goto_0

    :cond_ce
    move v0, v1

    .line 2463
    goto/16 :goto_0

    :cond_cf
    move v0, v1

    .line 2465
    goto/16 :goto_0

    :cond_d0
    move v0, v1

    .line 2467
    goto/16 :goto_0

    :cond_d1
    move v0, v1

    .line 2469
    goto/16 :goto_0

    :cond_d2
    move v0, v1

    .line 2471
    goto/16 :goto_0

    :cond_d3
    move v0, v1

    .line 2473
    goto/16 :goto_0

    :cond_d4
    move v0, v1

    .line 2475
    goto/16 :goto_0

    :cond_d5
    move v0, v1

    .line 2477
    goto/16 :goto_0

    :cond_d6
    move v0, v1

    .line 2479
    goto/16 :goto_0

    :cond_d7
    move v0, v1

    .line 2481
    goto/16 :goto_0

    .line 2482
    :cond_d8
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_e5

    .line 2483
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_e4

    .line 2484
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_e3

    .line 2485
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_e2

    .line 2486
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_e1

    .line 2487
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_e0

    .line 2488
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_df

    .line 2489
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_de

    .line 2490
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_dd

    .line 2491
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_da

    .line 2492
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 2495
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_d9

    .line 2496
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2499
    goto/16 :goto_0

    :cond_d9
    move v0, v1

    .line 2501
    goto/16 :goto_0

    .line 2503
    :cond_da
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_dc

    .line 2504
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_db

    .line 2505
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2508
    goto/16 :goto_0

    :cond_db
    move v0, v1

    .line 2510
    goto/16 :goto_0

    :cond_dc
    move v0, v1

    .line 2512
    goto/16 :goto_0

    :cond_dd
    move v0, v1

    .line 2514
    goto/16 :goto_0

    :cond_de
    move v0, v1

    .line 2516
    goto/16 :goto_0

    :cond_df
    move v0, v1

    .line 2518
    goto/16 :goto_0

    :cond_e0
    move v0, v1

    .line 2520
    goto/16 :goto_0

    :cond_e1
    move v0, v1

    .line 2522
    goto/16 :goto_0

    :cond_e2
    move v0, v1

    .line 2524
    goto/16 :goto_0

    :cond_e3
    move v0, v1

    .line 2526
    goto/16 :goto_0

    :cond_e4
    move v0, v1

    .line 2528
    goto/16 :goto_0

    :cond_e5
    move v0, v1

    .line 2530
    goto/16 :goto_0

    .line 2531
    :cond_e6
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_17b

    .line 2532
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_fd

    .line 2533
    add-int/lit8 v4, p2, -0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_f1

    .line 2534
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_f0

    .line 2535
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_ef

    .line 2536
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_ee

    .line 2537
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_ed

    .line 2538
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_ec

    .line 2539
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_eb

    .line 2540
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_ea

    .line 2541
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_e9

    .line 2542
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_e8

    .line 2543
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 2546
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_e7

    .line 2547
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2550
    goto/16 :goto_0

    :cond_e7
    move v0, v1

    .line 2552
    goto/16 :goto_0

    :cond_e8
    move v0, v1

    .line 2554
    goto/16 :goto_0

    :cond_e9
    move v0, v1

    .line 2556
    goto/16 :goto_0

    :cond_ea
    move v0, v1

    .line 2558
    goto/16 :goto_0

    :cond_eb
    move v0, v1

    .line 2560
    goto/16 :goto_0

    :cond_ec
    move v0, v1

    .line 2562
    goto/16 :goto_0

    :cond_ed
    move v0, v1

    .line 2564
    goto/16 :goto_0

    :cond_ee
    move v0, v1

    .line 2566
    goto/16 :goto_0

    :cond_ef
    move v0, v1

    .line 2568
    goto/16 :goto_0

    :cond_f0
    move v0, v1

    .line 2570
    goto/16 :goto_0

    .line 2571
    :cond_f1
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_fc

    .line 2572
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_fb

    .line 2573
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_fa

    .line 2574
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f9

    .line 2575
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f8

    .line 2576
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f7

    .line 2577
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f6

    .line 2578
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f5

    .line 2579
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f4

    .line 2580
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 2583
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f3

    .line 2584
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f2

    .line 2585
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2588
    goto/16 :goto_0

    :cond_f2
    move v0, v1

    .line 2590
    goto/16 :goto_0

    :cond_f3
    move v0, v1

    .line 2592
    goto/16 :goto_0

    :cond_f4
    move v0, v1

    .line 2594
    goto/16 :goto_0

    :cond_f5
    move v0, v1

    .line 2596
    goto/16 :goto_0

    :cond_f6
    move v0, v1

    .line 2598
    goto/16 :goto_0

    :cond_f7
    move v0, v1

    .line 2600
    goto/16 :goto_0

    :cond_f8
    move v0, v1

    .line 2602
    goto/16 :goto_0

    :cond_f9
    move v0, v1

    .line 2604
    goto/16 :goto_0

    :cond_fa
    move v0, v1

    .line 2606
    goto/16 :goto_0

    :cond_fb
    move v0, v1

    .line 2608
    goto/16 :goto_0

    :cond_fc
    move v0, v1

    .line 2610
    goto/16 :goto_0

    .line 2611
    :cond_fd
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_164

    .line 2612
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_11a

    .line 2613
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_10f

    .line 2614
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_107

    .line 2615
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_106

    .line 2616
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_105

    .line 2617
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_104

    .line 2618
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_103

    .line 2619
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_102

    .line 2620
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_101

    .line 2621
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_100

    .line 2622
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_ff

    .line 2623
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_fe

    .line 2624
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2627
    goto/16 :goto_0

    :cond_fe
    move v0, v1

    .line 2629
    goto/16 :goto_0

    :cond_ff
    move v0, v1

    .line 2631
    goto/16 :goto_0

    :cond_100
    move v0, v1

    .line 2633
    goto/16 :goto_0

    :cond_101
    move v0, v1

    .line 2635
    goto/16 :goto_0

    :cond_102
    move v0, v1

    .line 2637
    goto/16 :goto_0

    :cond_103
    move v0, v1

    .line 2639
    goto/16 :goto_0

    :cond_104
    move v0, v1

    .line 2641
    goto/16 :goto_0

    :cond_105
    move v0, v1

    .line 2643
    goto/16 :goto_0

    :cond_106
    move v0, v1

    .line 2645
    goto/16 :goto_0

    .line 2646
    :cond_107
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_10e

    .line 2647
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_10d

    .line 2648
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_10c

    .line 2649
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_10b

    .line 2650
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_10a

    .line 2651
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_109

    .line 2652
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_108

    .line 2653
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2656
    goto/16 :goto_0

    :cond_108
    move v0, v1

    .line 2658
    goto/16 :goto_0

    :cond_109
    move v0, v1

    .line 2660
    goto/16 :goto_0

    :cond_10a
    move v0, v1

    .line 2662
    goto/16 :goto_0

    :cond_10b
    move v0, v1

    .line 2664
    goto/16 :goto_0

    :cond_10c
    move v0, v1

    .line 2666
    goto/16 :goto_0

    :cond_10d
    move v0, v1

    .line 2668
    goto/16 :goto_0

    :cond_10e
    move v0, v1

    .line 2670
    goto/16 :goto_0

    .line 2672
    :cond_10f
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_119

    .line 2673
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_118

    .line 2674
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_117

    .line 2675
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_116

    .line 2676
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_115

    .line 2677
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_114

    .line 2678
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_113

    .line 2679
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_112

    .line 2680
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_111

    .line 2681
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_110

    .line 2682
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2685
    goto/16 :goto_0

    :cond_110
    move v0, v1

    .line 2687
    goto/16 :goto_0

    :cond_111
    move v0, v1

    .line 2689
    goto/16 :goto_0

    :cond_112
    move v0, v1

    .line 2691
    goto/16 :goto_0

    :cond_113
    move v0, v1

    .line 2693
    goto/16 :goto_0

    :cond_114
    move v0, v1

    .line 2695
    goto/16 :goto_0

    :cond_115
    move v0, v1

    .line 2697
    goto/16 :goto_0

    :cond_116
    move v0, v1

    .line 2699
    goto/16 :goto_0

    :cond_117
    move v0, v1

    .line 2701
    goto/16 :goto_0

    :cond_118
    move v0, v1

    .line 2703
    goto/16 :goto_0

    :cond_119
    move v0, v1

    .line 2705
    goto/16 :goto_0

    .line 2706
    :cond_11a
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_150

    .line 2707
    add-int/lit8 v4, p2, 0x0

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_12c

    .line 2708
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, 0x0

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_124

    .line 2709
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_123

    .line 2710
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_122

    .line 2711
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_121

    .line 2712
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_120

    .line 2713
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_11f

    .line 2714
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_11e

    .line 2715
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_11d

    .line 2716
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_11c

    .line 2717
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_11b

    .line 2718
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2721
    goto/16 :goto_0

    :cond_11b
    move v0, v1

    .line 2723
    goto/16 :goto_0

    :cond_11c
    move v0, v1

    .line 2725
    goto/16 :goto_0

    :cond_11d
    move v0, v1

    .line 2727
    goto/16 :goto_0

    :cond_11e
    move v0, v1

    .line 2729
    goto/16 :goto_0

    :cond_11f
    move v0, v1

    .line 2731
    goto/16 :goto_0

    :cond_120
    move v0, v1

    .line 2733
    goto/16 :goto_0

    :cond_121
    move v0, v1

    .line 2735
    goto/16 :goto_0

    :cond_122
    move v0, v1

    .line 2737
    goto/16 :goto_0

    :cond_123
    move v0, v1

    .line 2739
    goto/16 :goto_0

    .line 2740
    :cond_124
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_12b

    .line 2741
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_12a

    .line 2742
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_129

    .line 2743
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_128

    .line 2744
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_127

    .line 2745
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_126

    .line 2746
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_125

    .line 2747
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2750
    goto/16 :goto_0

    :cond_125
    move v0, v1

    .line 2752
    goto/16 :goto_0

    :cond_126
    move v0, v1

    .line 2754
    goto/16 :goto_0

    :cond_127
    move v0, v1

    .line 2756
    goto/16 :goto_0

    :cond_128
    move v0, v1

    .line 2758
    goto/16 :goto_0

    :cond_129
    move v0, v1

    .line 2760
    goto/16 :goto_0

    :cond_12a
    move v0, v1

    .line 2762
    goto/16 :goto_0

    :cond_12b
    move v0, v1

    .line 2764
    goto/16 :goto_0

    .line 2765
    :cond_12c
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_148

    .line 2766
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_141

    .line 2767
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13b

    .line 2768
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_136

    .line 2769
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_132

    .line 2770
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_12f

    .line 2771
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_12d

    .line 2772
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 2775
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2778
    goto/16 :goto_0

    .line 2780
    :cond_12d
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_12e

    .line 2781
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2784
    goto/16 :goto_0

    :cond_12e
    move v0, v1

    .line 2786
    goto/16 :goto_0

    .line 2788
    :cond_12f
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_131

    .line 2789
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_130

    .line 2790
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2793
    goto/16 :goto_0

    :cond_130
    move v0, v1

    .line 2795
    goto/16 :goto_0

    :cond_131
    move v0, v1

    .line 2797
    goto/16 :goto_0

    .line 2799
    :cond_132
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_135

    .line 2800
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_134

    .line 2801
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_133

    .line 2802
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2805
    goto/16 :goto_0

    :cond_133
    move v0, v1

    .line 2807
    goto/16 :goto_0

    :cond_134
    move v0, v1

    .line 2809
    goto/16 :goto_0

    :cond_135
    move v0, v1

    .line 2811
    goto/16 :goto_0

    .line 2813
    :cond_136
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13a

    .line 2814
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_139

    .line 2815
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_138

    .line 2816
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_137

    .line 2817
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2820
    goto/16 :goto_0

    :cond_137
    move v0, v1

    .line 2822
    goto/16 :goto_0

    :cond_138
    move v0, v1

    .line 2824
    goto/16 :goto_0

    :cond_139
    move v0, v1

    .line 2826
    goto/16 :goto_0

    :cond_13a
    move v0, v1

    .line 2828
    goto/16 :goto_0

    .line 2830
    :cond_13b
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_140

    .line 2831
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13f

    .line 2832
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13e

    .line 2833
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13d

    .line 2834
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13c

    .line 2835
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2838
    goto/16 :goto_0

    :cond_13c
    move v0, v1

    .line 2840
    goto/16 :goto_0

    :cond_13d
    move v0, v1

    .line 2842
    goto/16 :goto_0

    :cond_13e
    move v0, v1

    .line 2844
    goto/16 :goto_0

    :cond_13f
    move v0, v1

    .line 2846
    goto/16 :goto_0

    :cond_140
    move v0, v1

    .line 2848
    goto/16 :goto_0

    .line 2850
    :cond_141
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_147

    .line 2851
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_146

    .line 2852
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_145

    .line 2853
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_144

    .line 2854
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_143

    .line 2855
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_142

    .line 2856
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2859
    goto/16 :goto_0

    :cond_142
    move v0, v1

    .line 2861
    goto/16 :goto_0

    :cond_143
    move v0, v1

    .line 2863
    goto/16 :goto_0

    :cond_144
    move v0, v1

    .line 2865
    goto/16 :goto_0

    :cond_145
    move v0, v1

    .line 2867
    goto/16 :goto_0

    :cond_146
    move v0, v1

    .line 2869
    goto/16 :goto_0

    :cond_147
    move v0, v1

    .line 2871
    goto/16 :goto_0

    .line 2873
    :cond_148
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_14f

    .line 2874
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_14e

    .line 2875
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_14d

    .line 2876
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_14c

    .line 2877
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_14b

    .line 2878
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_14a

    .line 2879
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_149

    .line 2880
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2883
    goto/16 :goto_0

    :cond_149
    move v0, v1

    .line 2885
    goto/16 :goto_0

    :cond_14a
    move v0, v1

    .line 2887
    goto/16 :goto_0

    :cond_14b
    move v0, v1

    .line 2889
    goto/16 :goto_0

    :cond_14c
    move v0, v1

    .line 2891
    goto/16 :goto_0

    :cond_14d
    move v0, v1

    .line 2893
    goto/16 :goto_0

    :cond_14e
    move v0, v1

    .line 2895
    goto/16 :goto_0

    :cond_14f
    move v0, v1

    .line 2897
    goto/16 :goto_0

    .line 2899
    :cond_150
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_15b

    .line 2900
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_15a

    .line 2901
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_159

    .line 2902
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_158

    .line 2903
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_157

    .line 2904
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_156

    .line 2905
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_155

    .line 2906
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_154

    .line 2907
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_153

    .line 2908
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_152

    .line 2909
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_151

    .line 2910
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2913
    goto/16 :goto_0

    :cond_151
    move v0, v1

    .line 2915
    goto/16 :goto_0

    :cond_152
    move v0, v1

    .line 2917
    goto/16 :goto_0

    :cond_153
    move v0, v1

    .line 2919
    goto/16 :goto_0

    :cond_154
    move v0, v1

    .line 2921
    goto/16 :goto_0

    :cond_155
    move v0, v1

    .line 2923
    goto/16 :goto_0

    :cond_156
    move v0, v1

    .line 2925
    goto/16 :goto_0

    :cond_157
    move v0, v1

    .line 2927
    goto/16 :goto_0

    :cond_158
    move v0, v1

    .line 2929
    goto/16 :goto_0

    :cond_159
    move v0, v1

    .line 2931
    goto/16 :goto_0

    :cond_15a
    move v0, v1

    .line 2933
    goto/16 :goto_0

    .line 2934
    :cond_15b
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_163

    .line 2935
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_162

    .line 2936
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_161

    .line 2937
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_160

    .line 2938
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_15f

    .line 2939
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_15e

    .line 2940
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_15d

    .line 2941
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_15c

    .line 2942
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 2945
    goto/16 :goto_0

    :cond_15c
    move v0, v1

    .line 2947
    goto/16 :goto_0

    :cond_15d
    move v0, v1

    .line 2949
    goto/16 :goto_0

    :cond_15e
    move v0, v1

    .line 2951
    goto/16 :goto_0

    :cond_15f
    move v0, v1

    .line 2953
    goto/16 :goto_0

    :cond_160
    move v0, v1

    .line 2955
    goto/16 :goto_0

    :cond_161
    move v0, v1

    .line 2957
    goto/16 :goto_0

    :cond_162
    move v0, v1

    .line 2959
    goto/16 :goto_0

    :cond_163
    move v0, v1

    .line 2961
    goto/16 :goto_0

    .line 2963
    :cond_164
    add-int/lit8 v4, p2, -0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_16f

    .line 2964
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_16e

    .line 2965
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_16d

    .line 2966
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_16c

    .line 2967
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_16b

    .line 2968
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_16a

    .line 2969
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_169

    .line 2970
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_168

    .line 2971
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_167

    .line 2972
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_166

    .line 2973
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_165

    .line 2974
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 2977
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 2980
    goto/16 :goto_0

    :cond_165
    move v0, v1

    .line 2982
    goto/16 :goto_0

    :cond_166
    move v0, v1

    .line 2984
    goto/16 :goto_0

    :cond_167
    move v0, v1

    .line 2986
    goto/16 :goto_0

    :cond_168
    move v0, v1

    .line 2988
    goto/16 :goto_0

    :cond_169
    move v0, v1

    .line 2990
    goto/16 :goto_0

    :cond_16a
    move v0, v1

    .line 2992
    goto/16 :goto_0

    :cond_16b
    move v0, v1

    .line 2994
    goto/16 :goto_0

    :cond_16c
    move v0, v1

    .line 2996
    goto/16 :goto_0

    :cond_16d
    move v0, v1

    .line 2998
    goto/16 :goto_0

    :cond_16e
    move v0, v1

    .line 3000
    goto/16 :goto_0

    .line 3001
    :cond_16f
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_17a

    .line 3002
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_179

    .line 3003
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_178

    .line 3004
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_177

    .line 3005
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_176

    .line 3006
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_175

    .line 3007
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_174

    .line 3008
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_173

    .line 3009
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_172

    .line 3010
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 3013
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_171

    .line 3014
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_170

    .line 3015
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3018
    goto/16 :goto_0

    :cond_170
    move v0, v1

    .line 3020
    goto/16 :goto_0

    :cond_171
    move v0, v1

    .line 3022
    goto/16 :goto_0

    :cond_172
    move v0, v1

    .line 3024
    goto/16 :goto_0

    :cond_173
    move v0, v1

    .line 3026
    goto/16 :goto_0

    :cond_174
    move v0, v1

    .line 3028
    goto/16 :goto_0

    :cond_175
    move v0, v1

    .line 3030
    goto/16 :goto_0

    :cond_176
    move v0, v1

    .line 3032
    goto/16 :goto_0

    :cond_177
    move v0, v1

    .line 3034
    goto/16 :goto_0

    :cond_178
    move v0, v1

    .line 3036
    goto/16 :goto_0

    :cond_179
    move v0, v1

    .line 3038
    goto/16 :goto_0

    :cond_17a
    move v0, v1

    .line 3040
    goto/16 :goto_0

    .line 3042
    :cond_17b
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_187

    .line 3043
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_186

    .line 3044
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_185

    .line 3045
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_184

    .line 3046
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_183

    .line 3047
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_182

    .line 3048
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_181

    .line 3049
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_180

    .line 3050
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_17f

    .line 3051
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_17e

    .line 3052
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_17c

    .line 3053
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 3056
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3059
    goto/16 :goto_0

    .line 3061
    :cond_17c
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_17d

    .line 3062
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3065
    goto/16 :goto_0

    :cond_17d
    move v0, v1

    .line 3067
    goto/16 :goto_0

    :cond_17e
    move v0, v1

    .line 3069
    goto/16 :goto_0

    :cond_17f
    move v0, v1

    .line 3071
    goto/16 :goto_0

    :cond_180
    move v0, v1

    .line 3073
    goto/16 :goto_0

    :cond_181
    move v0, v1

    .line 3075
    goto/16 :goto_0

    :cond_182
    move v0, v1

    .line 3077
    goto/16 :goto_0

    :cond_183
    move v0, v1

    .line 3079
    goto/16 :goto_0

    :cond_184
    move v0, v1

    .line 3081
    goto/16 :goto_0

    :cond_185
    move v0, v1

    .line 3083
    goto/16 :goto_0

    :cond_186
    move v0, v1

    .line 3085
    goto/16 :goto_0

    .line 3086
    :cond_187
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_194

    .line 3087
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_193

    .line 3088
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_192

    .line 3089
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_191

    .line 3090
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_190

    .line 3091
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18f

    .line 3092
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18e

    .line 3093
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18d

    .line 3094
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18c

    .line 3095
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_189

    .line 3096
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 3099
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_188

    .line 3100
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3103
    goto/16 :goto_0

    :cond_188
    move v0, v1

    .line 3105
    goto/16 :goto_0

    .line 3107
    :cond_189
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18b

    .line 3108
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18a

    .line 3109
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3112
    goto/16 :goto_0

    :cond_18a
    move v0, v1

    .line 3114
    goto/16 :goto_0

    :cond_18b
    move v0, v1

    .line 3116
    goto/16 :goto_0

    :cond_18c
    move v0, v1

    .line 3118
    goto/16 :goto_0

    :cond_18d
    move v0, v1

    .line 3120
    goto/16 :goto_0

    :cond_18e
    move v0, v1

    .line 3122
    goto/16 :goto_0

    :cond_18f
    move v0, v1

    .line 3124
    goto/16 :goto_0

    :cond_190
    move v0, v1

    .line 3126
    goto/16 :goto_0

    :cond_191
    move v0, v1

    .line 3128
    goto/16 :goto_0

    :cond_192
    move v0, v1

    .line 3130
    goto/16 :goto_0

    :cond_193
    move v0, v1

    .line 3132
    goto/16 :goto_0

    :cond_194
    move v0, v1

    .line 3134
    goto/16 :goto_0

    .line 3136
    :cond_195
    add-int/lit8 v4, p2, 0x0

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_1a3

    .line 3137
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a2

    .line 3138
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a1

    .line 3139
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a0

    .line 3140
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_19f

    .line 3141
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_19e

    .line 3142
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_19d

    .line 3143
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_19c

    .line 3144
    add-int/lit8 v3, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_19b

    .line 3145
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_198

    .line 3146
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_196

    .line 3147
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 3150
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3153
    goto/16 :goto_0

    .line 3155
    :cond_196
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_197

    .line 3156
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3159
    goto/16 :goto_0

    :cond_197
    move v0, v1

    .line 3161
    goto/16 :goto_0

    .line 3163
    :cond_198
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_19a

    .line 3164
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_199

    .line 3165
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3168
    goto/16 :goto_0

    :cond_199
    move v0, v1

    .line 3170
    goto/16 :goto_0

    :cond_19a
    move v0, v1

    .line 3172
    goto/16 :goto_0

    :cond_19b
    move v0, v1

    .line 3174
    goto/16 :goto_0

    :cond_19c
    move v0, v1

    .line 3176
    goto/16 :goto_0

    :cond_19d
    move v0, v1

    .line 3178
    goto/16 :goto_0

    :cond_19e
    move v0, v1

    .line 3180
    goto/16 :goto_0

    :cond_19f
    move v0, v1

    .line 3182
    goto/16 :goto_0

    :cond_1a0
    move v0, v1

    .line 3184
    goto/16 :goto_0

    :cond_1a1
    move v0, v1

    .line 3186
    goto/16 :goto_0

    :cond_1a2
    move v0, v1

    .line 3188
    goto/16 :goto_0

    .line 3189
    :cond_1a3
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b1

    .line 3190
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b0

    .line 3191
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1af

    .line 3192
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1ae

    .line 3193
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x0

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1ad

    .line 3194
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1ac

    .line 3195
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1ab

    .line 3196
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1aa

    .line 3197
    add-int/lit8 v2, p2, 0x0

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1a9

    .line 3198
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1a6

    .line 3199
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1a4

    .line 3200
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 3203
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3206
    goto/16 :goto_0

    .line 3208
    :cond_1a4
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1a5

    .line 3209
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3212
    goto/16 :goto_0

    :cond_1a5
    move v0, v1

    .line 3214
    goto/16 :goto_0

    .line 3216
    :cond_1a6
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1a8

    .line 3217
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1a7

    .line 3218
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3221
    goto/16 :goto_0

    :cond_1a7
    move v0, v1

    .line 3223
    goto/16 :goto_0

    :cond_1a8
    move v0, v1

    .line 3225
    goto/16 :goto_0

    :cond_1a9
    move v0, v1

    .line 3227
    goto/16 :goto_0

    :cond_1aa
    move v0, v1

    .line 3229
    goto/16 :goto_0

    :cond_1ab
    move v0, v1

    .line 3231
    goto/16 :goto_0

    :cond_1ac
    move v0, v1

    .line 3233
    goto/16 :goto_0

    :cond_1ad
    move v0, v1

    .line 3235
    goto/16 :goto_0

    :cond_1ae
    move v0, v1

    .line 3237
    goto/16 :goto_0

    :cond_1af
    move v0, v1

    .line 3239
    goto/16 :goto_0

    :cond_1b0
    move v0, v1

    .line 3241
    goto/16 :goto_0

    :cond_1b1
    move v0, v1

    .line 3243
    goto/16 :goto_0
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            ")",
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/Corners/FeaturePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 156
    :goto_0
    invoke-virtual {p0}, LCatalano/Imaging/Corners/Fast12;->isSuppressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget v1, p0, LCatalano/Imaging/Corners/Fast12;->a:I

    invoke-direct {p0, v0, v1}, LCatalano/Imaging/Corners/Fast12;->a(LCatalano/Imaging/FastBitmap;I)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v0}, LCatalano/Imaging/Corners/Fast12;->a(IILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 162
    :goto_1
    return-object v0

    .line 152
    :cond_0
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 153
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->toGrayscale()V

    goto :goto_0

    .line 162
    :cond_1
    iget v1, p0, LCatalano/Imaging/Corners/Fast12;->a:I

    invoke-direct {p0, v0, v1}, LCatalano/Imaging/Corners/Fast12;->a(LCatalano/Imaging/FastBitmap;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, LCatalano/Imaging/Corners/Fast12;->a:I

    return v0
.end method

.method public isSuppressed()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, LCatalano/Imaging/Corners/Fast12;->b:Z

    return v0
.end method

.method public setSuppression(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, LCatalano/Imaging/Corners/Fast12;->b:Z

    .line 119
    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, LCatalano/Imaging/Corners/Fast12;->a:I

    .line 103
    return-void
.end method
