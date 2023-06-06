.class public Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->a:F

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->b:F

    .line 34
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 77
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->a:F

    sub-float v0, v2, v0

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->b:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 78
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->b:F

    sub-float v1, v0, v1

    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->c:F

    .line 79
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->d:F

    .line 80
    new-instance v0, Ljava/util/Random;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->e:Ljava/util/Random;

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public filterRGB(III)I
    .locals 4

    .prologue
    .line 85
    shr-int/lit8 v0, p3, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 86
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->e:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    .line 87
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->c:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->d:F

    invoke-static {v2, v3, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v1

    .line 88
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->a:F

    return v0
.end method

.method public getSoftness()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->b:F

    return v0
.end method

.method public setDensity(F)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->a:F

    .line 45
    return-void
.end method

.method public setSoftness(F)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/DissolveFilter;->b:F

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "Stylize/Dissolve..."

    return-object v0
.end method
