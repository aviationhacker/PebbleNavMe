.class public LCatalano/Imaging/Filters/YCbCrFiltering;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Core/FloatRange;

.field private b:LCatalano/Core/FloatRange;

.field private c:LCatalano/Core/FloatRange;

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, -0x41000000    # -0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, LCatalano/Core/FloatRange;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    .line 43
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v4, v5}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    .line 44
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v4, v5}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    .line 46
    iput v2, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->d:F

    .line 47
    iput v2, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->e:F

    .line 48
    iput v2, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->f:F

    .line 49
    iput-boolean v3, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->g:Z

    .line 51
    iput-boolean v3, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->h:Z

    .line 52
    iput-boolean v3, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->i:Z

    .line 53
    iput-boolean v3, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->j:Z

    .line 190
    return-void
.end method

.method public constructor <init>(LCatalano/Core/FloatRange;LCatalano/Core/FloatRange;LCatalano/Core/FloatRange;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, -0x41000000    # -0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, LCatalano/Core/FloatRange;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    .line 43
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v4, v5}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    .line 44
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v4, v5}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    .line 46
    iput v2, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->d:F

    .line 47
    iput v2, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->e:F

    .line 48
    iput v2, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->f:F

    .line 49
    iput-boolean v3, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->g:Z

    .line 51
    iput-boolean v3, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->h:Z

    .line 52
    iput-boolean v3, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->i:Z

    .line 53
    iput-boolean v3, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->j:Z

    .line 199
    iput-object p1, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    .line 200
    iput-object p2, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    .line 201
    iput-object p3, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    .line 202
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 209
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v4

    move v3, v2

    .line 212
    :goto_0
    if-ge v3, v4, :cond_9

    .line 215
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v0

    .line 216
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v5

    .line 217
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    .line 220
    sget-object v7, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_601:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    invoke-static {v0, v5, v6, v7}, LCatalano/Imaging/Tools/ColorConverter;->RGBtoYCbCr(IIILCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;)[F

    move-result-object v5

    .line 223
    aget v0, v5, v2

    iget-object v6, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    .line 224
    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMin()F

    move-result v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_4

    aget v0, v5, v2

    iget-object v6, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMax()F

    move-result v6

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_4

    aget v0, v5, v1

    iget-object v6, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    .line 225
    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMin()F

    move-result v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_4

    aget v0, v5, v1

    iget-object v6, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMax()F

    move-result v6

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_4

    aget v0, v5, v8

    iget-object v6, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    .line 226
    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMin()F

    move-result v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_4

    aget v0, v5, v8

    iget-object v6, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMax()F

    move-result v6

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_4

    .line 229
    iget-boolean v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->g:Z

    if-nez v0, :cond_a

    .line 231
    iget-boolean v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->d:F

    aput v0, v5, v2

    .line 232
    :cond_0
    iget-boolean v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->i:Z

    if-eqz v0, :cond_1

    iget v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->e:F

    aput v0, v5, v1

    .line 233
    :cond_1
    iget-boolean v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->j:Z

    if-eqz v0, :cond_2

    iget v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->f:F

    aput v0, v5, v8

    :cond_2
    move v0, v1

    .line 250
    :goto_1
    if-eqz v0, :cond_3

    .line 253
    aget v0, v5, v2

    aget v6, v5, v1

    aget v5, v5, v8

    sget-object v7, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_601:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    invoke-static {v0, v6, v5, v7}, LCatalano/Imaging/Tools/ColorConverter;->YCbCrtoRGB(FFFLCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;)[I

    move-result-object v0

    .line 254
    invoke-virtual {p1, v3, v0}, LCatalano/Imaging/FastBitmap;->setRGB(I[I)V

    .line 212
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 240
    :cond_4
    iget-boolean v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->g:Z

    if-eqz v0, :cond_a

    .line 242
    iget-boolean v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->h:Z

    if-eqz v0, :cond_5

    iget v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->d:F

    aput v0, v5, v2

    .line 243
    :cond_5
    iget-boolean v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->i:Z

    if-eqz v0, :cond_6

    iget v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->e:F

    aput v0, v5, v1

    .line 244
    :cond_6
    iget-boolean v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->j:Z

    if-eqz v0, :cond_7

    iget v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->f:F

    aput v0, v5, v8

    :cond_7
    move v0, v1

    .line 246
    goto :goto_1

    .line 259
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HSL Filtering only works in RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_9
    return-void

    :cond_a
    move v0, v2

    goto :goto_1
.end method

.method public getCb()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public getCr()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public getFillColor()[F
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->d:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->e:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->f:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getY()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public isFillOutsideRange()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->g:Z

    return v0
.end method

.method public isUpdatedCb()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->i:Z

    return v0
.end method

.method public isUpdatedCr()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->j:Z

    return v0
.end method

.method public isUpdatedY()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->h:Z

    return v0
.end method

.method public setCb(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    .line 85
    return-void
.end method

.method public setCr(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    .line 101
    return-void
.end method

.method public setFillColor(FFF)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->d:F

    .line 119
    iput p2, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->e:F

    .line 120
    iput p3, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->f:F

    .line 121
    return-void
.end method

.method public setFillOutsideRange(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->g:Z

    .line 137
    return-void
.end method

.method public setHue(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    .line 69
    return-void
.end method

.method public setUpdateCb(Z)V
    .locals 0

    .prologue
    .line 168
    iput-boolean p1, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->i:Z

    .line 169
    return-void
.end method

.method public setUpdateCr(Z)V
    .locals 0

    .prologue
    .line 184
    iput-boolean p1, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->j:Z

    .line 185
    return-void
.end method

.method public setUpdateY(Z)V
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, LCatalano/Imaging/Filters/YCbCrFiltering;->h:Z

    .line 153
    return-void
.end method
