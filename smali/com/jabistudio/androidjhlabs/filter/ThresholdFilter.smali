.class public Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x7f

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 29
    const v0, 0xffffff

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->c:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->d:I

    .line 44
    invoke-virtual {p0, p1}, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->setLowerThreshold(I)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->setUpperThreshold(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 4

    .prologue
    .line 121
    invoke-static {p3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->brightness(I)I

    move-result v0

    .line 122
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->b:I

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-static {v1, v2, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v0

    .line 123
    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->d:I

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->c:I

    invoke-static {v0, v2, v3}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v0

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public getBlack()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->d:I

    return v0
.end method

.method public getLowerThreshold()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->a:I

    return v0
.end method

.method public getUpperThreshold()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->b:I

    return v0
.end method

.method public getWhite()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->c:I

    return v0
.end method

.method public setBlack(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->d:I

    .line 109
    return-void
.end method

.method public setLowerThreshold(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->a:I

    .line 55
    return-void
.end method

.method public setUpperThreshold(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->b:I

    .line 73
    return-void
.end method

.method public setWhite(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ThresholdFilter;->c:I

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "Stylize/Threshold..."

    return-object v0
.end method
