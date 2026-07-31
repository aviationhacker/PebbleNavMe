.class public Lcom/jabistudio/androidjhlabs/filter/RippleFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.source "SourceFile"


# static fields
.field public static final NOISE:I = 0x3

.field public static final SAWTOOTH:I = 0x1

.field public static final SINE:I = 0x0

.field public static final TRIANGLE:I = 0x2


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 59
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->a:F

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->b:F

    .line 61
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->d:F

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->c:F

    .line 62
    return-void
.end method


# virtual methods
.method public getWaveType()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->e:I

    return v0
.end method

.method public getXAmplitude()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->a:F

    return v0
.end method

.method public getXWavelength()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->c:F

    return v0
.end method

.method public getYAmplitude()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->b:F

    return v0
.end method

.method public getYWavelength()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->d:F

    return v0
.end method

.method public setWaveType(I)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->e:I

    .line 144
    return-void
.end method

.method public setXAmplitude(F)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->a:F

    .line 71
    return-void
.end method

.method public setXWavelength(F)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->c:F

    .line 89
    return-void
.end method

.method public setYAmplitude(F)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->b:F

    .line 107
    return-void
.end method

.method public setYWavelength(F)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->d:F

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-string v0, "Distort/Ripple..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 165
    int-to-float v0, p2

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->c:F

    div-float/2addr v0, v1

    .line 166
    int-to-float v1, p1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->d:F

    div-float v2, v1, v2

    .line 168
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->e:I

    packed-switch v1, :pswitch_data_0

    .line 171
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 172
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 187
    :goto_0
    const/4 v2, 0x0

    int-to-float v3, p1

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->a:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    aput v1, p3, v2

    .line 188
    const/4 v1, 0x1

    int-to-float v2, p2

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->b:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    aput v0, p3, v1

    .line 189
    return-void

    .line 175
    :pswitch_0
    invoke-static {v0, v3}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(FF)F

    move-result v1

    .line 176
    invoke-static {v2, v3}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(FF)F

    move-result v0

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->triangle(F)F

    move-result v1

    .line 180
    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->triangle(F)F

    move-result v0

    goto :goto_0

    .line 183
    :pswitch_2
    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise1(F)F

    move-result v1

    .line 184
    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise1(F)F

    move-result v0

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected transformSpace(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 156
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->edgeAction:I

    if-nez v0, :cond_0

    .line 157
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->a:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 158
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 159
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->b:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 160
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/RippleFilter;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 162
    :cond_0
    return-void
.end method
