.class public Lcom/jabistudio/androidjhlabs/filter/ShearFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 23
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->a:F

    .line 24
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->b:F

    .line 25
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->c:F

    .line 26
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->d:F

    .line 27
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->e:F

    .line 28
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->f:F

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->g:Z

    .line 32
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->c:F

    .line 62
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->b:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->d:F

    .line 63
    return-void
.end method


# virtual methods
.method public getXAngle()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->a:F

    return v0
.end method

.method public getYAngle()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->b:F

    return v0
.end method

.method public isResize()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->g:Z

    return v0
.end method

.method public setResize(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->g:Z

    .line 36
    return-void
.end method

.method public setXAngle(F)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->a:F

    .line 44
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->a()V

    .line 45
    return-void
.end method

.method public setYAngle(F)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->b:F

    .line 53
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->a()V

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "Distort/Shear..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 4

    .prologue
    .line 129
    const/4 v0, 0x0

    int-to-float v1, p1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->e:F

    add-float/2addr v1, v2

    int-to-float v2, p2

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->c:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p3, v0

    .line 130
    const/4 v0, 0x1

    int-to-float v1, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->f:F

    add-float/2addr v1, v2

    int-to-float v2, p1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p3, v0

    .line 131
    return-void
.end method

.method protected transformSpace(Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    const v6, 0x3f7fffef    # 0.999999f

    const-wide/16 v4, 0x0

    .line 66
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 67
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->e:F

    .line 68
    float-to-double v2, v0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 69
    neg-float v0, v0

    .line 70
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 71
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->b:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 72
    iget v1, p1, Landroid/graphics/Rect;->right:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/ShearFilter;->f:F

    .line 73
    float-to-double v2, v0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 74
    neg-float v0, v0

    .line 75
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 76
    return-void
.end method
