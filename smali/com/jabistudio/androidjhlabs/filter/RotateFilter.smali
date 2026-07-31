.class public Lcom/jabistudio/androidjhlabs/filter/RotateFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x40490fdb    # (float)Math.PI

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;-><init>(F)V

    .line 38
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;-><init>(FZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->d:Z

    .line 54
    invoke-virtual {p0, p1}, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->setAngle(F)V

    .line 55
    iput-boolean p2, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->d:Z

    .line 56
    return-void
.end method

.method private a(IILandroid/graphics/Point;)V
    .locals 3

    .prologue
    .line 112
    int-to-float v0, p1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->b:F

    mul-float/2addr v0, v1

    int-to-float v1, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->x:I

    .line 113
    int-to-float v0, p2

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->b:F

    mul-float/2addr v0, v1

    int-to-float v1, p1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->c:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->y:I

    .line 114
    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->a:F

    return v0
.end method

.method public setAngle(F)V
    .locals 2

    .prologue
    .line 65
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->a:F

    .line 66
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->b:F

    .line 67
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->c:F

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rotate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->a:F

    const/high16 v2, 0x43340000    # 180.0f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 4

    .prologue
    .line 117
    const/4 v0, 0x0

    int-to-float v1, p1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->b:F

    mul-float/2addr v1, v2

    int-to-float v2, p2

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->c:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p3, v0

    .line 118
    const/4 v0, 0x1

    int-to-float v1, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->b:F

    mul-float/2addr v1, v2

    int-to-float v2, p1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->c:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p3, v0

    .line 119
    return-void
.end method

.method protected transformSpace(Landroid/graphics/Rect;)V
    .locals 12

    .prologue
    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 80
    iget-boolean v3, p0, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->d:Z

    if-eqz v3, :cond_1

    .line 81
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 86
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 87
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 88
    iget v8, p1, Landroid/graphics/Rect;->left:I

    .line 89
    iget v9, p1, Landroid/graphics/Rect;->top:I

    move v3, v2

    move v4, v2

    move v2, v1

    .line 91
    :goto_0
    const/4 v10, 0x4

    if-ge v0, v10, :cond_0

    .line 92
    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_1
    iget v10, v5, Landroid/graphics/Point;->x:I

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 99
    iget v10, v5, Landroid/graphics/Point;->y:I

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 100
    iget v10, v5, Landroid/graphics/Point;->x:I

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 101
    iget v10, v5, Landroid/graphics/Point;->y:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :pswitch_0
    invoke-direct {p0, v8, v9, v5}, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->a(IILandroid/graphics/Point;)V

    goto :goto_1

    .line 94
    :pswitch_1
    add-int v10, v8, v6

    invoke-direct {p0, v10, v9, v5}, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->a(IILandroid/graphics/Point;)V

    goto :goto_1

    .line 95
    :pswitch_2
    add-int v10, v9, v7

    invoke-direct {p0, v8, v10, v5}, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->a(IILandroid/graphics/Point;)V

    goto :goto_1

    .line 96
    :pswitch_3
    add-int v10, v8, v6

    add-int v11, v9, v7

    invoke-direct {p0, v10, v11, v5}, Lcom/jabistudio/androidjhlabs/filter/RotateFilter;->a(IILandroid/graphics/Point;)V

    goto :goto_1

    .line 104
    :cond_0
    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 105
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 106
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 107
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 109
    :cond_1
    return-void

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
