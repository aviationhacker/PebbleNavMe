.class public LCatalano/Imaging/Filters/HSLFiltering;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Core/IntRange;

.field private b:LCatalano/Core/FloatRange;

.field private c:LCatalano/Core/FloatRange;

.field private d:I

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
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, LCatalano/Core/IntRange;

    const/16 v1, 0x167

    invoke-direct {v0, v5, v1}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    .line 44
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v2, v4}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    .line 45
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v2, v4}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    .line 47
    iput v5, p0, LCatalano/Imaging/Filters/HSLFiltering;->d:I

    .line 48
    iput v2, p0, LCatalano/Imaging/Filters/HSLFiltering;->e:F

    .line 49
    iput v2, p0, LCatalano/Imaging/Filters/HSLFiltering;->f:F

    .line 50
    iput-boolean v3, p0, LCatalano/Imaging/Filters/HSLFiltering;->g:Z

    .line 52
    iput-boolean v3, p0, LCatalano/Imaging/Filters/HSLFiltering;->h:Z

    .line 53
    iput-boolean v3, p0, LCatalano/Imaging/Filters/HSLFiltering;->i:Z

    .line 54
    iput-boolean v3, p0, LCatalano/Imaging/Filters/HSLFiltering;->j:Z

    .line 191
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntRange;LCatalano/Core/FloatRange;LCatalano/Core/FloatRange;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, LCatalano/Core/IntRange;

    const/16 v1, 0x167

    invoke-direct {v0, v5, v1}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    .line 44
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v2, v4}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    .line 45
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v2, v4}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    .line 47
    iput v5, p0, LCatalano/Imaging/Filters/HSLFiltering;->d:I

    .line 48
    iput v2, p0, LCatalano/Imaging/Filters/HSLFiltering;->e:F

    .line 49
    iput v2, p0, LCatalano/Imaging/Filters/HSLFiltering;->f:F

    .line 50
    iput-boolean v3, p0, LCatalano/Imaging/Filters/HSLFiltering;->g:Z

    .line 52
    iput-boolean v3, p0, LCatalano/Imaging/Filters/HSLFiltering;->h:Z

    .line 53
    iput-boolean v3, p0, LCatalano/Imaging/Filters/HSLFiltering;->i:Z

    .line 54
    iput-boolean v3, p0, LCatalano/Imaging/Filters/HSLFiltering;->j:Z

    .line 200
    iput-object p1, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    .line 201
    iput-object p2, p0, LCatalano/Imaging/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    .line 202
    iput-object p3, p0, LCatalano/Imaging/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    .line 203
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 210
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v4

    move v3, v2

    .line 213
    :goto_0
    if-ge v3, v4, :cond_b

    .line 215
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v0

    .line 216
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v5

    .line 217
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    .line 219
    invoke-static {v0, v5, v6}, LCatalano/Imaging/Tools/ColorConverter;->RGBtoHLS(III)[F

    move-result-object v5

    .line 222
    aget v0, v5, v1

    iget-object v6, p0, LCatalano/Imaging/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    .line 223
    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMin()F

    move-result v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_6

    aget v0, v5, v1

    iget-object v6, p0, LCatalano/Imaging/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMax()F

    move-result v6

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_6

    aget v0, v5, v7

    iget-object v6, p0, LCatalano/Imaging/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    .line 224
    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMin()F

    move-result v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_6

    aget v0, v5, v7

    iget-object v6, p0, LCatalano/Imaging/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMax()F

    move-result v6

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_6

    iget-object v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    .line 226
    invoke-virtual {v0}, LCatalano/Core/IntRange;->getMin()I

    move-result v0

    iget-object v6, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMax()I

    move-result v6

    if-ge v0, v6, :cond_0

    aget v0, v5, v2

    iget-object v6, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMin()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_0

    aget v0, v5, v2

    iget-object v6, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMax()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v0, v0, v6

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    .line 227
    invoke-virtual {v0}, LCatalano/Core/IntRange;->getMin()I

    move-result v0

    iget-object v6, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMax()I

    move-result v6

    if-le v0, v6, :cond_6

    aget v0, v5, v2

    iget-object v6, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMin()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-gez v0, :cond_1

    aget v0, v5, v2

    iget-object v6, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMax()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_6

    .line 231
    :cond_1
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->g:Z

    if-nez v0, :cond_c

    .line 233
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->h:Z

    if-eqz v0, :cond_2

    iget v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->d:I

    int-to-float v0, v0

    aput v0, v5, v2

    .line 234
    :cond_2
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->i:Z

    if-eqz v0, :cond_3

    iget v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->e:F

    aput v0, v5, v1

    .line 235
    :cond_3
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->j:Z

    if-eqz v0, :cond_4

    iget v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->f:F

    aput v0, v5, v7

    :cond_4
    move v0, v1

    .line 252
    :goto_1
    if-eqz v0, :cond_5

    .line 255
    aget v0, v5, v2

    aget v6, v5, v1

    aget v5, v5, v7

    invoke-static {v0, v6, v5}, LCatalano/Imaging/Tools/ColorConverter;->HSLtoRGB(FFF)[I

    move-result-object v0

    .line 256
    invoke-virtual {p1, v3, v0}, LCatalano/Imaging/FastBitmap;->setRGB(I[I)V

    .line 213
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 242
    :cond_6
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->g:Z

    if-eqz v0, :cond_c

    .line 244
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->h:Z

    if-eqz v0, :cond_7

    iget v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->d:I

    int-to-float v0, v0

    aput v0, v5, v2

    .line 245
    :cond_7
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->i:Z

    if-eqz v0, :cond_8

    iget v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->e:F

    aput v0, v5, v1

    .line 246
    :cond_8
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->j:Z

    if-eqz v0, :cond_9

    iget v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->f:F

    aput v0, v5, v7

    :cond_9
    move v0, v1

    .line 248
    goto :goto_1

    .line 262
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HSL Filtering only works in RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_b
    return-void

    :cond_c
    move v0, v2

    goto :goto_1
.end method

.method public getFillColor()[F
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, LCatalano/Imaging/Filters/HSLFiltering;->d:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, LCatalano/Imaging/Filters/HSLFiltering;->e:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, LCatalano/Imaging/Filters/HSLFiltering;->f:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getHue()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public getLuminance()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public getSaturation()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public isFillOutsideRange()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->g:Z

    return v0
.end method

.method public isUpdatedHue()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->h:Z

    return v0
.end method

.method public isUpdatedLuminance()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->j:Z

    return v0
.end method

.method public isUpdatedSaturation()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HSLFiltering;->i:Z

    return v0
.end method

.method public setFillColor(IFF)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, LCatalano/Imaging/Filters/HSLFiltering;->d:I

    .line 120
    iput p2, p0, LCatalano/Imaging/Filters/HSLFiltering;->e:F

    .line 121
    iput p3, p0, LCatalano/Imaging/Filters/HSLFiltering;->f:F

    .line 122
    return-void
.end method

.method public setFillOutsideRange(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, LCatalano/Imaging/Filters/HSLFiltering;->g:Z

    .line 138
    return-void
.end method

.method public setHue(LCatalano/Core/IntRange;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, LCatalano/Imaging/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    .line 70
    return-void
.end method

.method public setLuminance(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, LCatalano/Imaging/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    .line 102
    return-void
.end method

.method public setSaturation(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, LCatalano/Imaging/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    .line 86
    return-void
.end method

.method public setUpdateHue(Z)V
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, LCatalano/Imaging/Filters/HSLFiltering;->h:Z

    .line 154
    return-void
.end method

.method public setUpdateLuminance(Z)V
    .locals 0

    .prologue
    .line 185
    iput-boolean p1, p0, LCatalano/Imaging/Filters/HSLFiltering;->j:Z

    .line 186
    return-void
.end method

.method public setUpdateSaturation(Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, LCatalano/Imaging/Filters/HSLFiltering;->i:Z

    .line 170
    return-void
.end method
