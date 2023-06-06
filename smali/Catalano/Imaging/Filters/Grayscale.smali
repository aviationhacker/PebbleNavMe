.class public LCatalano/Imaging/Filters/Grayscale;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/Grayscale$Algorithm;
    }
.end annotation


# instance fields
.field a:D

.field b:D

.field c:D

.field private d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide v0, 0x3fcb333333333333L    # 0.2125

    iput-wide v0, p0, LCatalano/Imaging/Filters/Grayscale;->a:D

    const-wide v0, 0x3fe6e48e8a71de6aL    # 0.7154

    iput-wide v0, p0, LCatalano/Imaging/Filters/Grayscale;->b:D

    const-wide v0, 0x3fb27525460aa64cL    # 0.0721

    iput-wide v0, p0, LCatalano/Imaging/Filters/Grayscale;->c:D

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Grayscale;->e:Z

    .line 81
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide v0, 0x3fcb333333333333L    # 0.2125

    iput-wide v0, p0, LCatalano/Imaging/Filters/Grayscale;->a:D

    const-wide v0, 0x3fe6e48e8a71de6aL    # 0.7154

    iput-wide v0, p0, LCatalano/Imaging/Filters/Grayscale;->b:D

    const-wide v0, 0x3fb27525460aa64cL    # 0.0721

    iput-wide v0, p0, LCatalano/Imaging/Filters/Grayscale;->c:D

    .line 75
    iput-boolean v2, p0, LCatalano/Imaging/Filters/Grayscale;->e:Z

    .line 90
    iput-wide p1, p0, LCatalano/Imaging/Filters/Grayscale;->a:D

    .line 91
    iput-wide p3, p0, LCatalano/Imaging/Filters/Grayscale;->b:D

    .line 92
    iput-wide p5, p0, LCatalano/Imaging/Filters/Grayscale;->c:D

    .line 93
    iput-boolean v2, p0, LCatalano/Imaging/Filters/Grayscale;->e:Z

    .line 94
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Filters/Grayscale$Algorithm;)V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide v0, 0x3fcb333333333333L    # 0.2125

    iput-wide v0, p0, LCatalano/Imaging/Filters/Grayscale;->a:D

    const-wide v0, 0x3fe6e48e8a71de6aL    # 0.7154

    iput-wide v0, p0, LCatalano/Imaging/Filters/Grayscale;->b:D

    const-wide v0, 0x3fb27525460aa64cL    # 0.0721

    iput-wide v0, p0, LCatalano/Imaging/Filters/Grayscale;->c:D

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Grayscale;->e:Z

    .line 101
    iput-object p1, p0, LCatalano/Imaging/Filters/Grayscale;->d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Grayscale;->e:Z

    .line 103
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Filters/Grayscale$Algorithm;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/high16 v10, -0x1000000

    .line 202
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v1

    .line 203
    sget-object v2, LCatalano/Imaging/Filters/Grayscale$1;->a:[I

    invoke-virtual {p2}, LCatalano/Imaging/Filters/Grayscale$Algorithm;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 285
    :cond_0
    return-void

    .line 207
    :goto_0
    :pswitch_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 208
    aget v2, v1, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    .line 209
    aget v4, v1, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    .line 210
    aget v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    int-to-double v6, v6

    .line 212
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 213
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 214
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 215
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 216
    add-double/2addr v2, v8

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 218
    shl-int/lit8 v3, v2, 0x10

    or-int/2addr v3, v10

    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :goto_1
    :pswitch_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 225
    aget v2, v1, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    .line 226
    aget v4, v1, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    .line 227
    aget v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    int-to-double v6, v6

    .line 229
    add-double/2addr v2, v4

    add-double/2addr v2, v6

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 231
    shl-int/lit8 v3, v2, 0x10

    or-int/2addr v3, v10

    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :goto_2
    :pswitch_2
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 237
    aget v2, v1, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    .line 238
    aget v4, v1, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    .line 239
    aget v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    int-to-double v6, v6

    .line 241
    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    const-wide v4, 0x3fd51eb851eb851fL    # 0.33

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 243
    shl-int/lit8 v3, v2, 0x10

    or-int/2addr v3, v10

    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 248
    :goto_3
    :pswitch_3
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 249
    aget v2, v1, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    .line 250
    aget v4, v1, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    .line 251
    aget v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    int-to-double v6, v6

    .line 253
    const-wide v8, 0x3fcb333333333333L    # 0.2125

    mul-double/2addr v2, v8

    const-wide v8, 0x3fe6e48e8a71de6aL    # 0.7154

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    const-wide v4, 0x3fb27525460aa64cL    # 0.0721

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 255
    shl-int/lit8 v3, v2, 0x10

    or-int/2addr v3, v10

    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 260
    :goto_4
    :pswitch_4
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 261
    aget v2, v1, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    .line 262
    aget v4, v1, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    .line 263
    aget v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    int-to-double v6, v6

    .line 265
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 266
    int-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 268
    shl-int/lit8 v3, v2, 0x10

    or-int/2addr v3, v10

    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 273
    :goto_5
    :pswitch_5
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 274
    aget v2, v1, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    .line 275
    aget v4, v1, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    .line 276
    aget v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    int-to-double v6, v6

    .line 278
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 279
    int-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 281
    shl-int/lit8 v3, v2, 0x10

    or-int/2addr v3, v10

    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Grayscale;->e:Z

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->indicateGrayscale(Z)V

    .line 181
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v1

    .line 182
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 183
    aget v2, v1, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    .line 184
    aget v4, v1, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    .line 185
    aget v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    int-to-double v6, v6

    .line 187
    iget-wide v8, p0, LCatalano/Imaging/Filters/Grayscale;->a:D

    mul-double/2addr v2, v8

    iget-wide v8, p0, LCatalano/Imaging/Filters/Grayscale;->b:D

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Imaging/Filters/Grayscale;->c:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 188
    const/high16 v3, -0x1000000

    shl-int/lit8 v4, v2, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->indicateGrayscale(Z)V

    .line 194
    iget-object v0, p0, LCatalano/Imaging/Filters/Grayscale;->d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Filters/Grayscale;->a(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Filters/Grayscale$Algorithm;)V

    .line 196
    :cond_1
    return-void
.end method

.method public getBlueCoefficient()D
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, LCatalano/Imaging/Filters/Grayscale;->c:D

    return-wide v0
.end method

.method public getGrayscaleMethod()LCatalano/Imaging/Filters/Grayscale$Algorithm;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, LCatalano/Imaging/Filters/Grayscale;->d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    return-object v0
.end method

.method public getGreenCoefficient()D
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, LCatalano/Imaging/Filters/Grayscale;->b:D

    return-wide v0
.end method

.method public getRedCoefficient()D
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, LCatalano/Imaging/Filters/Grayscale;->a:D

    return-wide v0
.end method

.method public setBlueCoefficient(D)V
    .locals 1

    .prologue
    .line 150
    iput-wide p1, p0, LCatalano/Imaging/Filters/Grayscale;->c:D

    .line 151
    return-void
.end method

.method public setGrayscaleMethod(LCatalano/Imaging/Filters/Grayscale$Algorithm;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, LCatalano/Imaging/Filters/Grayscale;->d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    .line 167
    return-void
.end method

.method public setGreenCoefficient(D)V
    .locals 1

    .prologue
    .line 134
    iput-wide p1, p0, LCatalano/Imaging/Filters/Grayscale;->b:D

    .line 135
    return-void
.end method

.method public setRedCoefficient(D)V
    .locals 1

    .prologue
    .line 118
    iput-wide p1, p0, LCatalano/Imaging/Filters/Grayscale;->a:D

    .line 119
    return-void
.end method
