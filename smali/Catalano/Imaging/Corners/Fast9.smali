.class public LCatalano/Imaging/Corners/Fast9;
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
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Corners/Fast9;->a:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Corners/Fast9;->b:Z

    .line 127
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Corners/Fast9;->a:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Corners/Fast9;->b:Z

    .line 134
    iput p1, p0, LCatalano/Imaging/Corners/Fast9;->a:I

    .line 135
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Corners/Fast9;->a:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Corners/Fast9;->b:Z

    .line 143
    iput p1, p0, LCatalano/Imaging/Corners/Fast9;->a:I

    .line 144
    iput-boolean p2, p0, LCatalano/Imaging/Corners/Fast9;->b:Z

    .line 145
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;II)I
    .locals 4

    .prologue
    .line 3099
    iget v2, p0, LCatalano/Imaging/Corners/Fast9;->a:I

    .line 3100
    const/16 v1, 0xff

    .line 3101
    add-int v0, v1, v2

    div-int/lit8 v0, v0, 0x2

    .line 3104
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, LCatalano/Imaging/Corners/Fast9;->a(LCatalano/Imaging/FastBitmap;III)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    .line 3110
    :goto_1
    add-int/lit8 v0, v1, -0x1

    if-eq v2, v0, :cond_0

    if-ne v2, v1, :cond_2

    .line 3111
    :cond_0
    return v2

    :cond_1
    move v1, v0

    .line 3107
    goto :goto_1

    .line 3114
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

    .line 6027
    filled-new-array {p1, p0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 6028
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 6030
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 6031
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Imaging/Corners/FeaturePoint;

    .line 6032
    iget v5, v1, LCatalano/Imaging/Corners/FeaturePoint;->x:I

    aget-object v5, v0, v5

    iget v6, v1, LCatalano/Imaging/Corners/FeaturePoint;->y:I

    iget v1, v1, LCatalano/Imaging/Corners/FeaturePoint;->score:I

    aput v1, v5, v6

    .line 6030
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 6035
    :cond_0
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 6036
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Imaging/Corners/FeaturePoint;

    .line 6037
    iget v2, v1, LCatalano/Imaging/Corners/FeaturePoint;->x:I

    .line 6038
    iget v5, v1, LCatalano/Imaging/Corners/FeaturePoint;->y:I

    .line 6039
    iget v6, v1, LCatalano/Imaging/Corners/FeaturePoint;->score:I

    .line 6040
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

    .line 6044
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6035
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6047
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
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 170
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 173
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    move v4, v3

    move v2, v1

    .line 176
    :goto_0
    add-int/lit8 v0, v7, -0x3

    if-ge v4, v0, :cond_a1

    move v0, v2

    move v2, v3

    .line 177
    :goto_1
    add-int/lit8 v8, v6, -0x3

    if-ge v2, v8, :cond_a0

    .line 178
    invoke-virtual {p1, v4, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    add-int/2addr v8, p2

    .line 179
    invoke-virtual {p1, v4, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, p2

    .line 181
    add-int/lit8 v10, v4, 0x3

    invoke-virtual {p1, v10, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_4b

    .line 182
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_37

    .line 183
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_27

    .line 184
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_1b

    .line 185
    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v4, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_11

    .line 186
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_b

    .line 187
    add-int/lit8 v10, v4, -0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_6

    .line 188
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_3

    .line 189
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_2

    .line 3083
    :cond_0
    :goto_2
    new-instance v8, LCatalano/Imaging/Corners/FeaturePoint;

    invoke-direct {v8, v4, v2}, LCatalano/Imaging/Corners/FeaturePoint;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3084
    add-int/lit8 v0, v0, 0x1

    .line 177
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 192
    :cond_2
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto :goto_2

    .line 196
    :cond_3
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_5

    .line 197
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_4

    .line 198
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto :goto_2

    .line 202
    :cond_4
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 203
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 204
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 205
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 206
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 207
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 208
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 209
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 228
    :cond_5
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 229
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 235
    :cond_6
    add-int/lit8 v10, v4, -0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_9

    .line 236
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_8

    .line 237
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, -0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_7

    .line 238
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 242
    :cond_7
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 243
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 244
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 245
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 246
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 247
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 248
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 249
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 268
    :cond_8
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 269
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 270
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 271
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 272
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 273
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 274
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 275
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 294
    :cond_9
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, -0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_a

    .line 295
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 296
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 302
    :cond_a
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 303
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 304
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 305
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 306
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 307
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 308
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 309
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 310
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 330
    :cond_b
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_f

    .line 331
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_d

    .line 332
    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v4, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_c

    .line 333
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 334
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 337
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 338
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 339
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 340
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 341
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 342
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 358
    :cond_c
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 359
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 360
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 361
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 362
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 363
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 364
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 365
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 383
    :cond_d
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_e

    .line 384
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 385
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 386
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 387
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 388
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 389
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 390
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 391
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 394
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 413
    :cond_e
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 414
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 415
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 416
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 417
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 418
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 419
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 420
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 439
    :cond_f
    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v4, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_10

    .line 440
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 441
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 442
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 445
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 446
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 447
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 448
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 449
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 450
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 468
    :cond_10
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 469
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 470
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 471
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 472
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 473
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 474
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 475
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 476
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 479
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 499
    :cond_11
    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v4, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_17

    .line 500
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, -0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_14

    .line 501
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, -0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_13

    .line 502
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 503
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_12

    .line 504
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 507
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 508
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 509
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 510
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 511
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 524
    :cond_12
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 525
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 526
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 527
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 528
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 529
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 545
    :cond_13
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 546
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 547
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 548
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 549
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 550
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 551
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 552
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 570
    :cond_14
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_16

    .line 571
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 572
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 573
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 574
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 575
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 576
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 577
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_15

    .line 578
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 581
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 586
    :cond_15
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 587
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 606
    :cond_16
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 607
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 608
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 609
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 610
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 611
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 612
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 613
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 632
    :cond_17
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, -0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_19

    .line 633
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 634
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 635
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_18

    .line 636
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 639
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 640
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 641
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 642
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 643
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 656
    :cond_18
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 657
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 658
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 659
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 660
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 661
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 679
    :cond_19
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 680
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 681
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 682
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 683
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 684
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 685
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 686
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1a

    .line 687
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 690
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 695
    :cond_1a
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 696
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 716
    :cond_1b
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_21

    .line 717
    add-int/lit8 v10, v4, -0x2

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_1e

    .line 718
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 719
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 720
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1d

    .line 721
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1c

    .line 722
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 725
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 726
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 727
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 728
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 739
    :cond_1c
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 740
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 741
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 742
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 743
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 756
    :cond_1d
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 757
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 758
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 759
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 760
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 761
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 779
    :cond_1e
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 780
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 781
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 782
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 783
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 784
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_20

    .line 785
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1f

    .line 786
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 789
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 790
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 797
    :cond_1f
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 798
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 799
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 808
    :cond_20
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 809
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 810
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 811
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 832
    :cond_21
    add-int/lit8 v10, v4, -0x2

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_24

    .line 833
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 834
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 835
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_23

    .line 836
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_22

    .line 837
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 840
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 841
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 842
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 843
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 854
    :cond_22
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 855
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 856
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 857
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 858
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 871
    :cond_23
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 872
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 873
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 874
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 875
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 876
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 894
    :cond_24
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 895
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 896
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 897
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 898
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 899
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 900
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_26

    .line 901
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_25

    .line 902
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 905
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 910
    :cond_25
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 911
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 918
    :cond_26
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 919
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 920
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 940
    :cond_27
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_2f

    .line 941
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_2b

    .line 942
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 943
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 944
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_2a

    .line 945
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_29

    .line 946
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_28

    .line 947
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 950
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 951
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 952
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 961
    :cond_28
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 962
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 963
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 964
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 975
    :cond_29
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 976
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 977
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 978
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 979
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 992
    :cond_2a
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 993
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 994
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 995
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 996
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 997
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1015
    :cond_2b
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1016
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1017
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1018
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1019
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_2e

    .line 1020
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_2d

    .line 1021
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_2c

    .line 1022
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1025
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1026
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1033
    :cond_2c
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1034
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1035
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1044
    :cond_2d
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1045
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1046
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1047
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1058
    :cond_2e
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1059
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1060
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1061
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1062
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1083
    :cond_2f
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_33

    .line 1084
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1085
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1086
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_32

    .line 1087
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_31

    .line 1088
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_30

    .line 1089
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 1092
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1093
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1094
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1103
    :cond_30
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1104
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1105
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1106
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1117
    :cond_31
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1118
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1119
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1120
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1121
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1134
    :cond_32
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1135
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1136
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1137
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1138
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1139
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1157
    :cond_33
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1158
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1159
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1160
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1161
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1162
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_36

    .line 1163
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_35

    .line 1164
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_34

    .line 1165
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1168
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1173
    :cond_34
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1174
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1181
    :cond_35
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1182
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1183
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1192
    :cond_36
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

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

    .line 1215
    :cond_37
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_41

    .line 1216
    add-int/lit8 v10, v4, -0x3

    invoke-virtual {p1, v10, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_3c

    .line 1217
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1218
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1219
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_3b

    .line 1220
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_3a

    .line 1221
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_39

    .line 1222
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_38

    .line 1223
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 1226
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1227
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1234
    :cond_38
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1235
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1236
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1245
    :cond_39
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1246
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1247
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1248
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1259
    :cond_3a
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1260
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1261
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1262
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1263
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1276
    :cond_3b
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1277
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1278
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1279
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1280
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1281
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1299
    :cond_3c
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1300
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1301
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1302
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_40

    .line 1303
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_3f

    .line 1304
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_3e

    .line 1305
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_3d

    .line 1306
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1309
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1310
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1317
    :cond_3d
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1318
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1319
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1328
    :cond_3e
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1329
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1330
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1331
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1342
    :cond_3f
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1343
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1344
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1345
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1346
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1359
    :cond_40
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1360
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1361
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1362
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1363
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1364
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1385
    :cond_41
    add-int/lit8 v10, v4, -0x3

    invoke-virtual {p1, v10, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_46

    .line 1386
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1387
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1388
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_45

    .line 1389
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_44

    .line 1390
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_43

    .line 1391
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_42

    .line 1392
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 1395
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1396
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1403
    :cond_42
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1404
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1405
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1414
    :cond_43
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1415
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1416
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1417
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1428
    :cond_44
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1429
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1430
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1431
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1432
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1445
    :cond_45
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1446
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1447
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1448
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1449
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1450
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1468
    :cond_46
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1469
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1470
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1471
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1472
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_4a

    .line 1473
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_49

    .line 1474
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_48

    .line 1475
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_47

    .line 1476
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1479
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1484
    :cond_47
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1485
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1492
    :cond_48
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1493
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1494
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1503
    :cond_49
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1504
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1505
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1506
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1517
    :cond_4a
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1518
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1519
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1520
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1521
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1541
    :cond_4b
    add-int/lit8 v10, v4, 0x3

    invoke-virtual {p1, v10, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_94

    .line 1542
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_55

    .line 1543
    add-int/lit8 v10, v4, -0x3

    invoke-virtual {p1, v10, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_50

    .line 1544
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1545
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1546
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_4f

    .line 1547
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_4e

    .line 1548
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_4d

    .line 1549
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_4c

    .line 1550
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 1553
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1554
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1561
    :cond_4c
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1562
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1563
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1572
    :cond_4d
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1573
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1574
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1575
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1586
    :cond_4e
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1587
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1588
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1589
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1590
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1603
    :cond_4f
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1604
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1605
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1606
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1607
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1608
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1626
    :cond_50
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1627
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1628
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1629
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_54

    .line 1630
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_53

    .line 1631
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_52

    .line 1632
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_51

    .line 1633
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1636
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1637
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1644
    :cond_51
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1645
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1646
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1655
    :cond_52
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1656
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1657
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1658
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1669
    :cond_53
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1670
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1671
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1672
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1673
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1686
    :cond_54
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1687
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1688
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1689
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1690
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1691
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1711
    :cond_55
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_8a

    .line 1712
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_5d

    .line 1713
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_59

    .line 1714
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1715
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1716
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1717
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_58

    .line 1718
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_57

    .line 1719
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_56

    .line 1720
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 1723
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1724
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1731
    :cond_56
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1732
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1733
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1742
    :cond_57
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1743
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1744
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1745
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1756
    :cond_58
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1757
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1758
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1759
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1760
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1778
    :cond_59
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1779
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1780
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1781
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_5c

    .line 1782
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_5b

    .line 1783
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_5a

    .line 1784
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1787
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1788
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1789
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1798
    :cond_5a
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1799
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1800
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1801
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1812
    :cond_5b
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1813
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1814
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1815
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1816
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1829
    :cond_5c
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1830
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1831
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1832
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1833
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1834
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1854
    :cond_5d
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_82

    .line 1855
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_63

    .line 1856
    add-int/lit8 v10, v4, -0x2

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_60

    .line 1857
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1858
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1859
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1860
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1861
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_5f

    .line 1862
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_5e

    .line 1863
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 1866
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1867
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1874
    :cond_5e
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1875
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1876
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1885
    :cond_5f
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1886
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1887
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1888
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1906
    :cond_60
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1907
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1908
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1909
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_62

    .line 1910
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_61

    .line 1911
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1914
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1915
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1916
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1917
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1928
    :cond_61
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1929
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1930
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1931
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1932
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1945
    :cond_62
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1946
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1947
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1948
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1949
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 1950
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 1970
    :cond_63
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_7c

    .line 1971
    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v4, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_69

    .line 1972
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, -0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_65

    .line 1973
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1974
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1975
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1976
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1977
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1978
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1979
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_64

    .line 1980
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 1983
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 1988
    :cond_64
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 1989
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2007
    :cond_65
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, -0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_68

    .line 2008
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, -0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_66

    .line 2009
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2010
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2011
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2012
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2013
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2014
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2015
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2031
    :cond_66
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2032
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2033
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_67

    .line 2034
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 2037
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2038
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2039
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2040
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2041
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2054
    :cond_67
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2055
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2056
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2057
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2058
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2059
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2078
    :cond_68
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2079
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2080
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2081
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2082
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2083
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2084
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2085
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2103
    :cond_69
    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v4, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_78

    .line 2104
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_6d

    .line 2105
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_6a

    .line 2106
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2107
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2108
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2109
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2110
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2111
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2112
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2113
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 2116
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2134
    :cond_6a
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_6c

    .line 2135
    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v4, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_6b

    .line 2136
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2137
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2138
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2139
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2140
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2141
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2142
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2158
    :cond_6b
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2159
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2160
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 2163
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2164
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2165
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2166
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2167
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2168
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2187
    :cond_6c
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2188
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2189
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2190
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2191
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2192
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2193
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2194
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2212
    :cond_6d
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_76

    .line 2213
    add-int/lit8 v10, v4, -0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_70

    .line 2214
    add-int/lit8 v10, v4, 0x3

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_6f

    .line 2215
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, -0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_6e

    .line 2216
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2217
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2218
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2219
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2220
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2221
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2222
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2238
    :cond_6e
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2239
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2246
    :cond_6f
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2247
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2248
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2249
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2250
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2251
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2252
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2253
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2271
    :cond_70
    add-int/lit8 v10, v4, -0x2

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v9, :cond_74

    .line 2272
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_72

    .line 2273
    add-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_71

    .line 2274
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2275
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2276
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2277
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2278
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2279
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2280
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2296
    :cond_71
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2297
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2303
    :cond_72
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_73

    .line 2304
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 2307
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2312
    :cond_73
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2313
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2320
    :cond_74
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, -0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_75

    .line 2321
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2322
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2323
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2324
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2325
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2326
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2327
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2328
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2346
    :cond_75
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2347
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2348
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2357
    :cond_76
    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v4, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_77

    .line 2358
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2359
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2360
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2361
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2362
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2363
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2364
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2365
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 2368
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2386
    :cond_77
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2387
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2388
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2389
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 2392
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2393
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2394
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2395
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2396
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2397
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2418
    :cond_78
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, -0x3

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_7a

    .line 2419
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2420
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2421
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2422
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2423
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2424
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2425
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_79

    .line 2426
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 2429
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2434
    :cond_79
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2435
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2453
    :cond_7a
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2454
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2455
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2456
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_7b

    .line 2457
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 2460
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2461
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2462
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2463
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2464
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2477
    :cond_7b
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2478
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2479
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2480
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2481
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2482
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2503
    :cond_7c
    add-int/lit8 v10, v4, -0x2

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_7f

    .line 2504
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2505
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2506
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2507
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2508
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2509
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_7e

    .line 2510
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_7d

    .line 2511
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 2514
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2519
    :cond_7d
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2520
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2527
    :cond_7e
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2528
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2529
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2547
    :cond_7f
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2548
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2549
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2550
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_81

    .line 2551
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_80

    .line 2552
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 2555
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2556
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2557
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2558
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2569
    :cond_80
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2570
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2571
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2572
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2573
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2586
    :cond_81
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2587
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2588
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2589
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2590
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2591
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2612
    :cond_82
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_86

    .line 2613
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2614
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2615
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2616
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2617
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_85

    .line 2618
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_84

    .line 2619
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_83

    .line 2620
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 2623
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2628
    :cond_83
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2629
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2636
    :cond_84
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2637
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2638
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2647
    :cond_85
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2648
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2649
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2650
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2668
    :cond_86
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2669
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2670
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2671
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_89

    .line 2672
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_88

    .line 2673
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_87

    .line 2674
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 2677
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2678
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2679
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2688
    :cond_87
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2689
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2690
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2691
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2702
    :cond_88
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2703
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2704
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2705
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2706
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2719
    :cond_89
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2720
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2721
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2722
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2723
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2724
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2745
    :cond_8a
    add-int/lit8 v10, v4, -0x3

    invoke-virtual {p1, v10, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_8f

    .line 2746
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2747
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2748
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2749
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_8e

    .line 2750
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_8d

    .line 2751
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_8c

    .line 2752
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_8b

    .line 2753
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 2756
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2761
    :cond_8b
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2762
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2769
    :cond_8c
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2770
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2771
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2780
    :cond_8d
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2781
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2782
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2783
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2794
    :cond_8e
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2795
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2796
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2797
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2798
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2816
    :cond_8f
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2817
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2818
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2819
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_93

    .line 2820
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_92

    .line 2821
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_91

    .line 2822
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_90

    .line 2823
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 2826
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2827
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2834
    :cond_90
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2835
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2836
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2845
    :cond_91
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2846
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2847
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2848
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2859
    :cond_92
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2860
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2861
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2862
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2863
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2876
    :cond_93
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2877
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2878
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2879
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2880
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2881
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 2902
    :cond_94
    add-int/lit8 v10, v4, -0x3

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v8, :cond_9a

    .line 2903
    add-int/lit8 v9, v4, -0x3

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2904
    add-int/lit8 v9, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2905
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_99

    .line 2906
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_98

    .line 2907
    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_97

    .line 2908
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_96

    .line 2909
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_95

    .line 2910
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-gt v9, v8, :cond_0

    .line 2913
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2918
    :cond_95
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2919
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2926
    :cond_96
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2927
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2928
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2937
    :cond_97
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2938
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2939
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2940
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2951
    :cond_98
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2952
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2953
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2954
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2955
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2968
    :cond_99
    add-int/lit8 v9, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2969
    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2970
    add-int/lit8 v9, v2, -0x3

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2971
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2972
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    .line 2973
    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v8, :cond_1

    goto/16 :goto_2

    .line 2991
    :cond_9a
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2992
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2993
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 2994
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_9f

    .line 2995
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_9e

    .line 2996
    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_9d

    .line 2997
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_9c

    .line 2998
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_9b

    .line 2999
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 3002
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 3007
    :cond_9b
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3008
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 3015
    :cond_9c
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3016
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3017
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 3026
    :cond_9d
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3027
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3028
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3029
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 3040
    :cond_9e
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3041
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3042
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3043
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3044
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 3057
    :cond_9f
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3058
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3059
    add-int/lit8 v8, v2, -0x3

    invoke-virtual {p1, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3060
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v2, -0x3

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3061
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 3062
    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    if-ge v8, v9, :cond_1

    goto/16 :goto_2

    .line 176
    :cond_a0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto/16 :goto_0

    .line 3088
    :cond_a1
    :goto_3
    if-ge v1, v2, :cond_a2

    .line 3089
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FeaturePoint;

    iget v3, v0, LCatalano/Imaging/Corners/FeaturePoint;->x:I

    .line 3090
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FeaturePoint;

    iget v4, v0, LCatalano/Imaging/Corners/FeaturePoint;->y:I

    .line 3092
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FeaturePoint;

    invoke-direct {p0, p1, v3, v4}, LCatalano/Imaging/Corners/Fast9;->a(LCatalano/Imaging/FastBitmap;II)I

    move-result v3

    iput v3, v0, LCatalano/Imaging/Corners/FeaturePoint;->score:I

    .line 3088
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 3094
    :cond_a2
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3095
    return-object v5
.end method

.method private a(LCatalano/Imaging/FastBitmap;III)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3120
    invoke-virtual {p1, p2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    add-int/2addr v2, p4

    .line 3121
    invoke-virtual {p1, p2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    sub-int/2addr v3, p4

    .line 3123
    add-int/lit8 v4, p2, 0x3

    invoke-virtual {p1, v4, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_170

    .line 3124
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_11a

    .line 3125
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_d1

    .line 3126
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_95

    .line 3127
    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, p2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_59

    .line 3128
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_29

    .line 3129
    add-int/lit8 v4, p2, -0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_d

    .line 3130
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_2

    .line 3131
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1

    .line 6023
    :cond_0
    :goto_0
    return v0

    .line 3134
    :cond_1
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3137
    goto :goto_0

    .line 3138
    :cond_2
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_b

    .line 3139
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_3

    .line 3140
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3143
    goto :goto_0

    .line 3144
    :cond_3
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_a

    .line 3145
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_9

    .line 3146
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_8

    .line 3147
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_7

    .line 3148
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_6

    .line 3149
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_5

    .line 3150
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_4

    .line 3151
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3154
    goto :goto_0

    :cond_4
    move v0, v1

    .line 3156
    goto :goto_0

    :cond_5
    move v0, v1

    .line 3158
    goto :goto_0

    :cond_6
    move v0, v1

    .line 3160
    goto :goto_0

    :cond_7
    move v0, v1

    .line 3162
    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 3164
    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 3166
    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 3168
    goto/16 :goto_0

    .line 3170
    :cond_b
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_c

    .line 3171
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3174
    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 3176
    goto/16 :goto_0

    .line 3177
    :cond_d
    add-int/lit8 v4, p2, -0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_1e

    .line 3178
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_16

    .line 3179
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, -0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_e

    .line 3180
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3183
    goto/16 :goto_0

    .line 3184
    :cond_e
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_15

    .line 3185
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_14

    .line 3186
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13

    .line 3187
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_12

    .line 3188
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_11

    .line 3189
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_10

    .line 3190
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f

    .line 3191
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3194
    goto/16 :goto_0

    :cond_f
    move v0, v1

    .line 3196
    goto/16 :goto_0

    :cond_10
    move v0, v1

    .line 3198
    goto/16 :goto_0

    :cond_11
    move v0, v1

    .line 3200
    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 3202
    goto/16 :goto_0

    :cond_13
    move v0, v1

    .line 3204
    goto/16 :goto_0

    :cond_14
    move v0, v1

    .line 3206
    goto/16 :goto_0

    :cond_15
    move v0, v1

    .line 3208
    goto/16 :goto_0

    .line 3210
    :cond_16
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1d

    .line 3211
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1c

    .line 3212
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b

    .line 3213
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1a

    .line 3214
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_19

    .line 3215
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18

    .line 3216
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_17

    .line 3217
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3220
    goto/16 :goto_0

    :cond_17
    move v0, v1

    .line 3222
    goto/16 :goto_0

    :cond_18
    move v0, v1

    .line 3224
    goto/16 :goto_0

    :cond_19
    move v0, v1

    .line 3226
    goto/16 :goto_0

    :cond_1a
    move v0, v1

    .line 3228
    goto/16 :goto_0

    :cond_1b
    move v0, v1

    .line 3230
    goto/16 :goto_0

    :cond_1c
    move v0, v1

    .line 3232
    goto/16 :goto_0

    :cond_1d
    move v0, v1

    .line 3234
    goto/16 :goto_0

    .line 3236
    :cond_1e
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, -0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_20

    .line 3237
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1f

    .line 3238
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3241
    goto/16 :goto_0

    :cond_1f
    move v0, v1

    .line 3243
    goto/16 :goto_0

    .line 3244
    :cond_20
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_28

    .line 3245
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_27

    .line 3246
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_26

    .line 3247
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_25

    .line 3248
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_24

    .line 3249
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_23

    .line 3250
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_22

    .line 3251
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_21

    .line 3252
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3255
    goto/16 :goto_0

    :cond_21
    move v0, v1

    .line 3257
    goto/16 :goto_0

    :cond_22
    move v0, v1

    .line 3259
    goto/16 :goto_0

    :cond_23
    move v0, v1

    .line 3261
    goto/16 :goto_0

    :cond_24
    move v0, v1

    .line 3263
    goto/16 :goto_0

    :cond_25
    move v0, v1

    .line 3265
    goto/16 :goto_0

    :cond_26
    move v0, v1

    .line 3267
    goto/16 :goto_0

    :cond_27
    move v0, v1

    .line 3269
    goto/16 :goto_0

    :cond_28
    move v0, v1

    .line 3271
    goto/16 :goto_0

    .line 3272
    :cond_29
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_48

    .line 3273
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_38

    .line 3274
    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, p2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_30

    .line 3275
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2f

    .line 3276
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 3279
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2e

    .line 3280
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2d

    .line 3281
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2c

    .line 3282
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2b

    .line 3283
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2a

    .line 3284
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3287
    goto/16 :goto_0

    :cond_2a
    move v0, v1

    .line 3289
    goto/16 :goto_0

    :cond_2b
    move v0, v1

    .line 3291
    goto/16 :goto_0

    :cond_2c
    move v0, v1

    .line 3293
    goto/16 :goto_0

    :cond_2d
    move v0, v1

    .line 3295
    goto/16 :goto_0

    :cond_2e
    move v0, v1

    .line 3297
    goto/16 :goto_0

    :cond_2f
    move v0, v1

    .line 3299
    goto/16 :goto_0

    .line 3300
    :cond_30
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_37

    .line 3301
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_36

    .line 3302
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_35

    .line 3303
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_34

    .line 3304
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_33

    .line 3305
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_32

    .line 3306
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_31

    .line 3307
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3310
    goto/16 :goto_0

    :cond_31
    move v0, v1

    .line 3312
    goto/16 :goto_0

    :cond_32
    move v0, v1

    .line 3314
    goto/16 :goto_0

    :cond_33
    move v0, v1

    .line 3316
    goto/16 :goto_0

    :cond_34
    move v0, v1

    .line 3318
    goto/16 :goto_0

    :cond_35
    move v0, v1

    .line 3320
    goto/16 :goto_0

    :cond_36
    move v0, v1

    .line 3322
    goto/16 :goto_0

    :cond_37
    move v0, v1

    .line 3324
    goto/16 :goto_0

    .line 3325
    :cond_38
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_40

    .line 3326
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_3f

    .line 3327
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_3e

    .line 3328
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_3d

    .line 3329
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_3c

    .line 3330
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_3b

    .line 3331
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_3a

    .line 3332
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_39

    .line 3333
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 3336
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3339
    goto/16 :goto_0

    :cond_39
    move v0, v1

    .line 3341
    goto/16 :goto_0

    :cond_3a
    move v0, v1

    .line 3343
    goto/16 :goto_0

    :cond_3b
    move v0, v1

    .line 3345
    goto/16 :goto_0

    :cond_3c
    move v0, v1

    .line 3347
    goto/16 :goto_0

    :cond_3d
    move v0, v1

    .line 3349
    goto/16 :goto_0

    :cond_3e
    move v0, v1

    .line 3351
    goto/16 :goto_0

    :cond_3f
    move v0, v1

    .line 3353
    goto/16 :goto_0

    .line 3355
    :cond_40
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_47

    .line 3356
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_46

    .line 3357
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_45

    .line 3358
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_44

    .line 3359
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_43

    .line 3360
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_42

    .line 3361
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_41

    .line 3362
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3365
    goto/16 :goto_0

    :cond_41
    move v0, v1

    .line 3367
    goto/16 :goto_0

    :cond_42
    move v0, v1

    .line 3369
    goto/16 :goto_0

    :cond_43
    move v0, v1

    .line 3371
    goto/16 :goto_0

    :cond_44
    move v0, v1

    .line 3373
    goto/16 :goto_0

    :cond_45
    move v0, v1

    .line 3375
    goto/16 :goto_0

    :cond_46
    move v0, v1

    .line 3377
    goto/16 :goto_0

    :cond_47
    move v0, v1

    .line 3379
    goto/16 :goto_0

    .line 3381
    :cond_48
    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, p2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_50

    .line 3382
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_4f

    .line 3383
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_4e

    .line 3384
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 3387
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_4d

    .line 3388
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_4c

    .line 3389
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_4b

    .line 3390
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_4a

    .line 3391
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_49

    .line 3392
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3395
    goto/16 :goto_0

    :cond_49
    move v0, v1

    .line 3397
    goto/16 :goto_0

    :cond_4a
    move v0, v1

    .line 3399
    goto/16 :goto_0

    :cond_4b
    move v0, v1

    .line 3401
    goto/16 :goto_0

    :cond_4c
    move v0, v1

    .line 3403
    goto/16 :goto_0

    :cond_4d
    move v0, v1

    .line 3405
    goto/16 :goto_0

    :cond_4e
    move v0, v1

    .line 3407
    goto/16 :goto_0

    :cond_4f
    move v0, v1

    .line 3409
    goto/16 :goto_0

    .line 3410
    :cond_50
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_58

    .line 3411
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_57

    .line 3412
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_56

    .line 3413
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_55

    .line 3414
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_54

    .line 3415
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_53

    .line 3416
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_52

    .line 3417
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_51

    .line 3418
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 3421
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3424
    goto/16 :goto_0

    :cond_51
    move v0, v1

    .line 3426
    goto/16 :goto_0

    :cond_52
    move v0, v1

    .line 3428
    goto/16 :goto_0

    :cond_53
    move v0, v1

    .line 3430
    goto/16 :goto_0

    :cond_54
    move v0, v1

    .line 3432
    goto/16 :goto_0

    :cond_55
    move v0, v1

    .line 3434
    goto/16 :goto_0

    :cond_56
    move v0, v1

    .line 3436
    goto/16 :goto_0

    :cond_57
    move v0, v1

    .line 3438
    goto/16 :goto_0

    :cond_58
    move v0, v1

    .line 3440
    goto/16 :goto_0

    .line 3441
    :cond_59
    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, p2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_7e

    .line 3442
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, -0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_6d

    .line 3443
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, p3, -0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_65

    .line 3444
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_64

    .line 3445
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_5e

    .line 3446
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 3449
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_5d

    .line 3450
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_5c

    .line 3451
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_5b

    .line 3452
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_5a

    .line 3453
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3456
    goto/16 :goto_0

    :cond_5a
    move v0, v1

    .line 3458
    goto/16 :goto_0

    :cond_5b
    move v0, v1

    .line 3460
    goto/16 :goto_0

    :cond_5c
    move v0, v1

    .line 3462
    goto/16 :goto_0

    :cond_5d
    move v0, v1

    .line 3464
    goto/16 :goto_0

    .line 3466
    :cond_5e
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_63

    .line 3467
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_62

    .line 3468
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_61

    .line 3469
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_60

    .line 3470
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_5f

    .line 3471
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3474
    goto/16 :goto_0

    :cond_5f
    move v0, v1

    .line 3476
    goto/16 :goto_0

    :cond_60
    move v0, v1

    .line 3478
    goto/16 :goto_0

    :cond_61
    move v0, v1

    .line 3480
    goto/16 :goto_0

    :cond_62
    move v0, v1

    .line 3482
    goto/16 :goto_0

    :cond_63
    move v0, v1

    .line 3484
    goto/16 :goto_0

    :cond_64
    move v0, v1

    .line 3486
    goto/16 :goto_0

    .line 3487
    :cond_65
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_6c

    .line 3488
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_6b

    .line 3489
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_6a

    .line 3490
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_69

    .line 3491
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_68

    .line 3492
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_67

    .line 3493
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_66

    .line 3494
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3497
    goto/16 :goto_0

    :cond_66
    move v0, v1

    .line 3499
    goto/16 :goto_0

    :cond_67
    move v0, v1

    .line 3501
    goto/16 :goto_0

    :cond_68
    move v0, v1

    .line 3503
    goto/16 :goto_0

    :cond_69
    move v0, v1

    .line 3505
    goto/16 :goto_0

    :cond_6a
    move v0, v1

    .line 3507
    goto/16 :goto_0

    :cond_6b
    move v0, v1

    .line 3509
    goto/16 :goto_0

    :cond_6c
    move v0, v1

    .line 3511
    goto/16 :goto_0

    .line 3512
    :cond_6d
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_76

    .line 3513
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_75

    .line 3514
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_74

    .line 3515
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_73

    .line 3516
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_72

    .line 3517
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_71

    .line 3518
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_70

    .line 3519
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_6e

    .line 3520
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 3523
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3526
    goto/16 :goto_0

    .line 3528
    :cond_6e
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_6f

    .line 3529
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3532
    goto/16 :goto_0

    :cond_6f
    move v0, v1

    .line 3534
    goto/16 :goto_0

    :cond_70
    move v0, v1

    .line 3536
    goto/16 :goto_0

    :cond_71
    move v0, v1

    .line 3538
    goto/16 :goto_0

    :cond_72
    move v0, v1

    .line 3540
    goto/16 :goto_0

    :cond_73
    move v0, v1

    .line 3542
    goto/16 :goto_0

    :cond_74
    move v0, v1

    .line 3544
    goto/16 :goto_0

    :cond_75
    move v0, v1

    .line 3546
    goto/16 :goto_0

    .line 3548
    :cond_76
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_7d

    .line 3549
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_7c

    .line 3550
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_7b

    .line 3551
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_7a

    .line 3552
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_79

    .line 3553
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_78

    .line 3554
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_77

    .line 3555
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3558
    goto/16 :goto_0

    :cond_77
    move v0, v1

    .line 3560
    goto/16 :goto_0

    :cond_78
    move v0, v1

    .line 3562
    goto/16 :goto_0

    :cond_79
    move v0, v1

    .line 3564
    goto/16 :goto_0

    :cond_7a
    move v0, v1

    .line 3566
    goto/16 :goto_0

    :cond_7b
    move v0, v1

    .line 3568
    goto/16 :goto_0

    :cond_7c
    move v0, v1

    .line 3570
    goto/16 :goto_0

    :cond_7d
    move v0, v1

    .line 3572
    goto/16 :goto_0

    .line 3574
    :cond_7e
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, p3, -0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_8b

    .line 3575
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_8a

    .line 3576
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_89

    .line 3577
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_83

    .line 3578
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 3581
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_82

    .line 3582
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_81

    .line 3583
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_80

    .line 3584
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_7f

    .line 3585
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3588
    goto/16 :goto_0

    :cond_7f
    move v0, v1

    .line 3590
    goto/16 :goto_0

    :cond_80
    move v0, v1

    .line 3592
    goto/16 :goto_0

    :cond_81
    move v0, v1

    .line 3594
    goto/16 :goto_0

    :cond_82
    move v0, v1

    .line 3596
    goto/16 :goto_0

    .line 3598
    :cond_83
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_88

    .line 3599
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_87

    .line 3600
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_86

    .line 3601
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_85

    .line 3602
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_84

    .line 3603
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3606
    goto/16 :goto_0

    :cond_84
    move v0, v1

    .line 3608
    goto/16 :goto_0

    :cond_85
    move v0, v1

    .line 3610
    goto/16 :goto_0

    :cond_86
    move v0, v1

    .line 3612
    goto/16 :goto_0

    :cond_87
    move v0, v1

    .line 3614
    goto/16 :goto_0

    :cond_88
    move v0, v1

    .line 3616
    goto/16 :goto_0

    :cond_89
    move v0, v1

    .line 3618
    goto/16 :goto_0

    :cond_8a
    move v0, v1

    .line 3620
    goto/16 :goto_0

    .line 3621
    :cond_8b
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_94

    .line 3622
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_93

    .line 3623
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_92

    .line 3624
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_91

    .line 3625
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_90

    .line 3626
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_8f

    .line 3627
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_8e

    .line 3628
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_8c

    .line 3629
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 3632
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3635
    goto/16 :goto_0

    .line 3637
    :cond_8c
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_8d

    .line 3638
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3641
    goto/16 :goto_0

    :cond_8d
    move v0, v1

    .line 3643
    goto/16 :goto_0

    :cond_8e
    move v0, v1

    .line 3645
    goto/16 :goto_0

    :cond_8f
    move v0, v1

    .line 3647
    goto/16 :goto_0

    :cond_90
    move v0, v1

    .line 3649
    goto/16 :goto_0

    :cond_91
    move v0, v1

    .line 3651
    goto/16 :goto_0

    :cond_92
    move v0, v1

    .line 3653
    goto/16 :goto_0

    :cond_93
    move v0, v1

    .line 3655
    goto/16 :goto_0

    :cond_94
    move v0, v1

    .line 3657
    goto/16 :goto_0

    .line 3658
    :cond_95
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_b4

    .line 3659
    add-int/lit8 v4, p2, -0x2

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_a6

    .line 3660
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_a5

    .line 3661
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_a4

    .line 3662
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9e

    .line 3663
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_99

    .line 3664
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 3667
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_98

    .line 3668
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_97

    .line 3669
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_96

    .line 3670
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3673
    goto/16 :goto_0

    :cond_96
    move v0, v1

    .line 3675
    goto/16 :goto_0

    :cond_97
    move v0, v1

    .line 3677
    goto/16 :goto_0

    :cond_98
    move v0, v1

    .line 3679
    goto/16 :goto_0

    .line 3681
    :cond_99
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9d

    .line 3682
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9c

    .line 3683
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9b

    .line 3684
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9a

    .line 3685
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3688
    goto/16 :goto_0

    :cond_9a
    move v0, v1

    .line 3690
    goto/16 :goto_0

    :cond_9b
    move v0, v1

    .line 3692
    goto/16 :goto_0

    :cond_9c
    move v0, v1

    .line 3694
    goto/16 :goto_0

    :cond_9d
    move v0, v1

    .line 3696
    goto/16 :goto_0

    .line 3698
    :cond_9e
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_a3

    .line 3699
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_a2

    .line 3700
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_a1

    .line 3701
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_a0

    .line 3702
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_9f

    .line 3703
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3706
    goto/16 :goto_0

    :cond_9f
    move v0, v1

    .line 3708
    goto/16 :goto_0

    :cond_a0
    move v0, v1

    .line 3710
    goto/16 :goto_0

    :cond_a1
    move v0, v1

    .line 3712
    goto/16 :goto_0

    :cond_a2
    move v0, v1

    .line 3714
    goto/16 :goto_0

    :cond_a3
    move v0, v1

    .line 3716
    goto/16 :goto_0

    :cond_a4
    move v0, v1

    .line 3718
    goto/16 :goto_0

    :cond_a5
    move v0, v1

    .line 3720
    goto/16 :goto_0

    .line 3721
    :cond_a6
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_b3

    .line 3722
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_b2

    .line 3723
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_b1

    .line 3724
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_b0

    .line 3725
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_af

    .line 3726
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ab

    .line 3727
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_a8

    .line 3728
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 3731
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_a7

    .line 3732
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3735
    goto/16 :goto_0

    :cond_a7
    move v0, v1

    .line 3737
    goto/16 :goto_0

    .line 3739
    :cond_a8
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_aa

    .line 3740
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_a9

    .line 3741
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3744
    goto/16 :goto_0

    :cond_a9
    move v0, v1

    .line 3746
    goto/16 :goto_0

    :cond_aa
    move v0, v1

    .line 3748
    goto/16 :goto_0

    .line 3750
    :cond_ab
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ae

    .line 3751
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ad

    .line 3752
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ac

    .line 3753
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3756
    goto/16 :goto_0

    :cond_ac
    move v0, v1

    .line 3758
    goto/16 :goto_0

    :cond_ad
    move v0, v1

    .line 3760
    goto/16 :goto_0

    :cond_ae
    move v0, v1

    .line 3762
    goto/16 :goto_0

    :cond_af
    move v0, v1

    .line 3764
    goto/16 :goto_0

    :cond_b0
    move v0, v1

    .line 3766
    goto/16 :goto_0

    :cond_b1
    move v0, v1

    .line 3768
    goto/16 :goto_0

    :cond_b2
    move v0, v1

    .line 3770
    goto/16 :goto_0

    :cond_b3
    move v0, v1

    .line 3772
    goto/16 :goto_0

    .line 3774
    :cond_b4
    add-int/lit8 v4, p2, -0x2

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_c5

    .line 3775
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_c4

    .line 3776
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_c3

    .line 3777
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_bd

    .line 3778
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b8

    .line 3779
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 3782
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b7

    .line 3783
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b6

    .line 3784
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b5

    .line 3785
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3788
    goto/16 :goto_0

    :cond_b5
    move v0, v1

    .line 3790
    goto/16 :goto_0

    :cond_b6
    move v0, v1

    .line 3792
    goto/16 :goto_0

    :cond_b7
    move v0, v1

    .line 3794
    goto/16 :goto_0

    .line 3796
    :cond_b8
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_bc

    .line 3797
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_bb

    .line 3798
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_ba

    .line 3799
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_b9

    .line 3800
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3803
    goto/16 :goto_0

    :cond_b9
    move v0, v1

    .line 3805
    goto/16 :goto_0

    :cond_ba
    move v0, v1

    .line 3807
    goto/16 :goto_0

    :cond_bb
    move v0, v1

    .line 3809
    goto/16 :goto_0

    :cond_bc
    move v0, v1

    .line 3811
    goto/16 :goto_0

    .line 3813
    :cond_bd
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_c2

    .line 3814
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_c1

    .line 3815
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_c0

    .line 3816
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_bf

    .line 3817
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_be

    .line 3818
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3821
    goto/16 :goto_0

    :cond_be
    move v0, v1

    .line 3823
    goto/16 :goto_0

    :cond_bf
    move v0, v1

    .line 3825
    goto/16 :goto_0

    :cond_c0
    move v0, v1

    .line 3827
    goto/16 :goto_0

    :cond_c1
    move v0, v1

    .line 3829
    goto/16 :goto_0

    :cond_c2
    move v0, v1

    .line 3831
    goto/16 :goto_0

    :cond_c3
    move v0, v1

    .line 3833
    goto/16 :goto_0

    :cond_c4
    move v0, v1

    .line 3835
    goto/16 :goto_0

    .line 3836
    :cond_c5
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_d0

    .line 3837
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_cf

    .line 3838
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ce

    .line 3839
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_cd

    .line 3840
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_cc

    .line 3841
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_cb

    .line 3842
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c8

    .line 3843
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c6

    .line 3844
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 3847
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3850
    goto/16 :goto_0

    .line 3852
    :cond_c6
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c7

    .line 3853
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3856
    goto/16 :goto_0

    :cond_c7
    move v0, v1

    .line 3858
    goto/16 :goto_0

    .line 3860
    :cond_c8
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ca

    .line 3861
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_c9

    .line 3862
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3865
    goto/16 :goto_0

    :cond_c9
    move v0, v1

    .line 3867
    goto/16 :goto_0

    :cond_ca
    move v0, v1

    .line 3869
    goto/16 :goto_0

    :cond_cb
    move v0, v1

    .line 3871
    goto/16 :goto_0

    :cond_cc
    move v0, v1

    .line 3873
    goto/16 :goto_0

    :cond_cd
    move v0, v1

    .line 3875
    goto/16 :goto_0

    :cond_ce
    move v0, v1

    .line 3877
    goto/16 :goto_0

    :cond_cf
    move v0, v1

    .line 3879
    goto/16 :goto_0

    :cond_d0
    move v0, v1

    .line 3881
    goto/16 :goto_0

    .line 3882
    :cond_d1
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_f7

    .line 3883
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_e5

    .line 3884
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_e4

    .line 3885
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_e3

    .line 3886
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_dd

    .line 3887
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d8

    .line 3888
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d4

    .line 3889
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 3892
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d3

    .line 3893
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d2

    .line 3894
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3897
    goto/16 :goto_0

    :cond_d2
    move v0, v1

    .line 3899
    goto/16 :goto_0

    :cond_d3
    move v0, v1

    .line 3901
    goto/16 :goto_0

    .line 3903
    :cond_d4
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d7

    .line 3904
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d6

    .line 3905
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d5

    .line 3906
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3909
    goto/16 :goto_0

    :cond_d5
    move v0, v1

    .line 3911
    goto/16 :goto_0

    :cond_d6
    move v0, v1

    .line 3913
    goto/16 :goto_0

    :cond_d7
    move v0, v1

    .line 3915
    goto/16 :goto_0

    .line 3917
    :cond_d8
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_dc

    .line 3918
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_db

    .line 3919
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_da

    .line 3920
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_d9

    .line 3921
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3924
    goto/16 :goto_0

    :cond_d9
    move v0, v1

    .line 3926
    goto/16 :goto_0

    :cond_da
    move v0, v1

    .line 3928
    goto/16 :goto_0

    :cond_db
    move v0, v1

    .line 3930
    goto/16 :goto_0

    :cond_dc
    move v0, v1

    .line 3932
    goto/16 :goto_0

    .line 3934
    :cond_dd
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_e2

    .line 3935
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_e1

    .line 3936
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_e0

    .line 3937
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_df

    .line 3938
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_de

    .line 3939
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 3942
    goto/16 :goto_0

    :cond_de
    move v0, v1

    .line 3944
    goto/16 :goto_0

    :cond_df
    move v0, v1

    .line 3946
    goto/16 :goto_0

    :cond_e0
    move v0, v1

    .line 3948
    goto/16 :goto_0

    :cond_e1
    move v0, v1

    .line 3950
    goto/16 :goto_0

    :cond_e2
    move v0, v1

    .line 3952
    goto/16 :goto_0

    :cond_e3
    move v0, v1

    .line 3954
    goto/16 :goto_0

    :cond_e4
    move v0, v1

    .line 3956
    goto/16 :goto_0

    .line 3957
    :cond_e5
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f6

    .line 3958
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f5

    .line 3959
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f4

    .line 3960
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f3

    .line 3961
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ee

    .line 3962
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ea

    .line 3963
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_e7

    .line 3964
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 3967
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_e6

    .line 3968
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3971
    goto/16 :goto_0

    :cond_e6
    move v0, v1

    .line 3973
    goto/16 :goto_0

    .line 3975
    :cond_e7
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_e9

    .line 3976
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_e8

    .line 3977
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3980
    goto/16 :goto_0

    :cond_e8
    move v0, v1

    .line 3982
    goto/16 :goto_0

    :cond_e9
    move v0, v1

    .line 3984
    goto/16 :goto_0

    .line 3986
    :cond_ea
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ed

    .line 3987
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ec

    .line 3988
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_eb

    .line 3989
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 3992
    goto/16 :goto_0

    :cond_eb
    move v0, v1

    .line 3994
    goto/16 :goto_0

    :cond_ec
    move v0, v1

    .line 3996
    goto/16 :goto_0

    :cond_ed
    move v0, v1

    .line 3998
    goto/16 :goto_0

    .line 4000
    :cond_ee
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f2

    .line 4001
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f1

    .line 4002
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_f0

    .line 4003
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_ef

    .line 4004
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4007
    goto/16 :goto_0

    :cond_ef
    move v0, v1

    .line 4009
    goto/16 :goto_0

    :cond_f0
    move v0, v1

    .line 4011
    goto/16 :goto_0

    :cond_f1
    move v0, v1

    .line 4013
    goto/16 :goto_0

    :cond_f2
    move v0, v1

    .line 4015
    goto/16 :goto_0

    :cond_f3
    move v0, v1

    .line 4017
    goto/16 :goto_0

    :cond_f4
    move v0, v1

    .line 4019
    goto/16 :goto_0

    :cond_f5
    move v0, v1

    .line 4021
    goto/16 :goto_0

    :cond_f6
    move v0, v1

    .line 4023
    goto/16 :goto_0

    .line 4025
    :cond_f7
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_10b

    .line 4026
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_10a

    .line 4027
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_109

    .line 4028
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_103

    .line 4029
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_fe

    .line 4030
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_fa

    .line 4031
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 4034
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_f9

    .line 4035
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_f8

    .line 4036
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4039
    goto/16 :goto_0

    :cond_f8
    move v0, v1

    .line 4041
    goto/16 :goto_0

    :cond_f9
    move v0, v1

    .line 4043
    goto/16 :goto_0

    .line 4045
    :cond_fa
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_fd

    .line 4046
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_fc

    .line 4047
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_fb

    .line 4048
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4051
    goto/16 :goto_0

    :cond_fb
    move v0, v1

    .line 4053
    goto/16 :goto_0

    :cond_fc
    move v0, v1

    .line 4055
    goto/16 :goto_0

    :cond_fd
    move v0, v1

    .line 4057
    goto/16 :goto_0

    .line 4059
    :cond_fe
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_102

    .line 4060
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_101

    .line 4061
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_100

    .line 4062
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_ff

    .line 4063
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4066
    goto/16 :goto_0

    :cond_ff
    move v0, v1

    .line 4068
    goto/16 :goto_0

    :cond_100
    move v0, v1

    .line 4070
    goto/16 :goto_0

    :cond_101
    move v0, v1

    .line 4072
    goto/16 :goto_0

    :cond_102
    move v0, v1

    .line 4074
    goto/16 :goto_0

    .line 4076
    :cond_103
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_108

    .line 4077
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_107

    .line 4078
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_106

    .line 4079
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_105

    .line 4080
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_104

    .line 4081
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4084
    goto/16 :goto_0

    :cond_104
    move v0, v1

    .line 4086
    goto/16 :goto_0

    :cond_105
    move v0, v1

    .line 4088
    goto/16 :goto_0

    :cond_106
    move v0, v1

    .line 4090
    goto/16 :goto_0

    :cond_107
    move v0, v1

    .line 4092
    goto/16 :goto_0

    :cond_108
    move v0, v1

    .line 4094
    goto/16 :goto_0

    :cond_109
    move v0, v1

    .line 4096
    goto/16 :goto_0

    :cond_10a
    move v0, v1

    .line 4098
    goto/16 :goto_0

    .line 4099
    :cond_10b
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_119

    .line 4100
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_118

    .line 4101
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_117

    .line 4102
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_116

    .line 4103
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_115

    .line 4104
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_111

    .line 4105
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_10e

    .line 4106
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_10c

    .line 4107
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 4110
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4113
    goto/16 :goto_0

    .line 4115
    :cond_10c
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_10d

    .line 4116
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4119
    goto/16 :goto_0

    :cond_10d
    move v0, v1

    .line 4121
    goto/16 :goto_0

    .line 4123
    :cond_10e
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_110

    .line 4124
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_10f

    .line 4125
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4128
    goto/16 :goto_0

    :cond_10f
    move v0, v1

    .line 4130
    goto/16 :goto_0

    :cond_110
    move v0, v1

    .line 4132
    goto/16 :goto_0

    .line 4134
    :cond_111
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_114

    .line 4135
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_113

    .line 4136
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_112

    .line 4137
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4140
    goto/16 :goto_0

    :cond_112
    move v0, v1

    .line 4142
    goto/16 :goto_0

    :cond_113
    move v0, v1

    .line 4144
    goto/16 :goto_0

    :cond_114
    move v0, v1

    .line 4146
    goto/16 :goto_0

    :cond_115
    move v0, v1

    .line 4148
    goto/16 :goto_0

    :cond_116
    move v0, v1

    .line 4150
    goto/16 :goto_0

    :cond_117
    move v0, v1

    .line 4152
    goto/16 :goto_0

    :cond_118
    move v0, v1

    .line 4154
    goto/16 :goto_0

    :cond_119
    move v0, v1

    .line 4156
    goto/16 :goto_0

    .line 4157
    :cond_11a
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_147

    .line 4158
    add-int/lit8 v4, p2, -0x3

    invoke-virtual {p1, v4, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_130

    .line 4159
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_12f

    .line 4160
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_12e

    .line 4161
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_128

    .line 4162
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_123

    .line 4163
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_11f

    .line 4164
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_11c

    .line 4165
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 4168
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_11b

    .line 4169
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4172
    goto/16 :goto_0

    :cond_11b
    move v0, v1

    .line 4174
    goto/16 :goto_0

    .line 4176
    :cond_11c
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_11e

    .line 4177
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_11d

    .line 4178
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4181
    goto/16 :goto_0

    :cond_11d
    move v0, v1

    .line 4183
    goto/16 :goto_0

    :cond_11e
    move v0, v1

    .line 4185
    goto/16 :goto_0

    .line 4187
    :cond_11f
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_122

    .line 4188
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_121

    .line 4189
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_120

    .line 4190
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4193
    goto/16 :goto_0

    :cond_120
    move v0, v1

    .line 4195
    goto/16 :goto_0

    :cond_121
    move v0, v1

    .line 4197
    goto/16 :goto_0

    :cond_122
    move v0, v1

    .line 4199
    goto/16 :goto_0

    .line 4201
    :cond_123
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_127

    .line 4202
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_126

    .line 4203
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_125

    .line 4204
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_124

    .line 4205
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4208
    goto/16 :goto_0

    :cond_124
    move v0, v1

    .line 4210
    goto/16 :goto_0

    :cond_125
    move v0, v1

    .line 4212
    goto/16 :goto_0

    :cond_126
    move v0, v1

    .line 4214
    goto/16 :goto_0

    :cond_127
    move v0, v1

    .line 4216
    goto/16 :goto_0

    .line 4218
    :cond_128
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_12d

    .line 4219
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_12c

    .line 4220
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_12b

    .line 4221
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_12a

    .line 4222
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_129

    .line 4223
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4226
    goto/16 :goto_0

    :cond_129
    move v0, v1

    .line 4228
    goto/16 :goto_0

    :cond_12a
    move v0, v1

    .line 4230
    goto/16 :goto_0

    :cond_12b
    move v0, v1

    .line 4232
    goto/16 :goto_0

    :cond_12c
    move v0, v1

    .line 4234
    goto/16 :goto_0

    :cond_12d
    move v0, v1

    .line 4236
    goto/16 :goto_0

    :cond_12e
    move v0, v1

    .line 4238
    goto/16 :goto_0

    :cond_12f
    move v0, v1

    .line 4240
    goto/16 :goto_0

    .line 4241
    :cond_130
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_146

    .line 4242
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_145

    .line 4243
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_144

    .line 4244
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13e

    .line 4245
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_139

    .line 4246
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_135

    .line 4247
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_132

    .line 4248
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 4251
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_131

    .line 4252
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4255
    goto/16 :goto_0

    :cond_131
    move v0, v1

    .line 4257
    goto/16 :goto_0

    .line 4259
    :cond_132
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_134

    .line 4260
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_133

    .line 4261
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4264
    goto/16 :goto_0

    :cond_133
    move v0, v1

    .line 4266
    goto/16 :goto_0

    :cond_134
    move v0, v1

    .line 4268
    goto/16 :goto_0

    .line 4270
    :cond_135
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_138

    .line 4271
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_137

    .line 4272
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_136

    .line 4273
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4276
    goto/16 :goto_0

    :cond_136
    move v0, v1

    .line 4278
    goto/16 :goto_0

    :cond_137
    move v0, v1

    .line 4280
    goto/16 :goto_0

    :cond_138
    move v0, v1

    .line 4282
    goto/16 :goto_0

    .line 4284
    :cond_139
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13d

    .line 4285
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13c

    .line 4286
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13b

    .line 4287
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13a

    .line 4288
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4291
    goto/16 :goto_0

    :cond_13a
    move v0, v1

    .line 4293
    goto/16 :goto_0

    :cond_13b
    move v0, v1

    .line 4295
    goto/16 :goto_0

    :cond_13c
    move v0, v1

    .line 4297
    goto/16 :goto_0

    :cond_13d
    move v0, v1

    .line 4299
    goto/16 :goto_0

    .line 4301
    :cond_13e
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_143

    .line 4302
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_142

    .line 4303
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_141

    .line 4304
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_140

    .line 4305
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_13f

    .line 4306
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4309
    goto/16 :goto_0

    :cond_13f
    move v0, v1

    .line 4311
    goto/16 :goto_0

    :cond_140
    move v0, v1

    .line 4313
    goto/16 :goto_0

    :cond_141
    move v0, v1

    .line 4315
    goto/16 :goto_0

    :cond_142
    move v0, v1

    .line 4317
    goto/16 :goto_0

    :cond_143
    move v0, v1

    .line 4319
    goto/16 :goto_0

    :cond_144
    move v0, v1

    .line 4321
    goto/16 :goto_0

    :cond_145
    move v0, v1

    .line 4323
    goto/16 :goto_0

    :cond_146
    move v0, v1

    .line 4325
    goto/16 :goto_0

    .line 4327
    :cond_147
    add-int/lit8 v4, p2, -0x3

    invoke-virtual {p1, v4, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_15d

    .line 4328
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_15c

    .line 4329
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_15b

    .line 4330
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_155

    .line 4331
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_150

    .line 4332
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_14c

    .line 4333
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_149

    .line 4334
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 4337
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_148

    .line 4338
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4341
    goto/16 :goto_0

    :cond_148
    move v0, v1

    .line 4343
    goto/16 :goto_0

    .line 4345
    :cond_149
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_14b

    .line 4346
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_14a

    .line 4347
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4350
    goto/16 :goto_0

    :cond_14a
    move v0, v1

    .line 4352
    goto/16 :goto_0

    :cond_14b
    move v0, v1

    .line 4354
    goto/16 :goto_0

    .line 4356
    :cond_14c
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_14f

    .line 4357
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_14e

    .line 4358
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_14d

    .line 4359
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4362
    goto/16 :goto_0

    :cond_14d
    move v0, v1

    .line 4364
    goto/16 :goto_0

    :cond_14e
    move v0, v1

    .line 4366
    goto/16 :goto_0

    :cond_14f
    move v0, v1

    .line 4368
    goto/16 :goto_0

    .line 4370
    :cond_150
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_154

    .line 4371
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_153

    .line 4372
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_152

    .line 4373
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_151

    .line 4374
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4377
    goto/16 :goto_0

    :cond_151
    move v0, v1

    .line 4379
    goto/16 :goto_0

    :cond_152
    move v0, v1

    .line 4381
    goto/16 :goto_0

    :cond_153
    move v0, v1

    .line 4383
    goto/16 :goto_0

    :cond_154
    move v0, v1

    .line 4385
    goto/16 :goto_0

    .line 4387
    :cond_155
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_15a

    .line 4388
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_159

    .line 4389
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_158

    .line 4390
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_157

    .line 4391
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_156

    .line 4392
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4395
    goto/16 :goto_0

    :cond_156
    move v0, v1

    .line 4397
    goto/16 :goto_0

    :cond_157
    move v0, v1

    .line 4399
    goto/16 :goto_0

    :cond_158
    move v0, v1

    .line 4401
    goto/16 :goto_0

    :cond_159
    move v0, v1

    .line 4403
    goto/16 :goto_0

    :cond_15a
    move v0, v1

    .line 4405
    goto/16 :goto_0

    :cond_15b
    move v0, v1

    .line 4407
    goto/16 :goto_0

    :cond_15c
    move v0, v1

    .line 4409
    goto/16 :goto_0

    .line 4410
    :cond_15d
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_16f

    .line 4411
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_16e

    .line 4412
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_16d

    .line 4413
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_16c

    .line 4414
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_167

    .line 4415
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_163

    .line 4416
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_160

    .line 4417
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_15e

    .line 4418
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 4421
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4424
    goto/16 :goto_0

    .line 4426
    :cond_15e
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_15f

    .line 4427
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4430
    goto/16 :goto_0

    :cond_15f
    move v0, v1

    .line 4432
    goto/16 :goto_0

    .line 4434
    :cond_160
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_162

    .line 4435
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_161

    .line 4436
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4439
    goto/16 :goto_0

    :cond_161
    move v0, v1

    .line 4441
    goto/16 :goto_0

    :cond_162
    move v0, v1

    .line 4443
    goto/16 :goto_0

    .line 4445
    :cond_163
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_166

    .line 4446
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_165

    .line 4447
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_164

    .line 4448
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4451
    goto/16 :goto_0

    :cond_164
    move v0, v1

    .line 4453
    goto/16 :goto_0

    :cond_165
    move v0, v1

    .line 4455
    goto/16 :goto_0

    :cond_166
    move v0, v1

    .line 4457
    goto/16 :goto_0

    .line 4459
    :cond_167
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_16b

    .line 4460
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_16a

    .line 4461
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_169

    .line 4462
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_168

    .line 4463
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4466
    goto/16 :goto_0

    :cond_168
    move v0, v1

    .line 4468
    goto/16 :goto_0

    :cond_169
    move v0, v1

    .line 4470
    goto/16 :goto_0

    :cond_16a
    move v0, v1

    .line 4472
    goto/16 :goto_0

    :cond_16b
    move v0, v1

    .line 4474
    goto/16 :goto_0

    :cond_16c
    move v0, v1

    .line 4476
    goto/16 :goto_0

    :cond_16d
    move v0, v1

    .line 4478
    goto/16 :goto_0

    :cond_16e
    move v0, v1

    .line 4480
    goto/16 :goto_0

    :cond_16f
    move v0, v1

    .line 4482
    goto/16 :goto_0

    .line 4483
    :cond_170
    add-int/lit8 v4, p2, 0x3

    invoke-virtual {p1, v4, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_2df

    .line 4484
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_19d

    .line 4485
    add-int/lit8 v4, p2, -0x3

    invoke-virtual {p1, v4, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_186

    .line 4486
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_185

    .line 4487
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_184

    .line 4488
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_17e

    .line 4489
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_179

    .line 4490
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_175

    .line 4491
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_172

    .line 4492
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 4495
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_171

    .line 4496
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4499
    goto/16 :goto_0

    :cond_171
    move v0, v1

    .line 4501
    goto/16 :goto_0

    .line 4503
    :cond_172
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_174

    .line 4504
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_173

    .line 4505
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4508
    goto/16 :goto_0

    :cond_173
    move v0, v1

    .line 4510
    goto/16 :goto_0

    :cond_174
    move v0, v1

    .line 4512
    goto/16 :goto_0

    .line 4514
    :cond_175
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_178

    .line 4515
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_177

    .line 4516
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_176

    .line 4517
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4520
    goto/16 :goto_0

    :cond_176
    move v0, v1

    .line 4522
    goto/16 :goto_0

    :cond_177
    move v0, v1

    .line 4524
    goto/16 :goto_0

    :cond_178
    move v0, v1

    .line 4526
    goto/16 :goto_0

    .line 4528
    :cond_179
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_17d

    .line 4529
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_17c

    .line 4530
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_17b

    .line 4531
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_17a

    .line 4532
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4535
    goto/16 :goto_0

    :cond_17a
    move v0, v1

    .line 4537
    goto/16 :goto_0

    :cond_17b
    move v0, v1

    .line 4539
    goto/16 :goto_0

    :cond_17c
    move v0, v1

    .line 4541
    goto/16 :goto_0

    :cond_17d
    move v0, v1

    .line 4543
    goto/16 :goto_0

    .line 4545
    :cond_17e
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_183

    .line 4546
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_182

    .line 4547
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_181

    .line 4548
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_180

    .line 4549
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_17f

    .line 4550
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4553
    goto/16 :goto_0

    :cond_17f
    move v0, v1

    .line 4555
    goto/16 :goto_0

    :cond_180
    move v0, v1

    .line 4557
    goto/16 :goto_0

    :cond_181
    move v0, v1

    .line 4559
    goto/16 :goto_0

    :cond_182
    move v0, v1

    .line 4561
    goto/16 :goto_0

    :cond_183
    move v0, v1

    .line 4563
    goto/16 :goto_0

    :cond_184
    move v0, v1

    .line 4565
    goto/16 :goto_0

    :cond_185
    move v0, v1

    .line 4567
    goto/16 :goto_0

    .line 4568
    :cond_186
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_19c

    .line 4569
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_19b

    .line 4570
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_19a

    .line 4571
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_194

    .line 4572
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18f

    .line 4573
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18b

    .line 4574
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_188

    .line 4575
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 4578
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_187

    .line 4579
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4582
    goto/16 :goto_0

    :cond_187
    move v0, v1

    .line 4584
    goto/16 :goto_0

    .line 4586
    :cond_188
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18a

    .line 4587
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_189

    .line 4588
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4591
    goto/16 :goto_0

    :cond_189
    move v0, v1

    .line 4593
    goto/16 :goto_0

    :cond_18a
    move v0, v1

    .line 4595
    goto/16 :goto_0

    .line 4597
    :cond_18b
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18e

    .line 4598
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18d

    .line 4599
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_18c

    .line 4600
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4603
    goto/16 :goto_0

    :cond_18c
    move v0, v1

    .line 4605
    goto/16 :goto_0

    :cond_18d
    move v0, v1

    .line 4607
    goto/16 :goto_0

    :cond_18e
    move v0, v1

    .line 4609
    goto/16 :goto_0

    .line 4611
    :cond_18f
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_193

    .line 4612
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_192

    .line 4613
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_191

    .line 4614
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_190

    .line 4615
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4618
    goto/16 :goto_0

    :cond_190
    move v0, v1

    .line 4620
    goto/16 :goto_0

    :cond_191
    move v0, v1

    .line 4622
    goto/16 :goto_0

    :cond_192
    move v0, v1

    .line 4624
    goto/16 :goto_0

    :cond_193
    move v0, v1

    .line 4626
    goto/16 :goto_0

    .line 4628
    :cond_194
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_199

    .line 4629
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_198

    .line 4630
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_197

    .line 4631
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_196

    .line 4632
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_195

    .line 4633
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4636
    goto/16 :goto_0

    :cond_195
    move v0, v1

    .line 4638
    goto/16 :goto_0

    :cond_196
    move v0, v1

    .line 4640
    goto/16 :goto_0

    :cond_197
    move v0, v1

    .line 4642
    goto/16 :goto_0

    :cond_198
    move v0, v1

    .line 4644
    goto/16 :goto_0

    :cond_199
    move v0, v1

    .line 4646
    goto/16 :goto_0

    :cond_19a
    move v0, v1

    .line 4648
    goto/16 :goto_0

    :cond_19b
    move v0, v1

    .line 4650
    goto/16 :goto_0

    :cond_19c
    move v0, v1

    .line 4652
    goto/16 :goto_0

    .line 4653
    :cond_19d
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_2b6

    .line 4654
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_1c3

    .line 4655
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_1ae

    .line 4656
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1ad

    .line 4657
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1ac

    .line 4658
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1ab

    .line 4659
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a6

    .line 4660
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a2

    .line 4661
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_19f

    .line 4662
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 4665
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_19e

    .line 4666
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4669
    goto/16 :goto_0

    :cond_19e
    move v0, v1

    .line 4671
    goto/16 :goto_0

    .line 4673
    :cond_19f
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a1

    .line 4674
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a0

    .line 4675
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4678
    goto/16 :goto_0

    :cond_1a0
    move v0, v1

    .line 4680
    goto/16 :goto_0

    :cond_1a1
    move v0, v1

    .line 4682
    goto/16 :goto_0

    .line 4684
    :cond_1a2
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a5

    .line 4685
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a4

    .line 4686
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a3

    .line 4687
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4690
    goto/16 :goto_0

    :cond_1a3
    move v0, v1

    .line 4692
    goto/16 :goto_0

    :cond_1a4
    move v0, v1

    .line 4694
    goto/16 :goto_0

    :cond_1a5
    move v0, v1

    .line 4696
    goto/16 :goto_0

    .line 4698
    :cond_1a6
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1aa

    .line 4699
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a9

    .line 4700
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a8

    .line 4701
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1a7

    .line 4702
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4705
    goto/16 :goto_0

    :cond_1a7
    move v0, v1

    .line 4707
    goto/16 :goto_0

    :cond_1a8
    move v0, v1

    .line 4709
    goto/16 :goto_0

    :cond_1a9
    move v0, v1

    .line 4711
    goto/16 :goto_0

    :cond_1aa
    move v0, v1

    .line 4713
    goto/16 :goto_0

    :cond_1ab
    move v0, v1

    .line 4715
    goto/16 :goto_0

    :cond_1ac
    move v0, v1

    .line 4717
    goto/16 :goto_0

    :cond_1ad
    move v0, v1

    .line 4719
    goto/16 :goto_0

    .line 4720
    :cond_1ae
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1c2

    .line 4721
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1c1

    .line 4722
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1c0

    .line 4723
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1ba

    .line 4724
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b5

    .line 4725
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b1

    .line 4726
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 4729
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b0

    .line 4730
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1af

    .line 4731
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4734
    goto/16 :goto_0

    :cond_1af
    move v0, v1

    .line 4736
    goto/16 :goto_0

    :cond_1b0
    move v0, v1

    .line 4738
    goto/16 :goto_0

    .line 4740
    :cond_1b1
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b4

    .line 4741
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b3

    .line 4742
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b2

    .line 4743
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4746
    goto/16 :goto_0

    :cond_1b2
    move v0, v1

    .line 4748
    goto/16 :goto_0

    :cond_1b3
    move v0, v1

    .line 4750
    goto/16 :goto_0

    :cond_1b4
    move v0, v1

    .line 4752
    goto/16 :goto_0

    .line 4754
    :cond_1b5
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b9

    .line 4755
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b8

    .line 4756
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b7

    .line 4757
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1b6

    .line 4758
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4761
    goto/16 :goto_0

    :cond_1b6
    move v0, v1

    .line 4763
    goto/16 :goto_0

    :cond_1b7
    move v0, v1

    .line 4765
    goto/16 :goto_0

    :cond_1b8
    move v0, v1

    .line 4767
    goto/16 :goto_0

    :cond_1b9
    move v0, v1

    .line 4769
    goto/16 :goto_0

    .line 4771
    :cond_1ba
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1bf

    .line 4772
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1be

    .line 4773
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1bd

    .line 4774
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1bc

    .line 4775
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1bb

    .line 4776
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4779
    goto/16 :goto_0

    :cond_1bb
    move v0, v1

    .line 4781
    goto/16 :goto_0

    :cond_1bc
    move v0, v1

    .line 4783
    goto/16 :goto_0

    :cond_1bd
    move v0, v1

    .line 4785
    goto/16 :goto_0

    :cond_1be
    move v0, v1

    .line 4787
    goto/16 :goto_0

    :cond_1bf
    move v0, v1

    .line 4789
    goto/16 :goto_0

    :cond_1c0
    move v0, v1

    .line 4791
    goto/16 :goto_0

    :cond_1c1
    move v0, v1

    .line 4793
    goto/16 :goto_0

    :cond_1c2
    move v0, v1

    .line 4795
    goto/16 :goto_0

    .line 4796
    :cond_1c3
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_293

    .line 4797
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_1e2

    .line 4798
    add-int/lit8 v4, p2, -0x2

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_1d0

    .line 4799
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1cf

    .line 4800
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1ce

    .line 4801
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1cd

    .line 4802
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1cc

    .line 4803
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1c8

    .line 4804
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1c5

    .line 4805
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 4808
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1c4

    .line 4809
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4812
    goto/16 :goto_0

    :cond_1c4
    move v0, v1

    .line 4814
    goto/16 :goto_0

    .line 4816
    :cond_1c5
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1c7

    .line 4817
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1c6

    .line 4818
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4821
    goto/16 :goto_0

    :cond_1c6
    move v0, v1

    .line 4823
    goto/16 :goto_0

    :cond_1c7
    move v0, v1

    .line 4825
    goto/16 :goto_0

    .line 4827
    :cond_1c8
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1cb

    .line 4828
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1ca

    .line 4829
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1c9

    .line 4830
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4833
    goto/16 :goto_0

    :cond_1c9
    move v0, v1

    .line 4835
    goto/16 :goto_0

    :cond_1ca
    move v0, v1

    .line 4837
    goto/16 :goto_0

    :cond_1cb
    move v0, v1

    .line 4839
    goto/16 :goto_0

    :cond_1cc
    move v0, v1

    .line 4841
    goto/16 :goto_0

    :cond_1cd
    move v0, v1

    .line 4843
    goto/16 :goto_0

    :cond_1ce
    move v0, v1

    .line 4845
    goto/16 :goto_0

    :cond_1cf
    move v0, v1

    .line 4847
    goto/16 :goto_0

    .line 4848
    :cond_1d0
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1e1

    .line 4849
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1e0

    .line 4850
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1df

    .line 4851
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1d9

    .line 4852
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1d4

    .line 4853
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 4856
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1d3

    .line 4857
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1d2

    .line 4858
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1d1

    .line 4859
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4862
    goto/16 :goto_0

    :cond_1d1
    move v0, v1

    .line 4864
    goto/16 :goto_0

    :cond_1d2
    move v0, v1

    .line 4866
    goto/16 :goto_0

    :cond_1d3
    move v0, v1

    .line 4868
    goto/16 :goto_0

    .line 4870
    :cond_1d4
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1d8

    .line 4871
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1d7

    .line 4872
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1d6

    .line 4873
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1d5

    .line 4874
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4877
    goto/16 :goto_0

    :cond_1d5
    move v0, v1

    .line 4879
    goto/16 :goto_0

    :cond_1d6
    move v0, v1

    .line 4881
    goto/16 :goto_0

    :cond_1d7
    move v0, v1

    .line 4883
    goto/16 :goto_0

    :cond_1d8
    move v0, v1

    .line 4885
    goto/16 :goto_0

    .line 4887
    :cond_1d9
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1de

    .line 4888
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1dd

    .line 4889
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1dc

    .line 4890
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1db

    .line 4891
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1da

    .line 4892
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4895
    goto/16 :goto_0

    :cond_1da
    move v0, v1

    .line 4897
    goto/16 :goto_0

    :cond_1db
    move v0, v1

    .line 4899
    goto/16 :goto_0

    :cond_1dc
    move v0, v1

    .line 4901
    goto/16 :goto_0

    :cond_1dd
    move v0, v1

    .line 4903
    goto/16 :goto_0

    :cond_1de
    move v0, v1

    .line 4905
    goto/16 :goto_0

    :cond_1df
    move v0, v1

    .line 4907
    goto/16 :goto_0

    :cond_1e0
    move v0, v1

    .line 4909
    goto/16 :goto_0

    :cond_1e1
    move v0, v1

    .line 4911
    goto/16 :goto_0

    .line 4912
    :cond_1e2
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_276

    .line 4913
    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, p2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_207

    .line 4914
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, -0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_1eb

    .line 4915
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1ea

    .line 4916
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1e9

    .line 4917
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1e8

    .line 4918
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1e7

    .line 4919
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1e6

    .line 4920
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1e5

    .line 4921
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1e3

    .line 4922
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 4925
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4928
    goto/16 :goto_0

    .line 4930
    :cond_1e3
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1e4

    .line 4931
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4934
    goto/16 :goto_0

    :cond_1e4
    move v0, v1

    .line 4936
    goto/16 :goto_0

    :cond_1e5
    move v0, v1

    .line 4938
    goto/16 :goto_0

    :cond_1e6
    move v0, v1

    .line 4940
    goto/16 :goto_0

    :cond_1e7
    move v0, v1

    .line 4942
    goto/16 :goto_0

    :cond_1e8
    move v0, v1

    .line 4944
    goto/16 :goto_0

    :cond_1e9
    move v0, v1

    .line 4946
    goto/16 :goto_0

    :cond_1ea
    move v0, v1

    .line 4948
    goto/16 :goto_0

    .line 4949
    :cond_1eb
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, -0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_1ff

    .line 4950
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, p3, -0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_1f2

    .line 4951
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1f1

    .line 4952
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1f0

    .line 4953
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1ef

    .line 4954
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1ee

    .line 4955
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1ed

    .line 4956
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_1ec

    .line 4957
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 4960
    goto/16 :goto_0

    :cond_1ec
    move v0, v1

    .line 4962
    goto/16 :goto_0

    :cond_1ed
    move v0, v1

    .line 4964
    goto/16 :goto_0

    :cond_1ee
    move v0, v1

    .line 4966
    goto/16 :goto_0

    :cond_1ef
    move v0, v1

    .line 4968
    goto/16 :goto_0

    :cond_1f0
    move v0, v1

    .line 4970
    goto/16 :goto_0

    :cond_1f1
    move v0, v1

    .line 4972
    goto/16 :goto_0

    .line 4973
    :cond_1f2
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1fe

    .line 4974
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1fd

    .line 4975
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1f7

    .line 4976
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 4979
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1f6

    .line 4980
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1f5

    .line 4981
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1f4

    .line 4982
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1f3

    .line 4983
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 4986
    goto/16 :goto_0

    :cond_1f3
    move v0, v1

    .line 4988
    goto/16 :goto_0

    :cond_1f4
    move v0, v1

    .line 4990
    goto/16 :goto_0

    :cond_1f5
    move v0, v1

    .line 4992
    goto/16 :goto_0

    :cond_1f6
    move v0, v1

    .line 4994
    goto/16 :goto_0

    .line 4996
    :cond_1f7
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1fc

    .line 4997
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1fb

    .line 4998
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1fa

    .line 4999
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1f9

    .line 5000
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_1f8

    .line 5001
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5004
    goto/16 :goto_0

    :cond_1f8
    move v0, v1

    .line 5006
    goto/16 :goto_0

    :cond_1f9
    move v0, v1

    .line 5008
    goto/16 :goto_0

    :cond_1fa
    move v0, v1

    .line 5010
    goto/16 :goto_0

    :cond_1fb
    move v0, v1

    .line 5012
    goto/16 :goto_0

    :cond_1fc
    move v0, v1

    .line 5014
    goto/16 :goto_0

    :cond_1fd
    move v0, v1

    .line 5016
    goto/16 :goto_0

    :cond_1fe
    move v0, v1

    .line 5018
    goto/16 :goto_0

    .line 5020
    :cond_1ff
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_206

    .line 5021
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_205

    .line 5022
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_204

    .line 5023
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_203

    .line 5024
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_202

    .line 5025
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_201

    .line 5026
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_200

    .line 5027
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5030
    goto/16 :goto_0

    :cond_200
    move v0, v1

    .line 5032
    goto/16 :goto_0

    :cond_201
    move v0, v1

    .line 5034
    goto/16 :goto_0

    :cond_202
    move v0, v1

    .line 5036
    goto/16 :goto_0

    :cond_203
    move v0, v1

    .line 5038
    goto/16 :goto_0

    :cond_204
    move v0, v1

    .line 5040
    goto/16 :goto_0

    :cond_205
    move v0, v1

    .line 5042
    goto/16 :goto_0

    :cond_206
    move v0, v1

    .line 5044
    goto/16 :goto_0

    .line 5045
    :cond_207
    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, p2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_25f

    .line 5046
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_226

    .line 5047
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_20f

    .line 5048
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_20e

    .line 5049
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_20d

    .line 5050
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_20c

    .line 5051
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_20b

    .line 5052
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_20a

    .line 5053
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_209

    .line 5054
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_208

    .line 5055
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 5058
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5061
    goto/16 :goto_0

    :cond_208
    move v0, v1

    .line 5063
    goto/16 :goto_0

    :cond_209
    move v0, v1

    .line 5065
    goto/16 :goto_0

    :cond_20a
    move v0, v1

    .line 5067
    goto/16 :goto_0

    :cond_20b
    move v0, v1

    .line 5069
    goto/16 :goto_0

    :cond_20c
    move v0, v1

    .line 5071
    goto/16 :goto_0

    :cond_20d
    move v0, v1

    .line 5073
    goto/16 :goto_0

    :cond_20e
    move v0, v1

    .line 5075
    goto/16 :goto_0

    .line 5076
    :cond_20f
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_21e

    .line 5077
    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, p2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_216

    .line 5078
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_215

    .line 5079
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_214

    .line 5080
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_213

    .line 5081
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_212

    .line 5082
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_211

    .line 5083
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_210

    .line 5084
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5087
    goto/16 :goto_0

    :cond_210
    move v0, v1

    .line 5089
    goto/16 :goto_0

    :cond_211
    move v0, v1

    .line 5091
    goto/16 :goto_0

    :cond_212
    move v0, v1

    .line 5093
    goto/16 :goto_0

    :cond_213
    move v0, v1

    .line 5095
    goto/16 :goto_0

    :cond_214
    move v0, v1

    .line 5097
    goto/16 :goto_0

    :cond_215
    move v0, v1

    .line 5099
    goto/16 :goto_0

    .line 5100
    :cond_216
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_21d

    .line 5101
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_21c

    .line 5102
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 5105
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_21b

    .line 5106
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_21a

    .line 5107
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_219

    .line 5108
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_218

    .line 5109
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_217

    .line 5110
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5113
    goto/16 :goto_0

    :cond_217
    move v0, v1

    .line 5115
    goto/16 :goto_0

    :cond_218
    move v0, v1

    .line 5117
    goto/16 :goto_0

    :cond_219
    move v0, v1

    .line 5119
    goto/16 :goto_0

    :cond_21a
    move v0, v1

    .line 5121
    goto/16 :goto_0

    :cond_21b
    move v0, v1

    .line 5123
    goto/16 :goto_0

    :cond_21c
    move v0, v1

    .line 5125
    goto/16 :goto_0

    :cond_21d
    move v0, v1

    .line 5127
    goto/16 :goto_0

    .line 5129
    :cond_21e
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_225

    .line 5130
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_224

    .line 5131
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_223

    .line 5132
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_222

    .line 5133
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_221

    .line 5134
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_220

    .line 5135
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_21f

    .line 5136
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5139
    goto/16 :goto_0

    :cond_21f
    move v0, v1

    .line 5141
    goto/16 :goto_0

    :cond_220
    move v0, v1

    .line 5143
    goto/16 :goto_0

    :cond_221
    move v0, v1

    .line 5145
    goto/16 :goto_0

    :cond_222
    move v0, v1

    .line 5147
    goto/16 :goto_0

    :cond_223
    move v0, v1

    .line 5149
    goto/16 :goto_0

    :cond_224
    move v0, v1

    .line 5151
    goto/16 :goto_0

    :cond_225
    move v0, v1

    .line 5153
    goto/16 :goto_0

    .line 5154
    :cond_226
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_24e

    .line 5155
    add-int/lit8 v4, p2, -0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_237

    .line 5156
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_22f

    .line 5157
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, -0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_22d

    .line 5158
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_22c

    .line 5159
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_22b

    .line 5160
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_22a

    .line 5161
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_229

    .line 5162
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_228

    .line 5163
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_227

    .line 5164
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5167
    goto/16 :goto_0

    :cond_227
    move v0, v1

    .line 5169
    goto/16 :goto_0

    :cond_228
    move v0, v1

    .line 5171
    goto/16 :goto_0

    :cond_229
    move v0, v1

    .line 5173
    goto/16 :goto_0

    :cond_22a
    move v0, v1

    .line 5175
    goto/16 :goto_0

    :cond_22b
    move v0, v1

    .line 5177
    goto/16 :goto_0

    :cond_22c
    move v0, v1

    .line 5179
    goto/16 :goto_0

    .line 5180
    :cond_22d
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_22e

    .line 5181
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5184
    goto/16 :goto_0

    :cond_22e
    move v0, v1

    .line 5186
    goto/16 :goto_0

    .line 5188
    :cond_22f
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_236

    .line 5189
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_235

    .line 5190
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_234

    .line 5191
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_233

    .line 5192
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_232

    .line 5193
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_231

    .line 5194
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_230

    .line 5195
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5198
    goto/16 :goto_0

    :cond_230
    move v0, v1

    .line 5200
    goto/16 :goto_0

    :cond_231
    move v0, v1

    .line 5202
    goto/16 :goto_0

    :cond_232
    move v0, v1

    .line 5204
    goto/16 :goto_0

    :cond_233
    move v0, v1

    .line 5206
    goto/16 :goto_0

    :cond_234
    move v0, v1

    .line 5208
    goto/16 :goto_0

    :cond_235
    move v0, v1

    .line 5210
    goto/16 :goto_0

    :cond_236
    move v0, v1

    .line 5212
    goto/16 :goto_0

    .line 5213
    :cond_237
    add-int/lit8 v4, p2, -0x2

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-ge v4, v3, :cond_243

    .line 5214
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_240

    .line 5215
    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_23e

    .line 5216
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_23d

    .line 5217
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_23c

    .line 5218
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_23b

    .line 5219
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_23a

    .line 5220
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_239

    .line 5221
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_238

    .line 5222
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5225
    goto/16 :goto_0

    :cond_238
    move v0, v1

    .line 5227
    goto/16 :goto_0

    :cond_239
    move v0, v1

    .line 5229
    goto/16 :goto_0

    :cond_23a
    move v0, v1

    .line 5231
    goto/16 :goto_0

    :cond_23b
    move v0, v1

    .line 5233
    goto/16 :goto_0

    :cond_23c
    move v0, v1

    .line 5235
    goto/16 :goto_0

    :cond_23d
    move v0, v1

    .line 5237
    goto/16 :goto_0

    .line 5238
    :cond_23e
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_23f

    .line 5239
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5242
    goto/16 :goto_0

    :cond_23f
    move v0, v1

    .line 5244
    goto/16 :goto_0

    .line 5245
    :cond_240
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_241

    .line 5246
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 5249
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5252
    goto/16 :goto_0

    .line 5254
    :cond_241
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_242

    .line 5255
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5258
    goto/16 :goto_0

    :cond_242
    move v0, v1

    .line 5260
    goto/16 :goto_0

    .line 5262
    :cond_243
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, -0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_24b

    .line 5263
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_24a

    .line 5264
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_249

    .line 5265
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_248

    .line 5266
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_247

    .line 5267
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_246

    .line 5268
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_245

    .line 5269
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_244

    .line 5270
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5273
    goto/16 :goto_0

    :cond_244
    move v0, v1

    .line 5275
    goto/16 :goto_0

    :cond_245
    move v0, v1

    .line 5277
    goto/16 :goto_0

    :cond_246
    move v0, v1

    .line 5279
    goto/16 :goto_0

    :cond_247
    move v0, v1

    .line 5281
    goto/16 :goto_0

    :cond_248
    move v0, v1

    .line 5283
    goto/16 :goto_0

    :cond_249
    move v0, v1

    .line 5285
    goto/16 :goto_0

    :cond_24a
    move v0, v1

    .line 5287
    goto/16 :goto_0

    .line 5288
    :cond_24b
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_24d

    .line 5289
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_24c

    .line 5290
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5293
    goto/16 :goto_0

    :cond_24c
    move v0, v1

    .line 5295
    goto/16 :goto_0

    :cond_24d
    move v0, v1

    .line 5297
    goto/16 :goto_0

    .line 5299
    :cond_24e
    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, p2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_256

    .line 5300
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_255

    .line 5301
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_254

    .line 5302
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_253

    .line 5303
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_252

    .line 5304
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_251

    .line 5305
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_250

    .line 5306
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_24f

    .line 5307
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 5310
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5313
    goto/16 :goto_0

    :cond_24f
    move v0, v1

    .line 5315
    goto/16 :goto_0

    :cond_250
    move v0, v1

    .line 5317
    goto/16 :goto_0

    :cond_251
    move v0, v1

    .line 5319
    goto/16 :goto_0

    :cond_252
    move v0, v1

    .line 5321
    goto/16 :goto_0

    :cond_253
    move v0, v1

    .line 5323
    goto/16 :goto_0

    :cond_254
    move v0, v1

    .line 5325
    goto/16 :goto_0

    :cond_255
    move v0, v1

    .line 5327
    goto/16 :goto_0

    .line 5328
    :cond_256
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_25e

    .line 5329
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_25d

    .line 5330
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_25c

    .line 5331
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 5334
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_25b

    .line 5335
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_25a

    .line 5336
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_259

    .line 5337
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_258

    .line 5338
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_257

    .line 5339
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5342
    goto/16 :goto_0

    :cond_257
    move v0, v1

    .line 5344
    goto/16 :goto_0

    :cond_258
    move v0, v1

    .line 5346
    goto/16 :goto_0

    :cond_259
    move v0, v1

    .line 5348
    goto/16 :goto_0

    :cond_25a
    move v0, v1

    .line 5350
    goto/16 :goto_0

    :cond_25b
    move v0, v1

    .line 5352
    goto/16 :goto_0

    :cond_25c
    move v0, v1

    .line 5354
    goto/16 :goto_0

    :cond_25d
    move v0, v1

    .line 5356
    goto/16 :goto_0

    :cond_25e
    move v0, v1

    .line 5358
    goto/16 :goto_0

    .line 5360
    :cond_25f
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, p3, -0x3

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_268

    .line 5361
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_267

    .line 5362
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_266

    .line 5363
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_265

    .line 5364
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_264

    .line 5365
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_263

    .line 5366
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_262

    .line 5367
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_260

    .line 5368
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 5371
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5374
    goto/16 :goto_0

    .line 5376
    :cond_260
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_261

    .line 5377
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5380
    goto/16 :goto_0

    :cond_261
    move v0, v1

    .line 5382
    goto/16 :goto_0

    :cond_262
    move v0, v1

    .line 5384
    goto/16 :goto_0

    :cond_263
    move v0, v1

    .line 5386
    goto/16 :goto_0

    :cond_264
    move v0, v1

    .line 5388
    goto/16 :goto_0

    :cond_265
    move v0, v1

    .line 5390
    goto/16 :goto_0

    :cond_266
    move v0, v1

    .line 5392
    goto/16 :goto_0

    :cond_267
    move v0, v1

    .line 5394
    goto/16 :goto_0

    .line 5395
    :cond_268
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_275

    .line 5396
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_274

    .line 5397
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_273

    .line 5398
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_26d

    .line 5399
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 5402
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_26c

    .line 5403
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_26b

    .line 5404
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_26a

    .line 5405
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_269

    .line 5406
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5409
    goto/16 :goto_0

    :cond_269
    move v0, v1

    .line 5411
    goto/16 :goto_0

    :cond_26a
    move v0, v1

    .line 5413
    goto/16 :goto_0

    :cond_26b
    move v0, v1

    .line 5415
    goto/16 :goto_0

    :cond_26c
    move v0, v1

    .line 5417
    goto/16 :goto_0

    .line 5419
    :cond_26d
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_272

    .line 5420
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_271

    .line 5421
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_270

    .line 5422
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_26f

    .line 5423
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_26e

    .line 5424
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5427
    goto/16 :goto_0

    :cond_26e
    move v0, v1

    .line 5429
    goto/16 :goto_0

    :cond_26f
    move v0, v1

    .line 5431
    goto/16 :goto_0

    :cond_270
    move v0, v1

    .line 5433
    goto/16 :goto_0

    :cond_271
    move v0, v1

    .line 5435
    goto/16 :goto_0

    :cond_272
    move v0, v1

    .line 5437
    goto/16 :goto_0

    :cond_273
    move v0, v1

    .line 5439
    goto/16 :goto_0

    :cond_274
    move v0, v1

    .line 5441
    goto/16 :goto_0

    :cond_275
    move v0, v1

    .line 5443
    goto/16 :goto_0

    .line 5445
    :cond_276
    add-int/lit8 v4, p2, -0x2

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_281

    .line 5446
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_280

    .line 5447
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_27f

    .line 5448
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_27e

    .line 5449
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_27d

    .line 5450
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_27c

    .line 5451
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_279

    .line 5452
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_277

    .line 5453
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 5456
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5459
    goto/16 :goto_0

    .line 5461
    :cond_277
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_278

    .line 5462
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5465
    goto/16 :goto_0

    :cond_278
    move v0, v1

    .line 5467
    goto/16 :goto_0

    .line 5469
    :cond_279
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_27b

    .line 5470
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_27a

    .line 5471
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5474
    goto/16 :goto_0

    :cond_27a
    move v0, v1

    .line 5476
    goto/16 :goto_0

    :cond_27b
    move v0, v1

    .line 5478
    goto/16 :goto_0

    :cond_27c
    move v0, v1

    .line 5480
    goto/16 :goto_0

    :cond_27d
    move v0, v1

    .line 5482
    goto/16 :goto_0

    :cond_27e
    move v0, v1

    .line 5484
    goto/16 :goto_0

    :cond_27f
    move v0, v1

    .line 5486
    goto/16 :goto_0

    :cond_280
    move v0, v1

    .line 5488
    goto/16 :goto_0

    .line 5489
    :cond_281
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_292

    .line 5490
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_291

    .line 5491
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_290

    .line 5492
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_28a

    .line 5493
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_285

    .line 5494
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 5497
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_284

    .line 5498
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_283

    .line 5499
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_282

    .line 5500
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5503
    goto/16 :goto_0

    :cond_282
    move v0, v1

    .line 5505
    goto/16 :goto_0

    :cond_283
    move v0, v1

    .line 5507
    goto/16 :goto_0

    :cond_284
    move v0, v1

    .line 5509
    goto/16 :goto_0

    .line 5511
    :cond_285
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_289

    .line 5512
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_288

    .line 5513
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_287

    .line 5514
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_286

    .line 5515
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5518
    goto/16 :goto_0

    :cond_286
    move v0, v1

    .line 5520
    goto/16 :goto_0

    :cond_287
    move v0, v1

    .line 5522
    goto/16 :goto_0

    :cond_288
    move v0, v1

    .line 5524
    goto/16 :goto_0

    :cond_289
    move v0, v1

    .line 5526
    goto/16 :goto_0

    .line 5528
    :cond_28a
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_28f

    .line 5529
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_28e

    .line 5530
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_28d

    .line 5531
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_28c

    .line 5532
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_28b

    .line 5533
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5536
    goto/16 :goto_0

    :cond_28b
    move v0, v1

    .line 5538
    goto/16 :goto_0

    :cond_28c
    move v0, v1

    .line 5540
    goto/16 :goto_0

    :cond_28d
    move v0, v1

    .line 5542
    goto/16 :goto_0

    :cond_28e
    move v0, v1

    .line 5544
    goto/16 :goto_0

    :cond_28f
    move v0, v1

    .line 5546
    goto/16 :goto_0

    :cond_290
    move v0, v1

    .line 5548
    goto/16 :goto_0

    :cond_291
    move v0, v1

    .line 5550
    goto/16 :goto_0

    :cond_292
    move v0, v1

    .line 5552
    goto/16 :goto_0

    .line 5554
    :cond_293
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_2a1

    .line 5555
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2a0

    .line 5556
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_29f

    .line 5557
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_29e

    .line 5558
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_29d

    .line 5559
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_299

    .line 5560
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_296

    .line 5561
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_294

    .line 5562
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 5565
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5568
    goto/16 :goto_0

    .line 5570
    :cond_294
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_295

    .line 5571
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5574
    goto/16 :goto_0

    :cond_295
    move v0, v1

    .line 5576
    goto/16 :goto_0

    .line 5578
    :cond_296
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_298

    .line 5579
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_297

    .line 5580
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5583
    goto/16 :goto_0

    :cond_297
    move v0, v1

    .line 5585
    goto/16 :goto_0

    :cond_298
    move v0, v1

    .line 5587
    goto/16 :goto_0

    .line 5589
    :cond_299
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_29c

    .line 5590
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_29b

    .line 5591
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_29a

    .line 5592
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5595
    goto/16 :goto_0

    :cond_29a
    move v0, v1

    .line 5597
    goto/16 :goto_0

    :cond_29b
    move v0, v1

    .line 5599
    goto/16 :goto_0

    :cond_29c
    move v0, v1

    .line 5601
    goto/16 :goto_0

    :cond_29d
    move v0, v1

    .line 5603
    goto/16 :goto_0

    :cond_29e
    move v0, v1

    .line 5605
    goto/16 :goto_0

    :cond_29f
    move v0, v1

    .line 5607
    goto/16 :goto_0

    :cond_2a0
    move v0, v1

    .line 5609
    goto/16 :goto_0

    .line 5610
    :cond_2a1
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2b5

    .line 5611
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2b4

    .line 5612
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2b3

    .line 5613
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2ad

    .line 5614
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2a8

    .line 5615
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2a4

    .line 5616
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 5619
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2a3

    .line 5620
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2a2

    .line 5621
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5624
    goto/16 :goto_0

    :cond_2a2
    move v0, v1

    .line 5626
    goto/16 :goto_0

    :cond_2a3
    move v0, v1

    .line 5628
    goto/16 :goto_0

    .line 5630
    :cond_2a4
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2a7

    .line 5631
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2a6

    .line 5632
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2a5

    .line 5633
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5636
    goto/16 :goto_0

    :cond_2a5
    move v0, v1

    .line 5638
    goto/16 :goto_0

    :cond_2a6
    move v0, v1

    .line 5640
    goto/16 :goto_0

    :cond_2a7
    move v0, v1

    .line 5642
    goto/16 :goto_0

    .line 5644
    :cond_2a8
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2ac

    .line 5645
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2ab

    .line 5646
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2aa

    .line 5647
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2a9

    .line 5648
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5651
    goto/16 :goto_0

    :cond_2a9
    move v0, v1

    .line 5653
    goto/16 :goto_0

    :cond_2aa
    move v0, v1

    .line 5655
    goto/16 :goto_0

    :cond_2ab
    move v0, v1

    .line 5657
    goto/16 :goto_0

    :cond_2ac
    move v0, v1

    .line 5659
    goto/16 :goto_0

    .line 5661
    :cond_2ad
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2b2

    .line 5662
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2b1

    .line 5663
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2b0

    .line 5664
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2af

    .line 5665
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2ae

    .line 5666
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5669
    goto/16 :goto_0

    :cond_2ae
    move v0, v1

    .line 5671
    goto/16 :goto_0

    :cond_2af
    move v0, v1

    .line 5673
    goto/16 :goto_0

    :cond_2b0
    move v0, v1

    .line 5675
    goto/16 :goto_0

    :cond_2b1
    move v0, v1

    .line 5677
    goto/16 :goto_0

    :cond_2b2
    move v0, v1

    .line 5679
    goto/16 :goto_0

    :cond_2b3
    move v0, v1

    .line 5681
    goto/16 :goto_0

    :cond_2b4
    move v0, v1

    .line 5683
    goto/16 :goto_0

    :cond_2b5
    move v0, v1

    .line 5685
    goto/16 :goto_0

    .line 5687
    :cond_2b6
    add-int/lit8 v4, p2, -0x3

    invoke-virtual {p1, v4, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_2c8

    .line 5688
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2c7

    .line 5689
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2c6

    .line 5690
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2c5

    .line 5691
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2c0

    .line 5692
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2bc

    .line 5693
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2b9

    .line 5694
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2b7

    .line 5695
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 5698
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5701
    goto/16 :goto_0

    .line 5703
    :cond_2b7
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2b8

    .line 5704
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5707
    goto/16 :goto_0

    :cond_2b8
    move v0, v1

    .line 5709
    goto/16 :goto_0

    .line 5711
    :cond_2b9
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2bb

    .line 5712
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2ba

    .line 5713
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5716
    goto/16 :goto_0

    :cond_2ba
    move v0, v1

    .line 5718
    goto/16 :goto_0

    :cond_2bb
    move v0, v1

    .line 5720
    goto/16 :goto_0

    .line 5722
    :cond_2bc
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2bf

    .line 5723
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2be

    .line 5724
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2bd

    .line 5725
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5728
    goto/16 :goto_0

    :cond_2bd
    move v0, v1

    .line 5730
    goto/16 :goto_0

    :cond_2be
    move v0, v1

    .line 5732
    goto/16 :goto_0

    :cond_2bf
    move v0, v1

    .line 5734
    goto/16 :goto_0

    .line 5736
    :cond_2c0
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2c4

    .line 5737
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2c3

    .line 5738
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2c2

    .line 5739
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2c1

    .line 5740
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5743
    goto/16 :goto_0

    :cond_2c1
    move v0, v1

    .line 5745
    goto/16 :goto_0

    :cond_2c2
    move v0, v1

    .line 5747
    goto/16 :goto_0

    :cond_2c3
    move v0, v1

    .line 5749
    goto/16 :goto_0

    :cond_2c4
    move v0, v1

    .line 5751
    goto/16 :goto_0

    :cond_2c5
    move v0, v1

    .line 5753
    goto/16 :goto_0

    :cond_2c6
    move v0, v1

    .line 5755
    goto/16 :goto_0

    :cond_2c7
    move v0, v1

    .line 5757
    goto/16 :goto_0

    .line 5758
    :cond_2c8
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2de

    .line 5759
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2dd

    .line 5760
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2dc

    .line 5761
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2d6

    .line 5762
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2d1

    .line 5763
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2cd

    .line 5764
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2ca

    .line 5765
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 5768
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2c9

    .line 5769
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5772
    goto/16 :goto_0

    :cond_2c9
    move v0, v1

    .line 5774
    goto/16 :goto_0

    .line 5776
    :cond_2ca
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2cc

    .line 5777
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2cb

    .line 5778
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5781
    goto/16 :goto_0

    :cond_2cb
    move v0, v1

    .line 5783
    goto/16 :goto_0

    :cond_2cc
    move v0, v1

    .line 5785
    goto/16 :goto_0

    .line 5787
    :cond_2cd
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2d0

    .line 5788
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2cf

    .line 5789
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2ce

    .line 5790
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5793
    goto/16 :goto_0

    :cond_2ce
    move v0, v1

    .line 5795
    goto/16 :goto_0

    :cond_2cf
    move v0, v1

    .line 5797
    goto/16 :goto_0

    :cond_2d0
    move v0, v1

    .line 5799
    goto/16 :goto_0

    .line 5801
    :cond_2d1
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2d5

    .line 5802
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2d4

    .line 5803
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2d3

    .line 5804
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2d2

    .line 5805
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5808
    goto/16 :goto_0

    :cond_2d2
    move v0, v1

    .line 5810
    goto/16 :goto_0

    :cond_2d3
    move v0, v1

    .line 5812
    goto/16 :goto_0

    :cond_2d4
    move v0, v1

    .line 5814
    goto/16 :goto_0

    :cond_2d5
    move v0, v1

    .line 5816
    goto/16 :goto_0

    .line 5818
    :cond_2d6
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2db

    .line 5819
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2da

    .line 5820
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2d9

    .line 5821
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2d8

    .line 5822
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2d7

    .line 5823
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5826
    goto/16 :goto_0

    :cond_2d7
    move v0, v1

    .line 5828
    goto/16 :goto_0

    :cond_2d8
    move v0, v1

    .line 5830
    goto/16 :goto_0

    :cond_2d9
    move v0, v1

    .line 5832
    goto/16 :goto_0

    :cond_2da
    move v0, v1

    .line 5834
    goto/16 :goto_0

    :cond_2db
    move v0, v1

    .line 5836
    goto/16 :goto_0

    :cond_2dc
    move v0, v1

    .line 5838
    goto/16 :goto_0

    :cond_2dd
    move v0, v1

    .line 5840
    goto/16 :goto_0

    :cond_2de
    move v0, v1

    .line 5842
    goto/16 :goto_0

    .line 5844
    :cond_2df
    add-int/lit8 v4, p2, -0x3

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    if-le v4, v2, :cond_2f6

    .line 5845
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p1, v3, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2f5

    .line 5846
    add-int/lit8 v3, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2f4

    .line 5847
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2ee

    .line 5848
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2e9

    .line 5849
    add-int/lit8 v3, p3, 0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2e5

    .line 5850
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2e2

    .line 5851
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2e0

    .line 5852
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 5855
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5858
    goto/16 :goto_0

    .line 5860
    :cond_2e0
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2e1

    .line 5861
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5864
    goto/16 :goto_0

    :cond_2e1
    move v0, v1

    .line 5866
    goto/16 :goto_0

    .line 5868
    :cond_2e2
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2e4

    .line 5869
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2e3

    .line 5870
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5873
    goto/16 :goto_0

    :cond_2e3
    move v0, v1

    .line 5875
    goto/16 :goto_0

    :cond_2e4
    move v0, v1

    .line 5877
    goto/16 :goto_0

    .line 5879
    :cond_2e5
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2e8

    .line 5880
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2e7

    .line 5881
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2e6

    .line 5882
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5885
    goto/16 :goto_0

    :cond_2e6
    move v0, v1

    .line 5887
    goto/16 :goto_0

    :cond_2e7
    move v0, v1

    .line 5889
    goto/16 :goto_0

    :cond_2e8
    move v0, v1

    .line 5891
    goto/16 :goto_0

    .line 5893
    :cond_2e9
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2ed

    .line 5894
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2ec

    .line 5895
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2eb

    .line 5896
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2ea

    .line 5897
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5900
    goto/16 :goto_0

    :cond_2ea
    move v0, v1

    .line 5902
    goto/16 :goto_0

    :cond_2eb
    move v0, v1

    .line 5904
    goto/16 :goto_0

    :cond_2ec
    move v0, v1

    .line 5906
    goto/16 :goto_0

    :cond_2ed
    move v0, v1

    .line 5908
    goto/16 :goto_0

    .line 5910
    :cond_2ee
    add-int/lit8 v3, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2f3

    .line 5911
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2f2

    .line 5912
    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, p2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2f1

    .line 5913
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2f0

    .line 5914
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-le v3, v2, :cond_2ef

    .line 5915
    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-gt v3, v2, :cond_0

    move v0, v1

    .line 5918
    goto/16 :goto_0

    :cond_2ef
    move v0, v1

    .line 5920
    goto/16 :goto_0

    :cond_2f0
    move v0, v1

    .line 5922
    goto/16 :goto_0

    :cond_2f1
    move v0, v1

    .line 5924
    goto/16 :goto_0

    :cond_2f2
    move v0, v1

    .line 5926
    goto/16 :goto_0

    :cond_2f3
    move v0, v1

    .line 5928
    goto/16 :goto_0

    :cond_2f4
    move v0, v1

    .line 5930
    goto/16 :goto_0

    :cond_2f5
    move v0, v1

    .line 5932
    goto/16 :goto_0

    .line 5933
    :cond_2f6
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_30d

    .line 5934
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_30c

    .line 5935
    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_30b

    .line 5936
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_305

    .line 5937
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_300

    .line 5938
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2fc

    .line 5939
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2f9

    .line 5940
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2f7

    .line 5941
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 5944
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5947
    goto/16 :goto_0

    .line 5949
    :cond_2f7
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2f8

    .line 5950
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5953
    goto/16 :goto_0

    :cond_2f8
    move v0, v1

    .line 5955
    goto/16 :goto_0

    .line 5957
    :cond_2f9
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2fb

    .line 5958
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2fa

    .line 5959
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5962
    goto/16 :goto_0

    :cond_2fa
    move v0, v1

    .line 5964
    goto/16 :goto_0

    :cond_2fb
    move v0, v1

    .line 5966
    goto/16 :goto_0

    .line 5968
    :cond_2fc
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2ff

    .line 5969
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2fe

    .line 5970
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_2fd

    .line 5971
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5974
    goto/16 :goto_0

    :cond_2fd
    move v0, v1

    .line 5976
    goto/16 :goto_0

    :cond_2fe
    move v0, v1

    .line 5978
    goto/16 :goto_0

    :cond_2ff
    move v0, v1

    .line 5980
    goto/16 :goto_0

    .line 5982
    :cond_300
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_304

    .line 5983
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_303

    .line 5984
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_302

    .line 5985
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_301

    .line 5986
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 5989
    goto/16 :goto_0

    :cond_301
    move v0, v1

    .line 5991
    goto/16 :goto_0

    :cond_302
    move v0, v1

    .line 5993
    goto/16 :goto_0

    :cond_303
    move v0, v1

    .line 5995
    goto/16 :goto_0

    :cond_304
    move v0, v1

    .line 5997
    goto/16 :goto_0

    .line 5999
    :cond_305
    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_30a

    .line 6000
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_309

    .line 6001
    add-int/lit8 v2, p3, -0x3

    invoke-virtual {p1, p2, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_308

    .line 6002
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_307

    .line 6003
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-ge v2, v3, :cond_306

    .line 6004
    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 6007
    goto/16 :goto_0

    :cond_306
    move v0, v1

    .line 6009
    goto/16 :goto_0

    :cond_307
    move v0, v1

    .line 6011
    goto/16 :goto_0

    :cond_308
    move v0, v1

    .line 6013
    goto/16 :goto_0

    :cond_309
    move v0, v1

    .line 6015
    goto/16 :goto_0

    :cond_30a
    move v0, v1

    .line 6017
    goto/16 :goto_0

    :cond_30b
    move v0, v1

    .line 6019
    goto/16 :goto_0

    :cond_30c
    move v0, v1

    .line 6021
    goto/16 :goto_0

    :cond_30d
    move v0, v1

    .line 6023
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
    .line 151
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 159
    :goto_0
    invoke-virtual {p0}, LCatalano/Imaging/Corners/Fast9;->isSuppressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget v1, p0, LCatalano/Imaging/Corners/Fast9;->a:I

    invoke-direct {p0, v0, v1}, LCatalano/Imaging/Corners/Fast9;->a(LCatalano/Imaging/FastBitmap;I)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v0}, LCatalano/Imaging/Corners/Fast9;->a(IILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 165
    :goto_1
    return-object v0

    .line 155
    :cond_0
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 156
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->toGrayscale()V

    goto :goto_0

    .line 165
    :cond_1
    iget v1, p0, LCatalano/Imaging/Corners/Fast9;->a:I

    invoke-direct {p0, v0, v1}, LCatalano/Imaging/Corners/Fast9;->a(LCatalano/Imaging/FastBitmap;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, LCatalano/Imaging/Corners/Fast9;->a:I

    return v0
.end method

.method public isSuppressed()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, LCatalano/Imaging/Corners/Fast9;->b:Z

    return v0
.end method

.method public setSuppression(Z)V
    .locals 0

    .prologue
    .line 121
    iput-boolean p1, p0, LCatalano/Imaging/Corners/Fast9;->b:Z

    .line 122
    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, LCatalano/Imaging/Corners/Fast9;->a:I

    .line 106
    return-void
.end method
