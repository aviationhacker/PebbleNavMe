.class public Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

.field private e:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

.field private f:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 48
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->a:F

    .line 49
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->b:F

    .line 50
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->c:F

    .line 56
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 9

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->e:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    array-length v0, v0

    new-array v0, v0, [Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->f:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    .line 162
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->f:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    new-instance v2, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->a:F

    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->x1:I

    iget-object v5, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->e:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->x1:I

    .line 164
    invoke-static {v3, v4, v5}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->lerp(FII)I

    move-result v3

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->a:F

    iget-object v5, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->y1:I

    iget-object v6, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->e:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->y1:I

    .line 165
    invoke-static {v4, v5, v6}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->lerp(FII)I

    move-result v4

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->a:F

    iget-object v6, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->x2:I

    iget-object v7, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->e:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->x2:I

    .line 166
    invoke-static {v5, v6, v7}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->lerp(FII)I

    move-result v5

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->a:F

    iget-object v7, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->y2:I

    iget-object v8, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->e:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->y2:I

    .line 167
    invoke-static {v6, v7, v8}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->lerp(FII)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;-><init>(IIII)V

    aput-object v2, v1, v0

    .line 169
    invoke-virtual {v2}, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->setup()V

    .line 170
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->setup()V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object p1

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->f:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    .line 177
    :cond_1
    return-object p1
.end method

.method public getAmount()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->a:F

    return v0
.end method

.method public getInLines()[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    return-object v0
.end method

.method public getOutLines()[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->e:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->b:F

    return v0
.end method

.method public getStrength()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->c:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->a:F

    .line 67
    return-void
.end method

.method public setInLines([Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    .line 96
    return-void
.end method

.method public setOutLines([Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->e:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    .line 104
    return-void
.end method

.method public setPower(F)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->b:F

    .line 80
    return-void
.end method

.method public setStrength(F)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->c:F

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "Distort/Field Warp..."

    return-object v0
.end method

.method protected transform(IILandroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected transformInverse(II[F)V
    .locals 18

    .prologue
    .line 114
    .line 119
    const v8, 0x3a83126f    # 0.001f

    .line 120
    const/high16 v2, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->c:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v9, v2, v3

    .line 121
    move-object/from16 v0, p0

    iget v10, v0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->b:F

    .line 123
    const/4 v5, 0x0

    .line 124
    const/4 v4, 0x0

    .line 125
    const/4 v3, 0x0

    .line 127
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->d:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    aget-object v11, v6, v2

    .line 129
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;->f:[Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;

    aget-object v12, v6, v2

    .line 130
    iget v6, v12, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->x1:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    .line 131
    iget v7, v12, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->y1:I

    sub-int v7, p2, v7

    int-to-float v13, v7

    .line 133
    iget v7, v12, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dx:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    iget v14, v12, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dy:I

    int-to-float v14, v14

    mul-float/2addr v14, v13

    add-float/2addr v7, v14

    iget v14, v12, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->lengthSquared:F

    div-float v14, v7, v14

    .line 134
    iget v7, v12, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dx:I

    int-to-float v7, v7

    mul-float/2addr v7, v13

    iget v15, v12, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dy:I

    int-to-float v15, v15

    mul-float/2addr v15, v6

    sub-float/2addr v7, v15

    iget v15, v12, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->length:F

    div-float/2addr v7, v15

    .line 135
    const/4 v15, 0x0

    cmpg-float v15, v14, v15

    if-gtz v15, :cond_0

    .line 136
    mul-float/2addr v6, v6

    mul-float/2addr v13, v13

    add-float/2addr v6, v13

    float-to-double v0, v6

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v6, v0

    .line 145
    :goto_1
    iget v13, v11, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->x1:I

    int-to-float v13, v13

    iget v15, v11, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dx:I

    int-to-float v15, v15

    mul-float/2addr v15, v14

    add-float/2addr v13, v15

    iget v15, v11, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dy:I

    int-to-float v15, v15

    mul-float/2addr v15, v7

    iget v0, v11, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->length:F

    move/from16 v16, v0

    div-float v15, v15, v16

    sub-float/2addr v13, v15

    .line 146
    iget v15, v11, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->y1:I

    int-to-float v15, v15

    iget v0, v11, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dy:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v14, v14, v16

    add-float/2addr v14, v15

    iget v15, v11, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dx:I

    int-to-float v15, v15

    mul-float/2addr v7, v15

    iget v11, v11, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->length:F

    div-float/2addr v7, v11

    add-float/2addr v7, v14

    .line 148
    iget v11, v12, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->length:F

    float-to-double v14, v11

    float-to-double v0, v10

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-float/2addr v6, v8

    float-to-double v0, v6

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v6, v14

    .line 150
    move/from16 v0, p1

    int-to-float v11, v0

    sub-float v11, v13, v11

    mul-float/2addr v11, v6

    add-float/2addr v4, v11

    .line 151
    move/from16 v0, p2

    int-to-float v11, v0

    sub-float/2addr v7, v11

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    .line 152
    add-float/2addr v5, v6

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 137
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v14, v6

    if-ltz v6, :cond_1

    .line 138
    iget v6, v12, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->x2:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    .line 139
    iget v13, v12, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->y2:I

    sub-int v13, p2, v13

    int-to-float v13, v13

    .line 140
    mul-float/2addr v6, v6

    mul-float/2addr v13, v13

    add-float/2addr v6, v13

    float-to-double v0, v6

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v6, v0

    goto :goto_1

    .line 141
    :cond_1
    const/4 v6, 0x0

    cmpl-float v6, v7, v6

    if-ltz v6, :cond_2

    move v6, v7

    .line 142
    goto :goto_1

    .line 144
    :cond_2
    neg-float v6, v7

    goto :goto_1

    .line 155
    :cond_3
    const/4 v2, 0x0

    move/from16 v0, p1

    int-to-float v6, v0

    div-float/2addr v4, v5

    add-float/2addr v4, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    aput v4, p3, v2

    .line 156
    const/4 v2, 0x1

    move/from16 v0, p2

    int-to-float v4, v0

    div-float/2addr v3, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    aput v3, p3, v2

    .line 157
    return-void
.end method
