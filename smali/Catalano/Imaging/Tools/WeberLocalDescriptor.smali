.class public LCatalano/Imaging/Tools/WeberLocalDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:I

.field private final c:D

.field private d:[[D

.field private e:[[D

.field private final f:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x5

    iput v0, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->a:I

    .line 35
    iput v3, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->b:I

    .line 36
    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    iput-wide v0, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->c:D

    .line 65
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->f:[[I

    .line 74
    return-void

    .line 65
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        -0x8
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;)[[D
    .locals 14

    .prologue
    .line 83
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 85
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    .line 86
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    .line 88
    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v1, v2, -0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->d:[[D

    .line 89
    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v1, v2, -0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->e:[[D

    .line 91
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_7

    .line 92
    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_6

    .line 95
    iget-object v4, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->f:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/lit8 v5, v1, -0x1

    add-int/lit8 v6, v0, -0x1

    .line 96
    invoke-virtual {p1, v5, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->f:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/lit8 v6, v1, -0x1

    .line 97
    invoke-virtual {p1, v6, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->f:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v7, v0, 0x1

    .line 98
    invoke-virtual {p1, v6, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->f:[[I

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/lit8 v6, v0, -0x1

    .line 99
    invoke-virtual {p1, v1, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->f:[[I

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 100
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->f:[[I

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    add-int/lit8 v6, v0, 0x1

    .line 101
    invoke-virtual {p1, v1, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->f:[[I

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v0, -0x1

    .line 102
    invoke-virtual {p1, v6, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->f:[[I

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/lit8 v6, v1, 0x1

    .line 103
    invoke-virtual {p1, v6, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->f:[[I

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v0, 0x1

    .line 104
    invoke-virtual {p1, v6, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-double v4, v4

    .line 106
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    int-to-double v6, v6

    .line 108
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-eqz v8, :cond_1

    .line 109
    iget-object v8, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->d:[[D

    add-int/lit8 v9, v1, -0x1

    aget-object v8, v8, v9

    add-int/lit8 v9, v0, -0x1

    iget v10, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->b:I

    int-to-double v10, v10

    mul-double/2addr v4, v10

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    aput-wide v4, v8, v9

    .line 116
    :goto_2
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v4, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    .line 117
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v1, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    .line 118
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 119
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p1, v1, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 121
    sub-int v8, v7, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 122
    iget-object v4, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->e:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, -0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 92
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 112
    :cond_1
    iget-object v4, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->d:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, -0x1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    aput-wide v6, v4, v5

    goto :goto_2

    .line 125
    :cond_2
    sub-int v4, v6, v4

    int-to-double v8, v4

    .line 126
    sub-int v4, v7, v5

    int-to-double v4, v4

    .line 127
    iget-object v6, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->e:[[D

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    add-int/lit8 v7, v0, -0x1

    div-double v10, v8, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v10, v12

    aput-wide v10, v6, v7

    .line 129
    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v6, v4, v6

    if-lez v6, :cond_3

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v6, v8, v6

    if-lez v6, :cond_3

    .line 130
    iget-object v4, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->e:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, -0x1

    aget-wide v6, v4, v5

    const-wide/16 v8, 0x0

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_3

    .line 132
    :cond_3
    const-wide v6, -0x4185280d654350b8L    # -1.0E-7

    cmpg-double v6, v4, v6

    if-gez v6, :cond_4

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v6, v8, v6

    if-lez v6, :cond_4

    .line 133
    iget-object v4, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->e:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, -0x1

    aget-wide v6, v4, v5

    const-wide v8, 0x4066800000000000L    # 180.0

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_3

    .line 135
    :cond_4
    const-wide v6, -0x4185280d654350b8L    # -1.0E-7

    cmpg-double v6, v4, v6

    if-gez v6, :cond_5

    const-wide v6, -0x4185280d654350b8L    # -1.0E-7

    cmpg-double v6, v8, v6

    if-gez v6, :cond_5

    .line 136
    iget-object v4, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->e:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, -0x1

    aget-wide v6, v4, v5

    const-wide v8, 0x4066800000000000L    # 180.0

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    goto/16 :goto_3

    .line 138
    :cond_5
    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    const-wide v4, -0x4185280d654350b8L    # -1.0E-7

    cmpg-double v4, v8, v4

    if-gez v4, :cond_0

    .line 139
    iget-object v4, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->e:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, -0x1

    aget-wide v6, v4, v5

    const-wide v8, 0x4076800000000000L    # 360.0

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    goto/16 :goto_3

    .line 91
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 144
    :cond_7
    iget-object v0, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->d:[[D

    return-object v0

    .line 147
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Weber Local Descriptor only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->b:I

    return v0
.end method

.method public getGradientOrientation()[[D
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->e:[[D

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->b:I

    .line 54
    return-void
.end method

.method public toFastBitmap()LCatalano/Imaging/FastBitmap;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 157
    new-instance v3, LCatalano/Imaging/FastBitmap;

    iget-object v0, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->d:[[D

    aget-object v0, v0, v1

    array-length v0, v0

    iget-object v2, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->d:[[D

    array-length v2, v2

    sget-object v4, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v3, v0, v2, v4}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    move v0, v1

    .line 159
    :goto_0
    iget-object v2, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->d:[[D

    array-length v2, v2

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 160
    :goto_1
    iget-object v4, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->d:[[D

    aget-object v4, v4, v1

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 161
    const-wide v4, 0x406fe00000000000L    # 255.0

    iget-object v6, p0, LCatalano/Imaging/Tools/WeberLocalDescriptor;->d:[[D

    aget-object v6, v6, v0

    aget-wide v6, v6, v2

    const-wide v8, -0x4006de04abbbd2e8L    # -1.5707963267948966

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v0, v2, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    return-object v3
.end method
