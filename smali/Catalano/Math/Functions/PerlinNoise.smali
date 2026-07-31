.class public LCatalano/Math/Functions/PerlinNoise;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide v0, p0, LCatalano/Math/Functions/PerlinNoise;->a:D

    .line 33
    iput-wide v0, p0, LCatalano/Math/Functions/PerlinNoise;->b:D

    .line 34
    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    iput-wide v0, p0, LCatalano/Math/Functions/PerlinNoise;->c:D

    .line 35
    const/4 v0, 0x4

    iput v0, p0, LCatalano/Math/Functions/PerlinNoise;->d:I

    .line 40
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide v0, p0, LCatalano/Math/Functions/PerlinNoise;->a:D

    .line 33
    iput-wide v0, p0, LCatalano/Math/Functions/PerlinNoise;->b:D

    .line 34
    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    iput-wide v0, p0, LCatalano/Math/Functions/PerlinNoise;->c:D

    .line 35
    const/4 v0, 0x4

    iput v0, p0, LCatalano/Math/Functions/PerlinNoise;->d:I

    .line 48
    iput p1, p0, LCatalano/Math/Functions/PerlinNoise;->d:I

    .line 49
    iput-wide p2, p0, LCatalano/Math/Functions/PerlinNoise;->c:D

    .line 50
    return-void
.end method

.method public constructor <init>(IDDD)V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide v0, p0, LCatalano/Math/Functions/PerlinNoise;->a:D

    .line 33
    iput-wide v0, p0, LCatalano/Math/Functions/PerlinNoise;->b:D

    .line 34
    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    iput-wide v0, p0, LCatalano/Math/Functions/PerlinNoise;->c:D

    .line 35
    const/4 v0, 0x4

    iput v0, p0, LCatalano/Math/Functions/PerlinNoise;->d:I

    .line 60
    iput p1, p0, LCatalano/Math/Functions/PerlinNoise;->d:I

    .line 61
    iput-wide p2, p0, LCatalano/Math/Functions/PerlinNoise;->c:D

    .line 62
    iput-wide p4, p0, LCatalano/Math/Functions/PerlinNoise;->a:D

    .line 63
    iput-wide p6, p0, LCatalano/Math/Functions/PerlinNoise;->b:D

    .line 64
    return-void
.end method

.method private a(D)D
    .locals 9

    .prologue
    .line 203
    double-to-int v0, p1

    .line 204
    int-to-double v2, v0

    sub-double v6, p1, v2

    .line 206
    invoke-direct {p0, v0}, LCatalano/Math/Functions/PerlinNoise;->a(I)D

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, LCatalano/Math/Functions/PerlinNoise;->a(I)D

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, LCatalano/Math/Functions/PerlinNoise;->a(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private a(DD)D
    .locals 19

    .prologue
    .line 216
    move-wide/from16 v0, p1

    double-to-int v2, v0

    .line 217
    move-wide/from16 v0, p3

    double-to-int v3, v0

    .line 218
    int-to-double v4, v2

    sub-double v8, p1, v4

    .line 219
    int-to-double v4, v3

    sub-double v10, p3, v4

    .line 222
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, LCatalano/Math/Functions/PerlinNoise;->a(II)D

    move-result-wide v4

    .line 223
    add-int/lit8 v6, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3}, LCatalano/Math/Functions/PerlinNoise;->a(II)D

    move-result-wide v6

    .line 224
    add-int/lit8 v12, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, LCatalano/Math/Functions/PerlinNoise;->a(II)D

    move-result-wide v12

    .line 225
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, LCatalano/Math/Functions/PerlinNoise;->a(II)D

    move-result-wide v14

    move-object/from16 v3, p0

    .line 228
    invoke-direct/range {v3 .. v9}, LCatalano/Math/Functions/PerlinNoise;->a(DDD)D

    move-result-wide v16

    move-object/from16 v3, p0

    move-wide v4, v12

    move-wide v6, v14

    .line 229
    invoke-direct/range {v3 .. v9}, LCatalano/Math/Functions/PerlinNoise;->a(DDD)D

    move-result-wide v6

    move-object/from16 v3, p0

    move-wide/from16 v4, v16

    move-wide v8, v10

    .line 231
    invoke-direct/range {v3 .. v9}, LCatalano/Math/Functions/PerlinNoise;->a(DDD)D

    move-result-wide v2

    return-wide v2
.end method

.method private a(DDD)D
    .locals 7

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 242
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    .line 244
    sub-double v2, v4, v0

    mul-double/2addr v2, p1

    mul-double/2addr v0, p3

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private a(I)D
    .locals 6

    .prologue
    .line 179
    shl-int/lit8 v0, p1, 0xd

    xor-int/2addr v0, p1

    .line 181
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-int v1, v0, v0

    mul-int/lit16 v1, v1, 0x3d73

    const v4, 0xc0ae5

    add-int/2addr v1, v4

    mul-int/2addr v0, v1

    const v1, 0x5208dd0d

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v4

    sub-double v0, v2, v0

    return-wide v0
.end method

.method private a(II)D
    .locals 6

    .prologue
    .line 191
    mul-int/lit8 v0, p2, 0x39

    add-int/2addr v0, p1

    .line 192
    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    .line 194
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-int v1, v0, v0

    mul-int/lit16 v1, v1, 0x3d73

    const v4, 0xc0ae5

    add-int/2addr v1, v4

    mul-int/2addr v0, v1

    const v1, 0x5208dd0d

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v4

    sub-double v0, v2, v0

    return-wide v0
.end method


# virtual methods
.method public Function1D(D)D
    .locals 11

    .prologue
    .line 136
    iget-wide v6, p0, LCatalano/Math/Functions/PerlinNoise;->a:D

    .line 137
    iget-wide v4, p0, LCatalano/Math/Functions/PerlinNoise;->b:D

    .line 138
    const-wide/16 v2, 0x0

    .line 141
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LCatalano/Math/Functions/PerlinNoise;->d:I

    if-ge v0, v1, :cond_0

    .line 143
    mul-double v8, p1, v6

    invoke-direct {p0, v8, v9}, LCatalano/Math/Functions/PerlinNoise;->a(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    add-double/2addr v2, v8

    .line 145
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    .line 146
    iget-wide v8, p0, LCatalano/Math/Functions/PerlinNoise;->c:D

    mul-double/2addr v4, v8

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-wide v2
.end method

.method public Function2D(DD)D
    .locals 13

    .prologue
    .line 158
    iget-wide v6, p0, LCatalano/Math/Functions/PerlinNoise;->a:D

    .line 159
    iget-wide v4, p0, LCatalano/Math/Functions/PerlinNoise;->b:D

    .line 160
    const-wide/16 v2, 0x0

    .line 163
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LCatalano/Math/Functions/PerlinNoise;->d:I

    if-ge v0, v1, :cond_0

    .line 165
    mul-double v8, p1, v6

    mul-double v10, p3, v6

    invoke-direct {p0, v8, v9, v10, v11}, LCatalano/Math/Functions/PerlinNoise;->a(DD)D

    move-result-wide v8

    mul-double/2addr v8, v4

    add-double/2addr v2, v8

    .line 167
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    .line 168
    iget-wide v8, p0, LCatalano/Math/Functions/PerlinNoise;->c:D

    mul-double/2addr v4, v8

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-wide v2
.end method

.method public getInitAmplitude()D
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, LCatalano/Math/Functions/PerlinNoise;->b:D

    return-wide v0
.end method

.method public getInitFrequency()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, LCatalano/Math/Functions/PerlinNoise;->a:D

    return-wide v0
.end method

.method public getOctaves()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, LCatalano/Math/Functions/PerlinNoise;->d:I

    return v0
.end method

.method public getPersistence()D
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, LCatalano/Math/Functions/PerlinNoise;->c:D

    return-wide v0
.end method

.method public setInitAmplitude(D)V
    .locals 1

    .prologue
    .line 79
    iput-wide p1, p0, LCatalano/Math/Functions/PerlinNoise;->b:D

    .line 80
    return-void
.end method

.method public setInitFrequency(D)V
    .locals 1

    .prologue
    .line 95
    iput-wide p1, p0, LCatalano/Math/Functions/PerlinNoise;->a:D

    .line 96
    return-void
.end method

.method public setOctaves(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, LCatalano/Math/Functions/PerlinNoise;->d:I

    .line 112
    return-void
.end method

.method public setPersistence(D)V
    .locals 1

    .prologue
    .line 127
    iput-wide p1, p0, LCatalano/Math/Functions/PerlinNoise;->c:D

    .line 128
    return-void
.end method
