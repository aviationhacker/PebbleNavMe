.class public Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# static fields
.field public static final GAUSSIAN:I = 0x0

.field public static final UNIFORM:I = 0x1


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:F

.field private e:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 38
    const/16 v0, 0x19

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->a:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->b:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->c:Z

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->d:F

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->e:Ljava/util/Random;

    .line 45
    return-void
.end method

.method private a(I)I
    .locals 6

    .prologue
    const/16 v2, 0xff

    .line 122
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->e:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    :goto_0
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->a:I

    int-to-double v4, v3

    mul-double/2addr v0, v4

    double-to-int v0, v0

    add-int/2addr v0, p1

    .line 123
    if-gez v0, :cond_2

    .line 124
    const/4 v0, 0x0

    .line 127
    :cond_0
    :goto_1
    return v0

    .line 122
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->e:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_0

    .line 125
    :cond_2
    if-le v0, v2, :cond_0

    move v0, v2

    .line 126
    goto :goto_1
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 8

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->e:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->d:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 132
    const/high16 v0, -0x1000000

    and-int v3, p3, v0

    .line 133
    shr-int/lit8 v0, p3, 0x10

    and-int/lit16 v2, v0, 0xff

    .line 134
    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v4, v0, 0xff

    .line 135
    and-int/lit16 v5, p3, 0xff

    .line 136
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->c:Z

    if-eqz v0, :cond_2

    .line 137
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->e:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    :goto_0
    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->a:I

    int-to-double v6, v6

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 138
    add-int v1, v2, v0

    invoke-static {v1}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 139
    add-int v1, v4, v0

    invoke-static {v1}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v1

    .line 140
    add-int/2addr v0, v5

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v0

    .line 146
    :goto_1
    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int p3, v1, v0

    .line 148
    :cond_0
    return p3

    .line 137
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->e:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0, v2}, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->a(I)I

    move-result v2

    .line 143
    invoke-direct {p0, v4}, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->a(I)I

    move-result v1

    .line 144
    invoke-direct {p0, v5}, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->a(I)I

    move-result v0

    goto :goto_1
.end method

.method public getAmount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->a:I

    return v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->d:F

    return v0
.end method

.method public getDistribution()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->b:I

    return v0
.end method

.method public getMonochrome()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->c:Z

    return v0
.end method

.method public setAmount(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->a:I

    .line 56
    return-void
.end method

.method public setDensity(F)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->d:F

    .line 110
    return-void
.end method

.method public setDistribution(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->b:I

    .line 74
    return-void
.end method

.method public setMonochrome(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/NoiseFilter;->c:Z

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "Stylize/Add Noise..."

    return-object v0
.end method
