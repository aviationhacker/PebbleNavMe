.class public Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field public matrix:[[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v0, 0x40c00000    # 6.0f

    const/4 v2, 0x1

    const/4 v3, 0x4

    .line 42
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 23
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->a:F

    .line 24
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->b:F

    .line 25
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->c:F

    .line 26
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->d:F

    .line 27
    iput v3, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->e:I

    .line 28
    iput v3, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->f:I

    .line 29
    const/16 v0, -0x7f80

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->g:I

    .line 30
    const v0, -0x7f7f01

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->h:I

    .line 31
    iput-boolean v2, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->i:Z

    .line 32
    iput-boolean v4, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->j:Z

    .line 33
    iput-boolean v2, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->k:Z

    .line 35
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->matrix:[[I

    .line 43
    return-void

    .line 35
    :array_0
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x0
    .end array-data
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 12

    .prologue
    .line 110
    int-to-float v0, p1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->a:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->c:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 111
    int-to-float v1, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->b:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 112
    int-to-float v2, v0

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->a:F

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->c:F

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(FF)F

    move-result v4

    .line 113
    int-to-float v2, v1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->b:F

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->d:F

    add-float/2addr v3, v5

    invoke-static {v2, v3}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(FF)F

    move-result v6

    .line 114
    int-to-float v0, v0

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->a:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->c:F

    add-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-int v7, v0

    .line 115
    int-to-float v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->b:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->d:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v8, v0

    .line 116
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->a:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 117
    :goto_0
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->b:F

    cmpg-float v1, v6, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    .line 122
    :goto_1
    iget-boolean v2, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->j:Z

    if-eqz v2, :cond_2

    .line 123
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->a:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->a:F

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    .line 124
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->b:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->b:F

    div-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    .line 129
    :goto_2
    iget-boolean v5, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->k:Z

    if-eqz v5, :cond_3

    .line 130
    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->a:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v5, v9

    iget v9, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->a:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->c:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->a:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float v4, v10, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v5, v9, v4}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v5

    .line 131
    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->b:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    iget v9, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->b:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->d:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->b:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float v6, v10, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4, v9, v6}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v4

    .line 136
    :goto_3
    iget-boolean v6, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->i:Z

    if-eqz v6, :cond_4

    move v6, p3

    .line 143
    :goto_4
    iget v9, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->f:I

    rem-int v9, v7, v9

    .line 144
    iget v10, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->e:I

    rem-int v10, v8, v10

    .line 145
    iget-object v11, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->matrix:[[I

    aget-object v11, v11, v10

    aget v11, v11, v9

    .line 146
    if-eqz v0, :cond_b

    .line 147
    if-eqz v1, :cond_7

    .line 148
    const/4 v0, 0x1

    if-ne v11, v0, :cond_5

    .line 149
    :goto_5
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    if-ne v11, v1, :cond_6

    :goto_6
    mul-float/2addr v0, v3

    const/high16 v1, -0x1000000

    invoke-static {v0, v6, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v0

    .line 175
    :goto_7
    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 126
    :cond_2
    const/4 v2, 0x0

    move v3, v2

    goto :goto_2

    .line 133
    :cond_3
    const/4 v4, 0x0

    move v5, v4

    goto :goto_3

    .line 139
    :cond_4
    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->g:I

    .line 140
    iget p3, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->h:I

    goto :goto_4

    :cond_5
    move v6, p3

    .line 148
    goto :goto_5

    :cond_6
    move v3, v2

    .line 149
    goto :goto_6

    .line 151
    :cond_7
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->k:Z

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->matrix:[[I

    add-int/lit8 v1, v8, 0x1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->e:I

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    aget v0, v0, v9

    if-eq v11, v0, :cond_a

    .line 153
    if-nez v11, :cond_8

    .line 154
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v4, v0, v4

    .line 155
    :cond_8
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    .line 156
    const/high16 v1, -0x1000000

    invoke-static {v0, v6, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v6

    .line 160
    :cond_9
    :goto_8
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    const/high16 v1, -0x1000000

    invoke-static {v0, v6, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v0

    goto :goto_7

    .line 157
    :cond_a
    if-nez v11, :cond_9

    .line 158
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, -0x1000000

    invoke-static {v0, v6, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v6

    goto :goto_8

    .line 162
    :cond_b
    if-eqz v1, :cond_f

    .line 163
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->k:Z

    if-eqz v0, :cond_d

    .line 164
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->matrix:[[I

    aget-object v0, v0, v10

    add-int/lit8 v1, v7, 0x1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->f:I

    rem-int/2addr v1, v3

    aget v0, v0, v1

    if-eq v11, v0, :cond_e

    .line 165
    const/4 v0, 0x1

    if-ne v11, v0, :cond_c

    .line 166
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v5, v0, v5

    .line 167
    :cond_c
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v5

    .line 168
    const/high16 v1, -0x1000000

    invoke-static {v0, p3, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result p3

    .line 172
    :cond_d
    :goto_9
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    const/high16 v1, -0x1000000

    invoke-static {v0, p3, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v0

    goto :goto_7

    .line 169
    :cond_e
    const/4 v0, 0x1

    if-ne v11, v0, :cond_d

    .line 170
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, -0x1000000

    invoke-static {v0, p3, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result p3

    goto :goto_9

    .line 174
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_7
.end method

.method public getCrossings()[[I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->matrix:[[I

    return-object v0
.end method

.method public getRoundThreads()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->j:Z

    return v0
.end method

.method public getShadeCrossings()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->k:Z

    return v0
.end method

.method public getUseImageColors()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->i:Z

    return v0
.end method

.method public getXGap()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->c:F

    return v0
.end method

.method public getXWidth()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->a:F

    return v0
.end method

.method public getYGap()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->d:F

    return v0
.end method

.method public getYWidth()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->b:F

    return v0
.end method

.method public setCrossings([[I)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->matrix:[[I

    .line 79
    return-void
.end method

.method public setRoundThreads(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->j:Z

    .line 95
    return-void
.end method

.method public setShadeCrossings(Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->k:Z

    .line 103
    return-void
.end method

.method public setUseImageColors(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->i:Z

    .line 87
    return-void
.end method

.method public setXGap(F)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->c:F

    .line 47
    return-void
.end method

.method public setXWidth(F)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->a:F

    .line 51
    return-void
.end method

.method public setYGap(F)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->d:F

    .line 71
    return-void
.end method

.method public setYWidth(F)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/WeaveFilter;->b:F

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "Texture/Weave..."

    return-object v0
.end method
