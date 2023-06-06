.class public LCatalano/Imaging/Filters/CosineTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:[[D

.field private e:[[D

.field private f:D

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/CosineTransform;->c:Z

    .line 38
    const/16 v0, 0xff

    iput v0, p0, LCatalano/Imaging/Filters/CosineTransform;->g:I

    .line 44
    return-void
.end method

.method private a()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, LCatalano/Imaging/Filters/CosineTransform;->d:[[D

    array-length v0, v0

    iget-object v2, p0, LCatalano/Imaging/Filters/CosineTransform;->d:[[D

    aget-object v2, v2, v1

    array-length v2, v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, LCatalano/Imaging/Filters/CosineTransform;->e:[[D

    .line 147
    iput-wide v8, p0, LCatalano/Imaging/Filters/CosineTransform;->f:D

    move v0, v1

    .line 149
    :goto_0
    iget-object v2, p0, LCatalano/Imaging/Filters/CosineTransform;->d:[[D

    array-length v2, v2

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 150
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Filters/CosineTransform;->d:[[D

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 151
    iget-object v3, p0, LCatalano/Imaging/Filters/CosineTransform;->d:[[D

    aget-object v3, v3, v0

    aget-wide v4, v3, v2

    .line 152
    cmpg-double v3, v4, v8

    if-gez v3, :cond_0

    neg-double v4, v4

    .line 153
    :cond_0
    iget-object v3, p0, LCatalano/Imaging/Filters/CosineTransform;->e:[[D

    aget-object v3, v3, v0

    aput-wide v4, v3, v2

    .line 154
    iget-wide v6, p0, LCatalano/Imaging/Filters/CosineTransform;->f:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    iput-wide v4, p0, LCatalano/Imaging/Filters/CosineTransform;->f:D

    .line 150
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_3
    return-void
.end method


# virtual methods
.method public Backward()V
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, LCatalano/Imaging/Filters/CosineTransform;->c:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, LCatalano/Imaging/Filters/CosineTransform;->d:[[D

    invoke-static {v0}, LCatalano/Math/Transforms/DiscreteCosineTransform;->Backward([[D)V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/CosineTransform;->c:Z

    .line 117
    :cond_0
    return-void
.end method

.method public Forward(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const-wide/16 v0, 0x0

    .line 76
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    iput v2, p0, LCatalano/Imaging/Filters/CosineTransform;->a:I

    .line 77
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    iput v2, p0, LCatalano/Imaging/Filters/CosineTransform;->b:I

    .line 78
    iget-boolean v2, p0, LCatalano/Imaging/Filters/CosineTransform;->c:Z

    if-nez v2, :cond_2

    .line 79
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 80
    iget v2, p0, LCatalano/Imaging/Filters/CosineTransform;->a:I

    invoke-static {v2}, LCatalano/Math/Tools;->isPowerOf2(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, LCatalano/Imaging/Filters/CosineTransform;->b:I

    invoke-static {v2}, LCatalano/Math/Tools;->isPowerOf2(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    iget v2, p0, LCatalano/Imaging/Filters/CosineTransform;->b:I

    iget v3, p0, LCatalano/Imaging/Filters/CosineTransform;->a:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, LCatalano/Imaging/Filters/CosineTransform;->d:[[D

    move v10, v11

    .line 82
    :goto_0
    iget v2, p0, LCatalano/Imaging/Filters/CosineTransform;->b:I

    if-ge v10, v2, :cond_1

    move v12, v11

    .line 83
    :goto_1
    iget v2, p0, LCatalano/Imaging/Filters/CosineTransform;->a:I

    if-ge v12, v2, :cond_0

    .line 84
    iget-object v2, p0, LCatalano/Imaging/Filters/CosineTransform;->d:[[D

    aget-object v13, v2, v10

    const-wide v2, 0x406fe00000000000L    # 255.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v10, v12}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-double v8, v4

    move-wide v4, v0

    invoke-static/range {v0 .. v9}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v2

    aput-wide v2, v13, v12

    .line 83
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_1

    .line 82
    :cond_0
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, LCatalano/Imaging/Filters/CosineTransform;->d:[[D

    invoke-static {v0}, LCatalano/Math/Transforms/DiscreteCosineTransform;->Forward([[D)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/CosineTransform;->c:Z

    .line 107
    :cond_2
    :goto_2
    return-void

    .line 93
    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image width and height should be power of 2."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 101
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only grayscale images are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :catch_1
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getData()[[D
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, LCatalano/Imaging/Filters/CosineTransform;->d:[[D

    return-object v0
.end method

.method public isWaveletTransformed()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, LCatalano/Imaging/Filters/CosineTransform;->c:Z

    return v0
.end method

.method public setData([[D)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, LCatalano/Imaging/Filters/CosineTransform;->d:[[D

    .line 60
    return-void
.end method

.method public toFastBitmap()LCatalano/Imaging/FastBitmap;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 124
    new-instance v7, LCatalano/Imaging/FastBitmap;

    iget v0, p0, LCatalano/Imaging/Filters/CosineTransform;->a:I

    iget v1, p0, LCatalano/Imaging/Filters/CosineTransform;->b:I

    sget-object v4, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v7, v0, v1, v4}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 125
    invoke-direct {p0}, LCatalano/Imaging/Filters/CosineTransform;->a()V

    .line 127
    iget-wide v0, p0, LCatalano/Imaging/Filters/CosineTransform;->f:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 129
    iget v4, p0, LCatalano/Imaging/Filters/CosineTransform;->g:I

    if-lez v4, :cond_2

    iget v4, p0, LCatalano/Imaging/Filters/CosineTransform;->g:I

    int-to-double v8, v4

    div-double v0, v8, v0

    :goto_0
    move v4, v5

    .line 131
    :goto_1
    iget v6, p0, LCatalano/Imaging/Filters/CosineTransform;->b:I

    if-ge v4, v6, :cond_1

    move v6, v5

    .line 132
    :goto_2
    iget v8, p0, LCatalano/Imaging/Filters/CosineTransform;->a:I

    if-ge v6, v8, :cond_0

    .line 133
    iget-object v8, p0, LCatalano/Imaging/Filters/CosineTransform;->e:[[D

    aget-object v8, v8, v4

    aget-wide v8, v8, v6

    .line 134
    add-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    .line 135
    mul-double/2addr v8, v0

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v7, v4, v6, v8}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 132
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 131
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 139
    :cond_1
    return-object v7

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method
