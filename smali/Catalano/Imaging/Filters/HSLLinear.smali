.class public LCatalano/Imaging/Filters/HSLLinear;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Core/FloatRange;

.field private b:LCatalano/Core/FloatRange;

.field private c:LCatalano/Core/FloatRange;

.field private d:LCatalano/Core/FloatRange;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v1, v2}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HSLLinear;->a:LCatalano/Core/FloatRange;

    .line 43
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v1, v2}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HSLLinear;->b:LCatalano/Core/FloatRange;

    .line 44
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v1, v2}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HSLLinear;->c:LCatalano/Core/FloatRange;

    .line 45
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v1, v2}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HSLLinear;->d:LCatalano/Core/FloatRange;

    .line 114
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 13

    .prologue
    const/16 v12, 0xff

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 119
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, LCatalano/Imaging/Filters/HSLLinear;->a:LCatalano/Core/FloatRange;

    invoke-virtual {v0}, LCatalano/Core/FloatRange;->getMax()F

    move-result v0

    iget-object v2, p0, LCatalano/Imaging/Filters/HSLLinear;->a:LCatalano/Core/FloatRange;

    invoke-virtual {v2}, LCatalano/Core/FloatRange;->getMin()F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    .line 127
    iget-object v0, p0, LCatalano/Imaging/Filters/HSLLinear;->c:LCatalano/Core/FloatRange;

    invoke-virtual {v0}, LCatalano/Core/FloatRange;->getMax()F

    move-result v0

    iget-object v2, p0, LCatalano/Imaging/Filters/HSLLinear;->c:LCatalano/Core/FloatRange;

    invoke-virtual {v2}, LCatalano/Core/FloatRange;->getMin()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, LCatalano/Imaging/Filters/HSLLinear;->a:LCatalano/Core/FloatRange;

    invoke-virtual {v2}, LCatalano/Core/FloatRange;->getMax()F

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Filters/HSLLinear;->a:LCatalano/Core/FloatRange;

    invoke-virtual {v3}, LCatalano/Core/FloatRange;->getMin()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v2, v0, v2

    .line 128
    iget-object v0, p0, LCatalano/Imaging/Filters/HSLLinear;->c:LCatalano/Core/FloatRange;

    invoke-virtual {v0}, LCatalano/Core/FloatRange;->getMin()F

    move-result v0

    iget-object v3, p0, LCatalano/Imaging/Filters/HSLLinear;->a:LCatalano/Core/FloatRange;

    invoke-virtual {v3}, LCatalano/Core/FloatRange;->getMin()F

    move-result v3

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    .line 131
    :goto_0
    iget-object v3, p0, LCatalano/Imaging/Filters/HSLLinear;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v3}, LCatalano/Core/FloatRange;->getMax()F

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/HSLLinear;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v4}, LCatalano/Core/FloatRange;->getMin()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    .line 133
    iget-object v1, p0, LCatalano/Imaging/Filters/HSLLinear;->d:LCatalano/Core/FloatRange;

    invoke-virtual {v1}, LCatalano/Core/FloatRange;->getMax()F

    move-result v1

    iget-object v3, p0, LCatalano/Imaging/Filters/HSLLinear;->d:LCatalano/Core/FloatRange;

    invoke-virtual {v3}, LCatalano/Core/FloatRange;->getMin()F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, LCatalano/Imaging/Filters/HSLLinear;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v3}, LCatalano/Core/FloatRange;->getMax()F

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/HSLLinear;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v4}, LCatalano/Core/FloatRange;->getMin()F

    move-result v4

    sub-float/2addr v3, v4

    div-float v3, v1, v3

    .line 134
    iget-object v1, p0, LCatalano/Imaging/Filters/HSLLinear;->d:LCatalano/Core/FloatRange;

    invoke-virtual {v1}, LCatalano/Core/FloatRange;->getMin()F

    move-result v1

    iget-object v4, p0, LCatalano/Imaging/Filters/HSLLinear;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v4}, LCatalano/Core/FloatRange;->getMin()F

    move-result v4

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    .line 137
    :goto_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v6

    move v4, v5

    .line 138
    :goto_2
    if-ge v4, v6, :cond_4

    .line 139
    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v7

    .line 140
    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v8

    .line 141
    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v9

    .line 143
    invoke-static {v7, v8, v9}, LCatalano/Imaging/Tools/ColorConverter;->RGBtoHLS(III)[F

    move-result-object v7

    .line 146
    aget v8, v7, v11

    iget-object v9, p0, LCatalano/Imaging/Filters/HSLLinear;->a:LCatalano/Core/FloatRange;

    invoke-virtual {v9}, LCatalano/Core/FloatRange;->getMax()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 147
    iget-object v8, p0, LCatalano/Imaging/Filters/HSLLinear;->c:LCatalano/Core/FloatRange;

    invoke-virtual {v8}, LCatalano/Core/FloatRange;->getMax()F

    move-result v8

    aput v8, v7, v11

    .line 154
    :goto_3
    aget v8, v7, v10

    iget-object v9, p0, LCatalano/Imaging/Filters/HSLLinear;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v9}, LCatalano/Core/FloatRange;->getMax()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 155
    iget-object v8, p0, LCatalano/Imaging/Filters/HSLLinear;->d:LCatalano/Core/FloatRange;

    invoke-virtual {v8}, LCatalano/Core/FloatRange;->getMax()F

    move-result v8

    aput v8, v7, v10

    .line 161
    :goto_4
    aget v8, v7, v5

    aget v9, v7, v10

    aget v7, v7, v11

    invoke-static {v8, v9, v7}, LCatalano/Imaging/Tools/ColorConverter;->HSLtoRGB(FFF)[I

    move-result-object v7

    .line 163
    aget v8, v7, v5

    invoke-virtual {p1, v8, v5, v12}, LCatalano/Imaging/FastBitmap;->clampValues(III)I

    move-result v8

    aput v8, v7, v5

    .line 164
    aget v8, v7, v10

    invoke-virtual {p1, v8, v5, v12}, LCatalano/Imaging/FastBitmap;->clampValues(III)I

    move-result v8

    aput v8, v7, v10

    .line 165
    aget v8, v7, v11

    invoke-virtual {p1, v8, v5, v12}, LCatalano/Imaging/FastBitmap;->clampValues(III)I

    move-result v8

    aput v8, v7, v11

    .line 167
    invoke-virtual {p1, v4, v7}, LCatalano/Imaging/FastBitmap;->setRGB(I[I)V

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 148
    :cond_0
    aget v8, v7, v11

    iget-object v9, p0, LCatalano/Imaging/Filters/HSLLinear;->a:LCatalano/Core/FloatRange;

    invoke-virtual {v9}, LCatalano/Core/FloatRange;->getMin()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 149
    iget-object v8, p0, LCatalano/Imaging/Filters/HSLLinear;->c:LCatalano/Core/FloatRange;

    invoke-virtual {v8}, LCatalano/Core/FloatRange;->getMin()F

    move-result v8

    aput v8, v7, v11

    goto :goto_3

    .line 151
    :cond_1
    aget v8, v7, v11

    mul-float/2addr v8, v2

    add-float/2addr v8, v0

    aput v8, v7, v11

    goto :goto_3

    .line 156
    :cond_2
    aget v8, v7, v10

    iget-object v9, p0, LCatalano/Imaging/Filters/HSLLinear;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v9}, LCatalano/Core/FloatRange;->getMin()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 157
    iget-object v8, p0, LCatalano/Imaging/Filters/HSLLinear;->d:LCatalano/Core/FloatRange;

    invoke-virtual {v8}, LCatalano/Core/FloatRange;->getMin()F

    move-result v8

    aput v8, v7, v10

    goto :goto_4

    .line 159
    :cond_3
    aget v8, v7, v10

    mul-float/2addr v8, v3

    add-float/2addr v8, v1

    aput v8, v7, v10

    goto :goto_4

    .line 170
    :cond_4
    return-void

    :cond_5
    move v3, v1

    goto/16 :goto_1

    :cond_6
    move v0, v1

    move v2, v1

    goto/16 :goto_0
.end method

.method public getInLuminance()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, LCatalano/Imaging/Filters/HSLLinear;->a:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public getInSaturation()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, LCatalano/Imaging/Filters/HSLLinear;->b:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public getOutLuminance()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, LCatalano/Imaging/Filters/HSLLinear;->c:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public getOutSaturation()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, LCatalano/Imaging/Filters/HSLLinear;->d:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public setInLuminance(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, LCatalano/Imaging/Filters/HSLLinear;->a:LCatalano/Core/FloatRange;

    .line 61
    return-void
.end method

.method public setInSaturation(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, LCatalano/Imaging/Filters/HSLLinear;->b:LCatalano/Core/FloatRange;

    .line 77
    return-void
.end method

.method public setOutLuminance(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, LCatalano/Imaging/Filters/HSLLinear;->c:LCatalano/Core/FloatRange;

    .line 93
    return-void
.end method

.method public setOutSaturation(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, LCatalano/Imaging/Filters/HSLLinear;->d:LCatalano/Core/FloatRange;

    .line 109
    return-void
.end method
