.class public LCatalano/Imaging/Filters/FourierTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[[LCatalano/Math/ComplexNumber;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, LCatalano/Imaging/Filters/FourierTransform;->d:Z

    .line 46
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/FourierTransform;->b:I

    .line 48
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/FourierTransform;->c:I

    .line 50
    iget v0, p0, LCatalano/Imaging/Filters/FourierTransform;->c:I

    iget v2, p0, LCatalano/Imaging/Filters/FourierTransform;->b:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, LCatalano/Math/ComplexNumber;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[LCatalano/Math/ComplexNumber;

    iput-object v0, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    move v0, v1

    .line 52
    :goto_0
    iget v2, p0, LCatalano/Imaging/Filters/FourierTransform;->c:I

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 53
    :goto_1
    iget v3, p0, LCatalano/Imaging/Filters/FourierTransform;->b:I

    if-ge v2, v3, :cond_0

    .line 54
    iget-object v3, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    aget-object v3, v3, v0

    new-instance v4, LCatalano/Math/ComplexNumber;

    invoke-direct {v4, v6, v7, v6, v7}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    aput-object v4, v3, v2

    .line 55
    iget-object v3, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    invoke-virtual {p1, v0, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    iput-wide v4, v3, LCatalano/Math/ComplexNumber;->real:D

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "FourierTransform works only with Grayscale images"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public Backward()V
    .locals 8

    .prologue
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v1, 0x0

    .line 181
    iget-boolean v0, p0, LCatalano/Imaging/Filters/FourierTransform;->d:Z

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    sget-object v2, LCatalano/Math/Transforms/FourierTransform$Direction;->Backward:LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-static {v0, v2}, LCatalano/Math/Transforms/FourierTransform;->FFT2([[LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    .line 183
    iput-boolean v1, p0, LCatalano/Imaging/Filters/FourierTransform;->d:Z

    move v0, v1

    .line 185
    :goto_0
    iget v2, p0, LCatalano/Imaging/Filters/FourierTransform;->c:I

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 186
    :goto_1
    iget v3, p0, LCatalano/Imaging/Filters/FourierTransform;->b:I

    if-ge v2, v3, :cond_1

    .line 187
    add-int v3, v0, v2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    iget-wide v4, v3, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v4, v6

    iput-wide v4, v3, LCatalano/Math/ComplexNumber;->real:D

    .line 189
    iget-object v3, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    iget-wide v4, v3, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v4, v6

    iput-wide v4, v3, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 186
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_2
    return-void
.end method

.method public Forward()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 162
    iget-boolean v0, p0, LCatalano/Imaging/Filters/FourierTransform;->d:Z

    if-nez v0, :cond_3

    move v0, v1

    .line 163
    :goto_0
    iget v2, p0, LCatalano/Imaging/Filters/FourierTransform;->c:I

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 164
    :goto_1
    iget v3, p0, LCatalano/Imaging/Filters/FourierTransform;->b:I

    if-ge v2, v3, :cond_1

    .line 165
    add-int v3, v0, v2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    iget-wide v4, v3, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v4, v6

    iput-wide v4, v3, LCatalano/Math/ComplexNumber;->real:D

    .line 167
    iget-object v3, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    iget-wide v4, v3, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v4, v6

    iput-wide v4, v3, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 164
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-static {v0, v1}, LCatalano/Math/Transforms/FourierTransform;->FFT2([[LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/FourierTransform;->d:Z

    .line 175
    :cond_3
    return-void
.end method

.method public getData()[[LCatalano/Math/ComplexNumber;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, LCatalano/Imaging/Filters/FourierTransform;->c:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, LCatalano/Imaging/Filters/FourierTransform;->b:I

    return v0
.end method

.method public isFourierTransformed()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, LCatalano/Imaging/Filters/FourierTransform;->d:Z

    return v0
.end method

.method public setData([[LCatalano/Math/ComplexNumber;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    .line 98
    return-void
.end method

.method public toFastBitmap()LCatalano/Imaging/FastBitmap;
    .locals 15

    .prologue
    const/16 v3, 0xff

    const/4 v11, 0x0

    .line 114
    new-instance v14, LCatalano/Imaging/FastBitmap;

    iget v0, p0, LCatalano/Imaging/Filters/FourierTransform;->b:I

    iget v1, p0, LCatalano/Imaging/Filters/FourierTransform;->c:I

    sget-object v2, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v14, v0, v1, v2}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 116
    iget-boolean v0, p0, LCatalano/Imaging/Filters/FourierTransform;->d:Z

    if-eqz v0, :cond_5

    .line 119
    iget v0, p0, LCatalano/Imaging/Filters/FourierTransform;->c:I

    iget v1, p0, LCatalano/Imaging/Filters/FourierTransform;->b:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [[D

    .line 120
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 121
    const-wide v2, -0x10000000000001L

    move v4, v11

    .line 122
    :goto_0
    iget v5, p0, LCatalano/Imaging/Filters/FourierTransform;->c:I

    if-ge v4, v5, :cond_3

    move-wide v6, v0

    move v0, v11

    .line 123
    :goto_1
    iget v1, p0, LCatalano/Imaging/Filters/FourierTransform;->b:I

    if-ge v0, v1, :cond_2

    .line 125
    aget-object v1, v10, v4

    iget-object v5, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    aget-object v5, v5, v4

    aget-object v5, v5, v0

    invoke-virtual {v5}, LCatalano/Math/ComplexNumber;->getMagnitude()D

    move-result-wide v8

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    aput-wide v8, v1, v0

    .line 127
    aget-object v1, v10, v4

    aget-wide v8, v1, v0

    cmpg-double v1, v8, v6

    if-gez v1, :cond_0

    aget-object v1, v10, v4

    aget-wide v6, v1, v0

    .line 128
    :cond_0
    aget-object v1, v10, v4

    aget-wide v8, v1, v0

    cmpl-double v1, v8, v2

    if-lez v1, :cond_1

    aget-object v1, v10, v4

    aget-wide v2, v1, v0

    .line 123
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-wide v0, v6

    goto :goto_0

    :cond_3
    move v12, v11

    .line 133
    :goto_2
    iget v4, p0, LCatalano/Imaging/Filters/FourierTransform;->c:I

    if-ge v12, v4, :cond_9

    move v13, v11

    .line 134
    :goto_3
    iget v4, p0, LCatalano/Imaging/Filters/FourierTransform;->b:I

    if-ge v13, v4, :cond_4

    .line 135
    const-wide/16 v4, 0x0

    const-wide v6, 0x406fe00000000000L    # 255.0

    aget-object v8, v10, v12

    aget-wide v8, v8, v13

    invoke-static/range {v0 .. v9}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v14, v12, v13, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 134
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto :goto_3

    .line 133
    :cond_4
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_2

    :cond_5
    move v0, v11

    .line 142
    :goto_4
    iget v1, p0, LCatalano/Imaging/Filters/FourierTransform;->c:I

    if-ge v0, v1, :cond_9

    move v1, v11

    .line 143
    :goto_5
    iget v2, p0, LCatalano/Imaging/Filters/FourierTransform;->b:I

    if-ge v1, v2, :cond_8

    .line 144
    iget-object v2, p0, LCatalano/Imaging/Filters/FourierTransform;->a:[[LCatalano/Math/ComplexNumber;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-wide v4, v2, LCatalano/Math/ComplexNumber;->real:D

    double-to-int v2, v4

    .line 146
    if-le v2, v3, :cond_6

    move v2, v3

    .line 147
    :cond_6
    if-gez v2, :cond_7

    move v2, v11

    .line 149
    :cond_7
    invoke-virtual {v14, v0, v1, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 142
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 155
    :cond_9
    return-object v14
.end method
