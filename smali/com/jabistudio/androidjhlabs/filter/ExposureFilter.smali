.class public Lcom/jabistudio/androidjhlabs/filter/ExposureFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransferFilter;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;-><init>()V

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ExposureFilter;->a:F

    return-void
.end method


# virtual methods
.method public getExposure()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ExposureFilter;->a:F

    return v0
.end method

.method public setExposure(F)V
    .locals 1

    .prologue
    .line 38
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ExposureFilter;->a:F

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/ExposureFilter;->initialized:Z

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "Colors/Exposure..."

    return-object v0
.end method

.method protected transferFunction(F)F
    .locals 4

    .prologue
    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    neg-float v1, p1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/ExposureFilter;->a:F

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float/2addr v0, v1

    return v0
.end method
