.class public LCatalano/Imaging/Tools/IntegralImage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field protected integralImage:[[I


# direct methods
.method protected constructor <init>(II)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    .line 70
    iput p1, p0, LCatalano/Imaging/Tools/IntegralImage;->a:I

    .line 71
    iput p2, p0, LCatalano/Imaging/Tools/IntegralImage;->b:I

    .line 72
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    .line 73
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Tools/IntegralImage;-><init>(LCatalano/Imaging/FastBitmap;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;I)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    .line 59
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/IntegralImage;->a:I

    .line 60
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/IntegralImage;->b:I

    .line 61
    invoke-direct {p0, p1, p2}, LCatalano/Imaging/Tools/IntegralImage;->a(LCatalano/Imaging/FastBitmap;I)V

    .line 62
    return-void
.end method

.method public static FromFastBitmap(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/IntegralImage;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-static {p0, v0}, LCatalano/Imaging/Tools/IntegralImage;->FromFastBitmap(LCatalano/Imaging/FastBitmap;I)LCatalano/Imaging/Tools/IntegralImage;

    move-result-object v0

    return-object v0
.end method

.method public static FromFastBitmap(LCatalano/Imaging/FastBitmap;I)LCatalano/Imaging/Tools/IntegralImage;
    .locals 14

    .prologue
    const/4 v1, 0x1

    .line 126
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    .line 127
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v5

    .line 130
    new-instance v6, LCatalano/Imaging/Tools/IntegralImage;

    invoke-direct {v6, v4, v5}, LCatalano/Imaging/Tools/IntegralImage;-><init>(II)V

    .line 131
    iget-object v7, v6, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    move v3, v1

    .line 133
    :goto_0
    if-gt v3, v5, :cond_1

    .line 135
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    .line 137
    :goto_1
    if-gt v0, v4, :cond_0

    .line 138
    int-to-double v8, v2

    add-int/lit8 v2, v3, -0x1

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v2, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    int-to-double v10, v2

    int-to-double v12, p1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-int v2, v8

    .line 139
    aget-object v8, v7, v3

    add-int/lit8 v9, v3, -0x1

    aget-object v9, v7, v9

    aget v9, v9, v0

    add-int/2addr v9, v2

    aput v9, v8, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 143
    :cond_1
    return-object v6
.end method

.method private a(LCatalano/Imaging/FastBitmap;I)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 151
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "IntegralImage works only with Grayscale images"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    :cond_0
    iget v0, p0, LCatalano/Imaging/Tools/IntegralImage;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, LCatalano/Imaging/Tools/IntegralImage;->a:I

    add-int/lit8 v2, v2, 0x1

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    move v0, v1

    .line 161
    :goto_0
    iget v2, p0, LCatalano/Imaging/Tools/IntegralImage;->b:I

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2

    .line 162
    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    .line 163
    :goto_1
    iget v4, p0, LCatalano/Imaging/Tools/IntegralImage;->a:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_1

    .line 164
    int-to-double v4, v3

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v3, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    int-to-double v6, v3

    int-to-double v8, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v3, v4

    .line 165
    iget-object v4, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v4, v4, v0

    iget-object v5, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    add-int/lit8 v6, v0, -0x1

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v5, v3

    aput v5, v4, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_2
    return-void
.end method


# virtual methods
.method public getHaarYWavelet(III)I
    .locals 5

    .prologue
    .line 231
    sub-int v0, p1, p3

    .line 232
    add-int v1, p1, p3

    add-int/lit8 v1, v1, -0x1

    .line 234
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, p2, v1, v2}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleSum(IIII)I

    move-result v2

    int-to-float v2, v2

    .line 235
    sub-int v3, p2, p3

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v0, v3, v1, v4}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleSum(IIII)I

    move-result v0

    int-to-float v0, v0

    .line 237
    sub-float v0, v2, v0

    float-to-int v0, v0

    return v0
.end method

.method public getHarrXWavelet(III)I
    .locals 5

    .prologue
    .line 214
    sub-int v0, p2, p3

    .line 215
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    .line 217
    add-int v2, p1, p3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, p1, v0, v2, v1}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleSum(IIII)I

    move-result v2

    .line 218
    sub-int v3, p1, p3

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v3, v0, v4, v1}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleSum(IIII)I

    move-result v0

    .line 220
    sub-int v0, v2, v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, LCatalano/Imaging/Tools/IntegralImage;->b:I

    return v0
.end method

.method public getInternalData(II)I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getInternalData()[[I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    return-object v0
.end method

.method public getRectangleMean(III)F
    .locals 4

    .prologue
    .line 275
    sub-int v0, p1, p3

    sub-int v1, p2, p3

    add-int v2, p1, p3

    add-int v3, p2, p3

    invoke-virtual {p0, v0, v1, v2, v3}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMean(IIII)F

    move-result v0

    return v0
.end method

.method public getRectangleMean(IIII)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 250
    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    iget v1, p0, LCatalano/Imaging/Tools/IntegralImage;->b:I

    if-ge p1, v1, :cond_0

    iget v1, p0, LCatalano/Imaging/Tools/IntegralImage;->a:I

    if-lt p2, v1, :cond_1

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    .line 253
    :cond_1
    if-gez p1, :cond_2

    move p1, v0

    .line 254
    :cond_2
    if-gez p2, :cond_3

    move p2, v0

    .line 256
    :cond_3
    add-int/lit8 v0, p3, 0x1

    .line 257
    add-int/lit8 v1, p4, 0x1

    .line 259
    iget v2, p0, LCatalano/Imaging/Tools/IntegralImage;->b:I

    if-le v0, v2, :cond_4

    iget v0, p0, LCatalano/Imaging/Tools/IntegralImage;->b:I

    .line 260
    :cond_4
    iget v2, p0, LCatalano/Imaging/Tools/IntegralImage;->a:I

    if-le v1, v2, :cond_5

    iget v1, p0, LCatalano/Imaging/Tools/IntegralImage;->a:I

    .line 263
    :cond_5
    iget-object v2, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    iget-object v3, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    add-int/2addr v2, v3

    iget-object v3, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v3, v3, p1

    aget v3, v3, v1

    sub-int/2addr v2, v3

    iget-object v3, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v3, v3, v0

    aget v3, v3, p2

    sub-int/2addr v2, v3

    int-to-double v2, v2

    sub-int/2addr v0, p1

    sub-int/2addr v1, p2

    mul-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public getRectangleMeanUnsafe(III)F
    .locals 4

    .prologue
    .line 329
    sub-int v0, p1, p3

    sub-int v1, p2, p3

    add-int v2, p1, p3

    add-int v3, p2, p3

    invoke-virtual {p0, v0, v1, v2, v3}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMeanUnsafe(IIII)F

    move-result v0

    return v0
.end method

.method public getRectangleMeanUnsafe(IIII)F
    .locals 4

    .prologue
    .line 313
    add-int/lit8 v0, p3, 0x1

    .line 314
    add-int/lit8 v1, p4, 0x1

    .line 317
    iget-object v2, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    iget-object v3, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    add-int/2addr v2, v3

    iget-object v3, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v3, v3, p1

    aget v3, v3, v1

    sub-int/2addr v2, v3

    iget-object v3, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v3, v3, v0

    aget v3, v3, p2

    sub-int/2addr v2, v3

    int-to-double v2, v2

    sub-int/2addr v0, p1

    sub-int/2addr v1, p2

    mul-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    double-to-float v0, v0

    return v0
.end method

.method public getRectangleSum(III)I
    .locals 4

    .prologue
    .line 203
    sub-int v0, p1, p3

    sub-int v1, p2, p3

    add-int v2, p1, p3

    add-int v3, p2, p3

    invoke-virtual {p0, v0, v1, v2, v3}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleSum(IIII)I

    move-result v0

    return v0
.end method

.method public getRectangleSum(IIII)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 180
    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    iget v1, p0, LCatalano/Imaging/Tools/IntegralImage;->b:I

    if-ge p1, v1, :cond_0

    iget v1, p0, LCatalano/Imaging/Tools/IntegralImage;->a:I

    if-lt p2, v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    if-gez p1, :cond_2

    move p1, v0

    .line 184
    :cond_2
    if-gez p2, :cond_3

    move p2, v0

    .line 186
    :cond_3
    add-int/lit8 v0, p3, 0x1

    .line 187
    add-int/lit8 v1, p4, 0x1

    .line 189
    iget v2, p0, LCatalano/Imaging/Tools/IntegralImage;->b:I

    if-le v0, v2, :cond_4

    iget v0, p0, LCatalano/Imaging/Tools/IntegralImage;->b:I

    .line 190
    :cond_4
    iget v2, p0, LCatalano/Imaging/Tools/IntegralImage;->a:I

    if-le v1, v2, :cond_5

    iget v1, p0, LCatalano/Imaging/Tools/IntegralImage;->a:I

    .line 192
    :cond_5
    iget-object v2, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    iget-object v3, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    add-int/2addr v2, v3

    iget-object v3, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v3, v3, p1

    aget v3, v3, v1

    sub-int/2addr v2, v3

    iget-object v3, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v0, v3, v0

    aget v0, v0, v1

    sub-int v0, v2, v0

    goto :goto_0
.end method

.method public getRectangleSumUnsafe(III)I
    .locals 4

    .prologue
    .line 301
    sub-int v0, p1, p3

    sub-int v1, p2, p3

    add-int v2, p1, p3

    add-int v3, p2, p3

    invoke-virtual {p0, v0, v1, v2, v3}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleSumUnsafe(IIII)I

    move-result v0

    return v0
.end method

.method public getRectangleSumUnsafe(IIII)I
    .locals 4

    .prologue
    .line 287
    add-int/lit8 v0, p3, 0x1

    .line 288
    add-int/lit8 v1, p4, 0x1

    .line 290
    iget-object v2, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    iget-object v3, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    add-int/2addr v2, v3

    iget-object v3, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v0, v3, v0

    aget v0, v0, p2

    sub-int v0, v2, v0

    iget-object v2, p0, LCatalano/Imaging/Tools/IntegralImage;->integralImage:[[I

    aget-object v2, v2, p1

    aget v1, v2, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, LCatalano/Imaging/Tools/IntegralImage;->a:I

    return v0
.end method
