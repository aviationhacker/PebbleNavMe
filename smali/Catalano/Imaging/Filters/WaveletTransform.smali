.class public LCatalano/Imaging/Filters/WaveletTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LCatalano/Math/Wavelets/IWavelet;

.field private b:I

.field private c:I

.field private d:Z

.field private e:[[D


# direct methods
.method public constructor <init>(LCatalano/Math/Wavelets/IWavelet;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->d:Z

    .line 47
    iput-object p1, p0, LCatalano/Imaging/Filters/WaveletTransform;->a:LCatalano/Math/Wavelets/IWavelet;

    .line 48
    return-void
.end method


# virtual methods
.method public Backward()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->d:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->a:LCatalano/Math/Wavelets/IWavelet;

    iget-object v1, p0, LCatalano/Imaging/Filters/WaveletTransform;->e:[[D

    invoke-interface {v0, v1}, LCatalano/Math/Wavelets/IWavelet;->Backward([[D)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->d:Z

    .line 120
    :cond_0
    return-void
.end method

.method public Forward(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 80
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->b:I

    .line 81
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->c:I

    .line 82
    iget-boolean v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->d:Z

    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    iget v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->b:I

    invoke-static {v0}, LCatalano/Math/Tools;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->c:I

    invoke-static {v0}, LCatalano/Math/Tools;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    iget v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->c:I

    iget v1, p0, LCatalano/Imaging/Filters/WaveletTransform;->b:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->e:[[D

    move v10, v11

    .line 86
    :goto_0
    iget v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->c:I

    if-ge v10, v0, :cond_1

    move v12, v11

    .line 87
    :goto_1
    iget v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->b:I

    if-ge v12, v0, :cond_0

    .line 88
    iget-object v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->e:[[D

    aget-object v13, v0, v10

    const-wide/16 v0, 0x0

    const-wide v2, 0x406fe00000000000L    # 255.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v10, v12}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    int-to-double v8, v8

    invoke-static/range {v0 .. v9}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v0

    aput-wide v0, v13, v12

    .line 87
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_1

    .line 86
    :cond_0
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->a:LCatalano/Math/Wavelets/IWavelet;

    iget-object v1, p0, LCatalano/Imaging/Filters/WaveletTransform;->e:[[D

    invoke-interface {v0, v1}, LCatalano/Math/Wavelets/IWavelet;->Forward([[D)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->d:Z

    .line 110
    :cond_2
    :goto_2
    return-void

    .line 96
    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image width and height should be power of 2."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 104
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only grayscale images are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :catch_1
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getData()[[D
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->e:[[D

    return-object v0
.end method

.method public isWaveletTransformed()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->d:Z

    return v0
.end method

.method public setData([[D)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, LCatalano/Imaging/Filters/WaveletTransform;->e:[[D

    .line 64
    return-void
.end method

.method public toFastBitmap()LCatalano/Imaging/FastBitmap;
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 127
    new-instance v13, LCatalano/Imaging/FastBitmap;

    iget v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->b:I

    iget v1, p0, LCatalano/Imaging/Filters/WaveletTransform;->c:I

    sget-object v2, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v13, v0, v1, v2}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    move v10, v11

    .line 129
    :goto_0
    iget v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->c:I

    if-ge v10, v0, :cond_1

    move v12, v11

    .line 130
    :goto_1
    iget v0, p0, LCatalano/Imaging/Filters/WaveletTransform;->b:I

    if-ge v12, v0, :cond_0

    .line 131
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide v6, 0x406fe00000000000L    # 255.0

    iget-object v8, p0, LCatalano/Imaging/Filters/WaveletTransform;->e:[[D

    aget-object v8, v8, v10

    aget-wide v8, v8, v12

    invoke-static/range {v0 .. v9}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {v13, v10, v12, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 130
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_1

    .line 129
    :cond_0
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 135
    :cond_1
    return-object v13
.end method
