.class public LCatalano/Imaging/Filters/SaturationCorrection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Imaging/Filters/HSLLinear;

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, LCatalano/Imaging/Filters/HSLLinear;

    invoke-direct {v0}, LCatalano/Imaging/Filters/HSLLinear;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Filters/SaturationCorrection;->a:LCatalano/Imaging/Filters/HSLLinear;

    .line 75
    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v0}, LCatalano/Imaging/Filters/SaturationCorrection;->setAdjustValue(F)V

    .line 76
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, LCatalano/Imaging/Filters/HSLLinear;

    invoke-direct {v0}, LCatalano/Imaging/Filters/HSLLinear;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Filters/SaturationCorrection;->a:LCatalano/Imaging/Filters/HSLLinear;

    .line 83
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/SaturationCorrection;->setAdjustValue(F)V

    .line 85
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, LCatalano/Imaging/Filters/SaturationCorrection;->a:LCatalano/Imaging/Filters/HSLLinear;

    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/HSLLinear;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 90
    return-void
.end method

.method public getAdjustValue()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, LCatalano/Imaging/Filters/SaturationCorrection;->b:F

    return v0
.end method

.method public setAdjustValue(F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 57
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/SaturationCorrection;->b:F

    .line 59
    iget v0, p0, LCatalano/Imaging/Filters/SaturationCorrection;->b:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, LCatalano/Imaging/Filters/SaturationCorrection;->a:LCatalano/Imaging/Filters/HSLLinear;

    new-instance v1, LCatalano/Core/FloatRange;

    iget v2, p0, LCatalano/Imaging/Filters/SaturationCorrection;->b:F

    sub-float v2, v3, v2

    invoke-direct {v1, v4, v2}, LCatalano/Core/FloatRange;-><init>(FF)V

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/HSLLinear;->setInLuminance(LCatalano/Core/FloatRange;)V

    .line 62
    iget-object v0, p0, LCatalano/Imaging/Filters/SaturationCorrection;->a:LCatalano/Imaging/Filters/HSLLinear;

    new-instance v1, LCatalano/Core/FloatRange;

    iget v2, p0, LCatalano/Imaging/Filters/SaturationCorrection;->b:F

    invoke-direct {v1, v2, v3}, LCatalano/Core/FloatRange;-><init>(FF)V

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/HSLLinear;->setOutSaturation(LCatalano/Core/FloatRange;)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Filters/SaturationCorrection;->a:LCatalano/Imaging/Filters/HSLLinear;

    new-instance v1, LCatalano/Core/FloatRange;

    iget v2, p0, LCatalano/Imaging/Filters/SaturationCorrection;->b:F

    neg-float v2, v2

    invoke-direct {v1, v2, v3}, LCatalano/Core/FloatRange;-><init>(FF)V

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/HSLLinear;->setInSaturation(LCatalano/Core/FloatRange;)V

    .line 67
    iget-object v0, p0, LCatalano/Imaging/Filters/SaturationCorrection;->a:LCatalano/Imaging/Filters/HSLLinear;

    new-instance v1, LCatalano/Core/FloatRange;

    iget v2, p0, LCatalano/Imaging/Filters/SaturationCorrection;->b:F

    add-float/2addr v2, v3

    invoke-direct {v1, v4, v2}, LCatalano/Core/FloatRange;-><init>(FF)V

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/HSLLinear;->setOutSaturation(LCatalano/Core/FloatRange;)V

    goto :goto_0
.end method
