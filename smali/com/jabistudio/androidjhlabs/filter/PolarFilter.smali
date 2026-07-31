.class public Lcom/jabistudio/androidjhlabs/filter/PolarFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.source "SourceFile"


# static fields
.field public static final INVERT_IN_CIRCLE:I = 0x2

.field public static final POLAR_TO_RECT:I = 0x1

.field public static final RECT_TO_POLAR:I


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;-><init>(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 58
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->a:I

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->setEdgeAction(I)V

    .line 60
    return-void
.end method

.method private a(F)F
    .locals 1

    .prologue
    .line 90
    mul-float v0, p1, p1

    return v0
.end method


# virtual methods
.method public filter([III)[I
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 63
    int-to-float v0, p2

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->b:F

    .line 64
    int-to-float v0, p3

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->c:F

    .line 65
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->b:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    .line 66
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->c:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    .line 67
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->f:F

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->a:I

    return v0
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->a:I

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string v0, "Distort/Polar Coordinates..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 10

    .prologue
    const v6, 0x40c90fdb

    const v4, 0x40490fdb    # (float)Math.PI

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 96
    .line 98
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->a:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 101
    :pswitch_0
    int-to-float v0, p1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 102
    int-to-float v0, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 103
    int-to-float v0, p1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    sub-float/2addr v0, v2

    int-to-float v2, p2

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v2, v4, v0

    .line 104
    int-to-float v0, p1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    sub-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->a(F)F

    move-result v0

    int-to-float v3, p2

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    sub-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->a(F)F

    move-result v3

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 124
    :goto_1
    int-to-float v3, p1

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 125
    int-to-float v1, p2

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    sub-float/2addr v1, v3

    int-to-float v3, p1

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    sub-float/2addr v3, v4

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 129
    :cond_0
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->c:F

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->b:F

    div-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_7

    .line 130
    int-to-float v3, p1

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    .line 132
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    .line 142
    :goto_2
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->b:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p3, v8

    .line 143
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->c:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->f:F

    div-float/2addr v0, v1

    aput v0, p3, v9

    goto :goto_0

    .line 105
    :cond_1
    int-to-float v0, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 106
    int-to-float v0, p1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    int-to-float v3, p2

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 107
    int-to-float v0, p1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    sub-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->a(F)F

    move-result v0

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    int-to-float v4, p2

    sub-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->a(F)F

    move-result v3

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    goto :goto_1

    .line 109
    :cond_2
    const v2, 0x3fc90fdb

    .line 110
    int-to-float v0, p1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    sub-float/2addr v0, v3

    goto :goto_1

    .line 112
    :cond_3
    int-to-float v0, p1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_11

    .line 113
    int-to-float v0, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 114
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    int-to-float v2, p1

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    int-to-float v3, p2

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v2, v6, v0

    .line 115
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    int-to-float v3, p1

    sub-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->a(F)F

    move-result v0

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    int-to-float v4, p2

    sub-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->a(F)F

    move-result v3

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    goto/16 :goto_1

    .line 116
    :cond_4
    int-to-float v0, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 117
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    int-to-float v2, p1

    sub-float/2addr v0, v2

    int-to-float v2, p2

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v0, v2

    add-float v2, v4, v0

    .line 118
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    int-to-float v3, p1

    sub-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->a(F)F

    move-result v0

    int-to-float v3, p2

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    sub-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->a(F)F

    move-result v3

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    goto/16 :goto_1

    .line 120
    :cond_5
    const v2, 0x4096cbe4

    .line 121
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    int-to-float v3, p1

    sub-float/2addr v0, v3

    goto/16 :goto_1

    .line 134
    :cond_6
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    .line 135
    mul-float/2addr v1, v3

    goto/16 :goto_2

    .line 138
    :cond_7
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    .line 139
    div-float v1, v3, v1

    goto/16 :goto_2

    .line 146
    :pswitch_1
    int-to-float v0, p1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->b:F

    div-float/2addr v0, v2

    mul-float v2, v0, v6

    .line 149
    const v0, 0x4096cbe4

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_8

    .line 150
    sub-float v0, v6, v2

    .line 158
    :goto_3
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 159
    cmpl-float v4, v3, v1

    if-eqz v4, :cond_b

    .line 160
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 164
    :goto_4
    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->c:F

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->b:F

    div-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_d

    .line 165
    cmpl-float v1, v0, v1

    if-nez v1, :cond_c

    .line 167
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    .line 177
    :goto_5
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->f:F

    int-to-float v3, p2

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->c:F

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    .line 179
    neg-float v3, v1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    .line 180
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v1

    .line 182
    const v1, 0x4096cbe4

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_e

    .line 183
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    sub-float/2addr v1, v3

    aput v1, p3, v8

    .line 184
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    sub-float v0, v1, v0

    aput v0, p3, v9

    goto/16 :goto_0

    .line 151
    :cond_8
    cmpl-float v0, v2, v4

    if-ltz v0, :cond_9

    .line 152
    sub-float v0, v2, v4

    goto :goto_3

    .line 153
    :cond_9
    const v0, 0x3fc90fdb

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_a

    .line 154
    sub-float v0, v4, v2

    goto :goto_3

    :cond_a
    move v0, v2

    .line 156
    goto :goto_3

    :cond_b
    move v3, v1

    .line 162
    goto :goto_4

    .line 169
    :cond_c
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    .line 170
    mul-float/2addr v1, v3

    goto :goto_5

    .line 173
    :cond_d
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    .line 174
    div-float/2addr v1, v3

    goto :goto_5

    .line 185
    :cond_e
    float-to-double v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_f

    .line 186
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    sub-float/2addr v1, v3

    aput v1, p3, v8

    .line 187
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    add-float/2addr v0, v1

    aput v0, p3, v9

    goto/16 :goto_0

    .line 188
    :cond_f
    float-to-double v4, v2

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_10

    .line 189
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    add-float/2addr v1, v3

    aput v1, p3, v8

    .line 190
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    add-float/2addr v0, v1

    aput v0, p3, v9

    goto/16 :goto_0

    .line 192
    :cond_10
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    add-float/2addr v1, v3

    aput v1, p3, v8

    .line 193
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    sub-float v0, v1, v0

    aput v0, p3, v9

    goto/16 :goto_0

    .line 197
    :pswitch_2
    int-to-float v0, p1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    sub-float/2addr v0, v1

    .line 198
    int-to-float v1, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    sub-float/2addr v1, v2

    .line 199
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 200
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->d:F

    mul-float/2addr v4, v5

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    add-float/2addr v0, v3

    aput v0, p3, v8

    .line 201
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PolarFilter;->e:F

    mul-float/2addr v3, v4

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p3, v9

    goto/16 :goto_0

    :cond_11
    move v0, v1

    move v2, v1

    goto/16 :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
