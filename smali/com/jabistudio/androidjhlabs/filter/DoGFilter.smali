.class public Lcom/jabistudio/androidjhlabs/filter/DoGFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->a:F

    .line 29
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->b:F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->c:Z

    .line 34
    return-void
.end method

.method private a([III[I)[I
    .locals 3

    .prologue
    .line 154
    .line 155
    new-array v1, p3, [I

    .line 156
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 157
    mul-int v2, p3, p2

    add-int/2addr v2, v0

    aget v2, p1, v2

    aput v2, v1, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-object v1
.end method

.method private b([III[I)V
    .locals 3

    .prologue
    .line 162
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 163
    mul-int v1, p3, p2

    add-int/2addr v1, v0

    aget v2, p4, v0

    aput v2, p1, v1

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method private c([III[I)[I
    .locals 5

    .prologue
    .line 168
    .line 169
    mul-int/lit8 v0, p3, 0x4

    new-array v2, v0, [I

    .line 170
    mul-int v1, p3, p2

    .line 171
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v3, p3, 0x4

    if-ge v0, v3, :cond_0

    .line 172
    aget v3, p1, v1

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    aput v3, v2, v0

    .line 173
    add-int/lit8 v3, v0, 0x1

    aget v4, p1, v1

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    aput v4, v2, v3

    .line 174
    add-int/lit8 v3, v0, 0x2

    aget v4, p1, v1

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    aput v4, v2, v3

    .line 175
    add-int/lit8 v3, v0, 0x3

    aget v4, p1, v1

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    aput v4, v2, v3

    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 171
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 178
    :cond_0
    return-object v2
.end method

.method private d([III[I)V
    .locals 6

    .prologue
    .line 181
    mul-int v1, p3, p2

    .line 182
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v2, p3, 0x4

    if-ge v0, v2, :cond_0

    .line 183
    aget v2, p4, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, p4, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, p4, v4

    add-int/lit8 v5, v0, 0x3

    aget v5, p4, v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, p1, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    .line 182
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method public compose(II[I[IF)[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 189
    array-length v0, p3

    new-array v3, v0, [I

    .line 190
    const/4 v0, 0x0

    .line 191
    add-int v4, v0, p2

    move-object v2, v1

    .line 194
    :goto_0
    if-ge v0, v4, :cond_0

    .line 195
    invoke-direct {p0, p3, v0, p1, v2}, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->c([III[I)[I

    move-result-object v2

    .line 196
    invoke-direct {p0, p4, v0, p1, v1}, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->c([III[I)[I

    move-result-object v1

    .line 197
    invoke-virtual {p0, v2, v1, p5}, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->composeRGB([I[IF)V

    .line 198
    invoke-direct {p0, v3, v0, p1, v1}, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->d([III[I)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-object v3
.end method

.method public composeRGB([I[IF)V
    .locals 12

    .prologue
    .line 203
    array-length v4, p1

    .line 204
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_1

    .line 205
    aget v5, p1, v3

    .line 206
    aget v6, p2, v3

    .line 207
    add-int/lit8 v0, v3, 0x1

    aget v0, p1, v0

    .line 208
    add-int/lit8 v1, v3, 0x1

    aget v7, p2, v1

    .line 209
    add-int/lit8 v1, v3, 0x2

    aget v1, p1, v1

    .line 210
    add-int/lit8 v2, v3, 0x2

    aget v8, p2, v2

    .line 211
    add-int/lit8 v2, v3, 0x3

    aget v9, p1, v2

    .line 212
    add-int/lit8 v2, v3, 0x3

    aget v10, p2, v2

    .line 215
    sub-int v0, v7, v0

    .line 216
    if-gez v0, :cond_3

    .line 217
    const/4 v0, 0x0

    move v2, v0

    .line 218
    :goto_1
    sub-int v0, v8, v1

    .line 219
    if-gez v0, :cond_2

    .line 220
    const/4 v0, 0x0

    move v1, v0

    .line 221
    :goto_2
    sub-int v0, v10, v9

    .line 222
    if-gez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 225
    :cond_0
    int-to-float v9, v5

    mul-float/2addr v9, p3

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v9, v11

    .line 226
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v9

    .line 228
    int-to-float v5, v5

    mul-float/2addr v5, p3

    int-to-float v6, v6

    mul-float/2addr v6, v11

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p2, v3

    .line 229
    add-int/lit8 v5, v3, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v9

    int-to-float v6, v7

    mul-float/2addr v6, v11

    add-float/2addr v2, v6

    float-to-int v2, v2

    aput v2, p2, v5

    .line 230
    add-int/lit8 v2, v3, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v9

    int-to-float v5, v8

    mul-float/2addr v5, v11

    add-float/2addr v1, v5

    float-to-int v1, v1

    aput v1, p2, v2

    .line 231
    add-int/lit8 v1, v3, 0x3

    int-to-float v0, v0

    mul-float/2addr v0, v9

    int-to-float v2, v10

    mul-float/2addr v2, v11

    add-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, p2, v1

    .line 204
    add-int/lit8 v0, v3, 0x4

    move v3, v0

    goto :goto_0

    .line 233
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method public filter([III)[I
    .locals 11

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 94
    mul-int v0, p2, p3

    new-array v1, v0, [I

    move v0, v6

    .line 95
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 96
    aget v2, p1, v0

    aput v2, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    mul-int v0, p2, p3

    new-array v0, v0, [I

    .line 100
    new-instance v0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->a:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->a:F

    invoke-direct {v0, v2, v3, v4}, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;-><init>(FFI)V

    .line 101
    invoke-virtual {v0, v1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->filter([III)[I

    move-result-object v3

    .line 102
    mul-int v0, p2, p3

    new-array v0, v0, [I

    .line 103
    new-instance v0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->b:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->b:F

    invoke-direct {v0, v1, v2, v4}, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;-><init>(FFI)V

    .line 104
    invoke-virtual {v0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->filter([III)[I

    move-result-object v4

    .line 106
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->compose(II[I[IF)[I

    move-result-object v2

    .line 108
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->c:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->a:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 109
    const/4 v0, 0x0

    move v3, v6

    move v4, v6

    .line 111
    :goto_1
    if-ge v3, p3, :cond_4

    .line 113
    invoke-direct {p0, v2, v3, p2, v0}, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->a([III[I)[I

    move-result-object v5

    move v8, v6

    move v1, v4

    .line 114
    :goto_2
    if-ge v8, p2, :cond_3

    .line 115
    aget v0, v5, v8

    .line 116
    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v7, v4, 0xff

    .line 117
    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 118
    and-int/lit16 v0, v0, 0xff

    .line 119
    if-le v7, v1, :cond_1

    move v1, v7

    .line 121
    :cond_1
    if-le v4, v1, :cond_2

    move v1, v4

    .line 123
    :cond_2
    if-le v0, v1, :cond_9

    .line 114
    :goto_3
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v1, v0

    goto :goto_2

    .line 111
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    move-object v0, v5

    goto :goto_1

    :cond_4
    move v1, v6

    .line 128
    :goto_4
    if-ge v1, p3, :cond_7

    .line 130
    invoke-direct {p0, v2, v1, p2, v0}, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->a([III[I)[I

    move-result-object v3

    move v0, v6

    .line 131
    :goto_5
    if-ge v0, p2, :cond_6

    .line 132
    aget v5, v3, v0

    .line 133
    shr-int/lit8 v7, v5, 0x10

    and-int/lit16 v7, v7, 0xff

    .line 134
    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 135
    and-int/lit16 v9, v5, 0xff

    .line 136
    if-eqz v4, :cond_5

    .line 137
    mul-int/lit16 v7, v7, 0xff

    div-int/2addr v7, v4

    .line 138
    mul-int/lit16 v8, v8, 0xff

    div-int/2addr v8, v4

    .line 139
    mul-int/lit16 v9, v9, 0xff

    div-int/2addr v9, v4

    .line 140
    const/high16 v10, -0x1000000

    and-int/2addr v5, v10

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    shl-int/lit8 v7, v8, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v9

    aput v5, v3, v0

    .line 131
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 144
    :cond_6
    invoke-direct {p0, v2, v1, p2, v3}, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->b([III[I)V

    .line 128
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_4

    .line 148
    :cond_7
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->d:Z

    if-eqz v0, :cond_8

    .line 149
    new-instance v0, Lcom/jabistudio/androidjhlabs/filter/InvertFilter;

    invoke-direct {v0}, Lcom/jabistudio/androidjhlabs/filter/InvertFilter;-><init>()V

    invoke-virtual {v0, v2, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/InvertFilter;->filter([III)[I

    move-result-object v0

    .line 151
    :goto_6
    return-object v0

    :cond_8
    move-object v0, v2

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_3
.end method

.method public getInvert()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->d:Z

    return v0
.end method

.method public getNormalize()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->c:Z

    return v0
.end method

.method public getRadius1()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->a:F

    return v0
.end method

.method public getRadius2()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->b:F

    return v0
.end method

.method public setInvert(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->d:Z

    .line 86
    return-void
.end method

.method public setNormalize(Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->c:Z

    .line 78
    return-void
.end method

.method public setRadius1(F)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->a:F

    .line 45
    return-void
.end method

.method public setRadius2(F)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/DoGFilter;->b:F

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-string v0, "Edges/Difference of Gaussians..."

    return-object v0
.end method
