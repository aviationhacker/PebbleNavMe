.class public LCatalano/Imaging/Tools/ObjectiveFidelity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;

.field private b:LCatalano/Imaging/FastBitmap;


# direct methods
.method public constructor <init>(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    .line 77
    iput-object p2, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->b:LCatalano/Imaging/FastBitmap;

    .line 78
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 80
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The both images must be equal dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :cond_1
    return-void
.end method


# virtual methods
.method public getDerivativeSNR()D
    .locals 14

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 143
    iget-object v0, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 144
    iget-object v0, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    move v6, v1

    move-wide v4, v2

    .line 149
    :goto_0
    add-int/lit8 v0, v8, -0x1

    if-ge v6, v0, :cond_1

    move v0, v1

    .line 150
    :goto_1
    add-int/lit8 v9, v7, -0x1

    if-ge v0, v9, :cond_0

    .line 151
    iget-object v9, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v9, v6, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    iget-object v10, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v10, v11, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget-object v10, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v10, v6, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    iget-object v11, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v11, v6, v12}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    .line 152
    mul-int v10, v9, v9

    int-to-double v10, v10

    add-double/2addr v4, v10

    .line 154
    iget-object v10, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v10, v6, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    iget-object v11, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->b:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v11, v12, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v11, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v11, v6, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    iget-object v12, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->b:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v13, v0, 0x1

    invoke-virtual {v12, v6, v13}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v10, v11

    .line 155
    sub-int/2addr v9, v10

    int-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v2, v10

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 159
    :cond_1
    div-double v0, v4, v2

    .line 160
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getMSE()D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 106
    move v0, v1

    move v2, v1

    .line 108
    :goto_0
    iget-object v3, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 109
    :goto_1
    iget-object v4, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 110
    iget-object v4, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    iget-object v5, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 111
    int-to-double v6, v2

    add-double/2addr v4, v6

    double-to-int v4, v4

    .line 109
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v3, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-double v4, v3

    div-double/2addr v0, v4

    .line 115
    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOriginalImage()LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method public getPSNR()D
    .locals 2

    .prologue
    .line 168
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, LCatalano/Imaging/Tools/ObjectiveFidelity;->getPSNR(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPSNR(I)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 179
    const-wide/16 v2, 0x0

    move v0, v1

    .line 180
    :goto_0
    iget-object v4, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 181
    :goto_1
    iget-object v5, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 182
    iget-object v5, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    iget-object v6, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v6, v0, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v2

    .line 181
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 180
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 186
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v0

    div-double v0, v4, v0

    mul-double/2addr v0, v2

    .line 187
    mul-int v2, p1, p1

    int-to-double v2, v2

    div-double v0, v2, v0

    .line 188
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 189
    return-wide v0
.end method

.method public getReconstructedImage()LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->b:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method public getSNR()D
    .locals 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 123
    move v0, v1

    move-wide v4, v2

    .line 125
    :goto_0
    iget-object v6, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v6}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    if-ge v0, v6, :cond_1

    move v6, v1

    .line 126
    :goto_1
    iget-object v7, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v7}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 127
    iget-object v7, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v7, v0, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 128
    mul-int v8, v7, v7

    int-to-double v8, v8

    add-double/2addr v8, v2

    .line 129
    iget-object v2, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    sub-int v2, v7, v2

    int-to-double v2, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v4, v2

    .line 126
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v8

    goto :goto_1

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    div-double v0, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalError()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 92
    move v0, v1

    move v2, v1

    .line 93
    :goto_0
    iget-object v3, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 94
    :goto_1
    iget-object v4, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 95
    iget-object v4, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    iget-object v5, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 94
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    return v2
.end method

.method public setOriginalImage(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->a:LCatalano/Imaging/FastBitmap;

    .line 52
    return-void
.end method

.method public setReconstructedImage(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, LCatalano/Imaging/Tools/ObjectiveFidelity;->b:LCatalano/Imaging/FastBitmap;

    .line 68
    return-void
.end method
