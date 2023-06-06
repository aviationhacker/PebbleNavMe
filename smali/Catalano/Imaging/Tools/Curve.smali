.class public LCatalano/Imaging/Tools/Curve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public x:[F

.field public y:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-array v0, v1, [F

    iput-object v0, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    .line 87
    new-array v0, v1, [F

    iput-object v0, p0, LCatalano/Imaging/Tools/Curve;->y:[F

    .line 88
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Tools/Curve;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget-object v0, p1, LCatalano/Imaging/Tools/Curve;->x:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    iput-object v0, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    .line 96
    iget-object v0, p1, LCatalano/Imaging/Tools/Curve;->y:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    iput-object v0, p0, LCatalano/Imaging/Tools/Curve;->y:[F

    .line 97
    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    .line 106
    iput-object p2, p0, LCatalano/Imaging/Tools/Curve;->y:[F

    .line 107
    return-void
.end method

.method public static Spline(FI[F)F
    .locals 12

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v10, -0x41000000    # -0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 226
    add-int/lit8 v3, p1, -0x3

    .line 230
    const/4 v0, 0x1

    if-ge v3, v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too few knots in spline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    cmpl-float v0, p0, v2

    if-lez v0, :cond_3

    move v0, v2

    .line 234
    :goto_0
    cmpg-float v4, v0, v1

    if-gez v4, :cond_1

    move v0, v1

    .line 235
    :cond_1
    int-to-float v3, v3

    mul-float/2addr v3, v0

    .line 236
    float-to-int v0, v3

    .line 237
    add-int/lit8 v4, p1, -0x4

    if-le v0, v4, :cond_2

    .line 238
    add-int/lit8 v0, p1, -0x4

    .line 239
    :cond_2
    int-to-float v4, v0

    sub-float/2addr v3, v4

    .line 241
    aget v4, p2, v0

    .line 242
    add-int/lit8 v5, v0, 0x1

    aget v5, p2, v5

    .line 243
    add-int/lit8 v6, v0, 0x2

    aget v6, p2, v6

    .line 244
    add-int/lit8 v0, v0, 0x3

    aget v0, p2, v0

    .line 246
    mul-float v7, v10, v4

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    const/high16 v8, -0x40400000    # -1.5f

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    mul-float v8, v11, v0

    add-float/2addr v7, v8

    .line 247
    mul-float v8, v2, v4

    const/high16 v9, -0x3fe00000    # -2.5f

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    mul-float v9, v10, v0

    add-float/2addr v8, v9

    .line 248
    mul-float v9, v10, v4

    mul-float v10, v1, v5

    add-float/2addr v9, v10

    mul-float v10, v11, v6

    add-float/2addr v9, v10

    mul-float v10, v1, v0

    add-float/2addr v9, v10

    .line 249
    mul-float/2addr v4, v1

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    mul-float v4, v1, v6

    add-float/2addr v2, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 251
    mul-float v1, v7, v3

    add-float/2addr v1, v8

    mul-float/2addr v1, v3

    add-float/2addr v1, v9

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0

    :cond_3
    move v0, p0

    .line 233
    goto :goto_0
.end method

.method public static Spline(FI[I[I)F
    .locals 10

    .prologue
    .line 264
    add-int/lit8 v1, p1, -0x3

    .line 268
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too few knots in spline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 272
    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    int-to-float v2, v2

    cmpl-float v2, v2, p0

    if-lez v2, :cond_3

    .line 274
    :cond_1
    add-int/lit8 v1, p1, -0x3

    if-le v0, v1, :cond_2

    .line 275
    add-int/lit8 v0, p1, -0x3

    .line 276
    :cond_2
    aget v1, p2, v0

    int-to-float v1, v1

    sub-float v1, p0, v1

    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    aget v3, p2, v0

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 277
    add-int/lit8 v0, v0, -0x1

    .line 278
    if-gez v0, :cond_4

    .line 279
    const/4 v1, 0x0

    .line 280
    const/4 v0, 0x0

    .line 283
    :goto_1
    aget v2, p3, v1

    int-to-float v2, v2

    .line 284
    add-int/lit8 v3, v1, 0x1

    aget v3, p3, v3

    int-to-float v3, v3

    .line 285
    add-int/lit8 v4, v1, 0x2

    aget v4, p3, v4

    int-to-float v4, v4

    .line 286
    add-int/lit8 v1, v1, 0x3

    aget v1, p3, v1

    int-to-float v1, v1

    .line 288
    const/high16 v5, -0x41000000    # -0.5f

    mul-float/2addr v5, v2

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    const/high16 v6, -0x40400000    # -1.5f

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    .line 289
    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v6, v2

    const/high16 v7, -0x3fe00000    # -2.5f

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    const/high16 v7, -0x41000000    # -0.5f

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    .line 290
    const/high16 v7, -0x41000000    # -0.5f

    mul-float/2addr v7, v2

    const/4 v8, 0x0

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    const/4 v8, 0x0

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    .line 291
    const/4 v8, 0x0

    mul-float/2addr v2, v8

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    const/4 v3, 0x0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 293
    mul-float v2, v5, v0

    add-float/2addr v2, v6

    mul-float/2addr v2, v0

    add-float/2addr v2, v7

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0

    .line 271
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_1
.end method


# virtual methods
.method public addPoint(FF)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 133
    .line 134
    iget-object v1, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    array-length v5, v1

    .line 135
    add-int/lit8 v1, v5, 0x1

    new-array v6, v1, [F

    .line 136
    add-int/lit8 v1, v5, 0x1

    new-array v7, v1, [F

    move v2, v0

    move v1, v0

    move v0, v4

    .line 138
    :goto_0
    if-ge v2, v5, :cond_0

    .line 139
    if-ne v0, v4, :cond_2

    iget-object v3, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    aget v3, v3, v2

    cmpl-float v3, v3, p1

    if-lez v3, :cond_2

    .line 141
    aput p1, v6, v1

    .line 142
    aput p2, v7, v1

    .line 143
    add-int/lit8 v0, v1, 0x1

    .line 145
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    aget v3, v3, v2

    aput v3, v6, v0

    .line 146
    iget-object v3, p0, LCatalano/Imaging/Tools/Curve;->y:[F

    aget v3, v3, v2

    aput v3, v7, v0

    .line 147
    add-int/lit8 v3, v0, 0x1

    .line 138
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    move v1, v3

    goto :goto_0

    .line 149
    :cond_0
    if-ne v0, v4, :cond_1

    .line 151
    aput p1, v6, v1

    .line 152
    aput p2, v7, v1

    .line 154
    :cond_1
    iput-object v6, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    .line 155
    iput-object v7, p0, LCatalano/Imaging/Tools/Curve;->y:[F

    .line 157
    return-void

    :cond_2
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_1
.end method

.method public addPoint(LCatalano/Core/FloatPoint;)V
    .locals 2

    .prologue
    .line 124
    iget v0, p1, LCatalano/Core/FloatPoint;->x:F

    iget v1, p1, LCatalano/Core/FloatPoint;->y:F

    invoke-virtual {p0, v0, v1}, LCatalano/Imaging/Tools/Curve;->addPoint(FF)V

    .line 125
    return-void
.end method

.method public addPoint(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LCatalano/Core/FloatPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/FloatPoint;

    .line 115
    invoke-virtual {p0, v0}, LCatalano/Imaging/Tools/Curve;->addPoint(LCatalano/Core/FloatPoint;)V

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, LCatalano/Imaging/Tools/Curve;->y:[F

    iput-object v0, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    .line 186
    return-void
.end method

.method public getX()[F
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    return-object v0
.end method

.method public getY()[F
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LCatalano/Imaging/Tools/Curve;->y:[F

    return-object v0
.end method

.method public makeLut()[I
    .locals 11

    .prologue
    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/16 v2, 0xff

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    array-length v0, v0

    .line 194
    add-int/lit8 v3, v0, 0x2

    new-array v5, v3, [F

    .line 195
    add-int/lit8 v3, v0, 0x2

    new-array v6, v3, [F

    .line 196
    iget-object v3, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    invoke-static {v3, v1, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget-object v3, p0, LCatalano/Imaging/Tools/Curve;->y:[F

    invoke-static {v3, v1, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    aget v3, v5, v4

    aput v3, v5, v1

    .line 199
    aget v3, v6, v4

    aput v3, v6, v1

    .line 200
    add-int/lit8 v3, v0, 0x1

    aget v4, v5, v0

    aput v4, v5, v3

    .line 201
    add-int/lit8 v3, v0, 0x1

    aget v0, v6, v0

    aput v0, v6, v3

    .line 203
    const/16 v0, 0x100

    new-array v7, v0, [I

    move v4, v1

    .line 204
    :goto_0
    const/16 v0, 0x400

    if-ge v4, v0, :cond_4

    .line 205
    int-to-float v0, v4

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v0, v3

    .line 206
    array-length v3, v5

    invoke-static {v0, v3, v5}, LCatalano/Imaging/Tools/Curve;->Spline(FI[F)F

    move-result v3

    mul-float/2addr v3, v10

    add-float/2addr v3, v9

    float-to-int v3, v3

    .line 207
    array-length v8, v5

    invoke-static {v0, v8, v6}, LCatalano/Imaging/Tools/Curve;->Spline(FI[F)F

    move-result v0

    mul-float/2addr v0, v10

    add-float/2addr v0, v9

    float-to-int v0, v0

    .line 208
    if-le v3, v2, :cond_0

    move v3, v2

    .line 209
    :cond_0
    if-gez v3, :cond_1

    move v3, v1

    .line 210
    :cond_1
    if-le v0, v2, :cond_2

    move v0, v2

    .line 211
    :cond_2
    if-gez v0, :cond_3

    move v0, v1

    .line 212
    :cond_3
    aput v0, v7, v3

    .line 204
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 214
    :cond_4
    return-object v7
.end method

.method public removePoint(I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    array-length v3, v1

    .line 165
    const/4 v1, 0x2

    if-gt v3, v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 167
    :cond_0
    add-int/lit8 v1, v3, -0x1

    new-array v4, v1, [F

    .line 168
    add-int/lit8 v1, v3, -0x1

    new-array v5, v1, [F

    move v1, v0

    .line 170
    :goto_1
    add-int/lit8 v2, v3, -0x1

    if-ge v1, v2, :cond_2

    .line 171
    if-ne v1, p1, :cond_1

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 173
    :cond_1
    iget-object v2, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    aget v2, v2, v0

    aput v2, v4, v1

    .line 174
    iget-object v2, p0, LCatalano/Imaging/Tools/Curve;->y:[F

    aget v2, v2, v0

    aput v2, v5, v1

    .line 175
    add-int/lit8 v2, v0, 0x1

    .line 170
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 177
    :cond_2
    iput-object v4, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    .line 178
    iput-object v5, p0, LCatalano/Imaging/Tools/Curve;->y:[F

    goto :goto_0
.end method

.method public setX([F)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    .line 54
    return-void
.end method

.method public setXY([F[F)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, LCatalano/Imaging/Tools/Curve;->x:[F

    .line 79
    iput-object p2, p0, LCatalano/Imaging/Tools/Curve;->y:[F

    .line 80
    return-void
.end method

.method public setY([F)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, LCatalano/Imaging/Tools/Curve;->y:[F

    .line 70
    return-void
.end method
