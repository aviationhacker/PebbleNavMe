.class public Lcom/jabistudio/androidjhlabs/filter/Curve;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:[F

.field public y:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->x:[F

    .line 27
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->y:[F

    .line 28
    return-void

    .line 26
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 27
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/jabistudio/androidjhlabs/filter/Curve;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget-object v0, p1, Lcom/jabistudio/androidjhlabs/filter/Curve;->x:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->x:[F

    .line 32
    iget-object v0, p1, Lcom/jabistudio/androidjhlabs/filter/Curve;->y:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->y:[F

    .line 33
    return-void
.end method


# virtual methods
.method public addKnot(FF)I
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->x:[F

    array-length v5, v1

    .line 38
    add-int/lit8 v1, v5, 0x1

    new-array v6, v1, [F

    .line 39
    add-int/lit8 v1, v5, 0x1

    new-array v7, v1, [F

    move v2, v0

    move v1, v0

    move v0, v4

    .line 41
    :goto_0
    if-ge v2, v5, :cond_0

    .line 42
    if-ne v0, v4, :cond_2

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->x:[F

    aget v3, v3, v2

    cmpl-float v3, v3, p1

    if-lez v3, :cond_2

    .line 44
    aput p1, v6, v1

    .line 45
    aput p2, v7, v1

    .line 46
    add-int/lit8 v0, v1, 0x1

    .line 48
    :goto_1
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->x:[F

    aget v3, v3, v2

    aput v3, v6, v0

    .line 49
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->y:[F

    aget v3, v3, v2

    aput v3, v7, v0

    .line 50
    add-int/lit8 v3, v0, 0x1

    .line 41
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    move v1, v3

    goto :goto_0

    .line 52
    :cond_0
    if-ne v0, v4, :cond_1

    .line 54
    aput p1, v6, v1

    .line 55
    aput p2, v7, v1

    .line 57
    :goto_2
    iput-object v6, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->x:[F

    .line 58
    iput-object v7, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->y:[F

    .line 59
    return v1

    :cond_1
    move v1, v0

    goto :goto_2

    :cond_2
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_1
.end method

.method protected makeTable()[I
    .locals 11

    .prologue
    const/16 v10, 0xff

    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->x:[F

    array-length v0, v0

    .line 98
    add-int/lit8 v2, v0, 0x2

    new-array v2, v2, [F

    .line 99
    add-int/lit8 v3, v0, 0x2

    new-array v3, v3, [F

    .line 100
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->x:[F

    invoke-static {v4, v1, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->y:[F

    invoke-static {v4, v1, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    aget v4, v2, v5

    aput v4, v2, v1

    .line 103
    aget v4, v3, v5

    aput v4, v3, v1

    .line 104
    add-int/lit8 v4, v0, 0x1

    aget v5, v2, v0

    aput v5, v2, v4

    .line 105
    add-int/lit8 v4, v0, 0x1

    aget v0, v3, v0

    aput v0, v3, v4

    .line 107
    const/16 v0, 0x100

    new-array v4, v0, [I

    move v0, v1

    .line 108
    :goto_0
    const/16 v5, 0x400

    if-ge v0, v5, :cond_0

    .line 109
    int-to-float v5, v0

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v5, v6

    .line 110
    array-length v6, v2

    invoke-static {v5, v6, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->spline(FI[F)F

    move-result v6

    mul-float/2addr v6, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 111
    array-length v7, v2

    invoke-static {v5, v7, v3}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->spline(FI[F)F

    move-result v5

    mul-float/2addr v5, v9

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 112
    invoke-static {v6, v1, v10}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v6

    .line 113
    invoke-static {v5, v1, v10}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v5

    .line 114
    aput v5, v4, v6

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-object v4
.end method

.method public removeKnot(I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->x:[F

    array-length v3, v1

    .line 64
    const/4 v1, 0x2

    if-gt v3, v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 66
    :cond_0
    add-int/lit8 v1, v3, -0x1

    new-array v4, v1, [F

    .line 67
    add-int/lit8 v1, v3, -0x1

    new-array v5, v1, [F

    move v1, v0

    .line 69
    :goto_1
    add-int/lit8 v2, v3, -0x1

    if-ge v1, v2, :cond_2

    .line 70
    if-ne v1, p1, :cond_1

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->x:[F

    aget v2, v2, v0

    aput v2, v4, v1

    .line 73
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->y:[F

    aget v2, v2, v0

    aput v2, v5, v1

    .line 74
    add-int/lit8 v2, v0, 0x1

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 76
    :cond_2
    iput-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->x:[F

    .line 77
    iput-object v5, p0, Lcom/jabistudio/androidjhlabs/filter/Curve;->y:[F

    goto :goto_0
.end method
