.class public Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, v0, v0}, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;-><init>(FFF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    .line 31
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->a:F

    .line 32
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->b:F

    .line 33
    iput p3, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->c:F

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->canFilterIndexColorModel:Z

    .line 35
    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    .line 63
    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 64
    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 65
    and-int/lit16 v3, p3, 0xff

    .line 66
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 67
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    aget v2, v1, v9

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->a:F

    add-float/2addr v2, v3

    aput v2, v1, v9

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    aget v1, v1, v9

    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    aget v2, v1, v9

    float-to-double v2, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v9

    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    aget v2, v1, v7

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->b:F

    add-float/2addr v2, v3

    aput v2, v1, v7

    .line 71
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    aget v1, v1, v7

    cmpg-float v1, v1, v6

    if-gez v1, :cond_3

    .line 72
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    aput v6, v1, v7

    .line 75
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    aget v2, v1, v8

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->c:F

    add-float/2addr v2, v3

    aput v2, v1, v8

    .line 76
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    aget v1, v1, v8

    cmpg-float v1, v1, v6

    if-gez v1, :cond_4

    .line 77
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    aput v6, v1, v8

    .line 80
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    .line 81
    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    aget v1, v1, v7

    float-to-double v2, v1

    cmpl-double v1, v2, v10

    if-lez v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v7

    goto :goto_1

    .line 78
    :cond_4
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    aget v1, v1, v8

    float-to-double v2, v1

    cmpl-double v1, v2, v10

    if-lez v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->d:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v8

    goto :goto_2
.end method

.method public getBFactor()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->c:F

    return v0
.end method

.method public getHFactor()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->a:F

    return v0
.end method

.method public getSFactor()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->b:F

    return v0
.end method

.method public setBFactor(F)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->c:F

    .line 55
    return-void
.end method

.method public setHFactor(F)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->a:F

    .line 39
    return-void
.end method

.method public setSFactor(F)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/HSBAdjustFilter;->b:F

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "Colors/Adjust HSB..."

    return-object v0
.end method
