.class public Lcom/jabistudio/androidjhlabs/filter/math/Noise;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jabistudio/androidjhlabs/filter/math/Function1D;
.implements Lcom/jabistudio/androidjhlabs/filter/math/Function2D;
.implements Lcom/jabistudio/androidjhlabs/filter/math/Function3D;


# static fields
.field static a:[I

.field static b:[[F

.field static c:[[F

.field static d:[F

.field static e:Z

.field private static f:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x202

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->f:Ljava/util/Random;

    .line 74
    new-array v0, v2, [I

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    .line 75
    const/4 v0, 0x3

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    .line 76
    const/4 v0, 0x2

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->c:[[F

    .line 77
    new-array v0, v2, [F

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->d:[F

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(F)F
    .locals 3

    .prologue
    .line 81
    mul-float v0, p0, p0

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p0

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private static a()I
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->f:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method static a([F)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    aget v0, p0, v3

    aget v1, p0, v3

    mul-float/2addr v0, v1

    aget v1, p0, v4

    aget v2, p0, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p0, v5

    aget v2, p0, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 243
    aget v1, p0, v3

    div-float/2addr v1, v0

    aput v1, p0, v3

    .line 244
    aget v1, p0, v4

    div-float/2addr v1, v0

    aput v1, p0, v4

    .line 245
    aget v1, p0, v5

    div-float v0, v1, v0

    aput v0, p0, v5

    .line 246
    return-void
.end method

.method private static b()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/high16 v5, 0x43800000    # 256.0f

    const/4 v1, 0x0

    move v2, v1

    .line 255
    :goto_0
    const/16 v0, 0x100

    if-ge v2, v0, :cond_2

    .line 256
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    aput v2, v0, v2

    .line 258
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->d:[F

    invoke-static {}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a()I

    move-result v3

    rem-int/lit16 v3, v3, 0x200

    add-int/lit16 v3, v3, -0x100

    int-to-float v3, v3

    div-float/2addr v3, v5

    aput v3, v0, v2

    move v0, v1

    .line 260
    :goto_1
    if-ge v0, v6, :cond_0

    .line 261
    sget-object v3, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->c:[[F

    aget-object v3, v3, v2

    invoke-static {}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a()I

    move-result v4

    rem-int/lit16 v4, v4, 0x200

    add-int/lit16 v4, v4, -0x100

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v3, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    :cond_0
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->c:[[F

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b([F)V

    move v0, v1

    .line 264
    :goto_2
    if-ge v0, v7, :cond_1

    .line 265
    sget-object v3, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    aget-object v3, v3, v2

    invoke-static {}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a()I

    move-result v4

    rem-int/lit16 v4, v4, 0x200

    add-int/lit16 v4, v4, -0x100

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v3, v0

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 266
    :cond_1
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a([F)V

    .line 255
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 269
    :cond_2
    const/16 v0, 0xff

    :goto_3
    if-ltz v0, :cond_3

    .line 270
    sget-object v2, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    aget v2, v2, v0

    .line 271
    sget-object v3, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    sget-object v4, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    invoke-static {}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a()I

    move-result v5

    rem-int/lit16 v5, v5, 0x100

    aget v4, v4, v5

    aput v4, v3, v0

    .line 272
    sget-object v3, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    aput v2, v3, v5

    .line 269
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    move v2, v1

    .line 275
    :goto_4
    const/16 v0, 0x102

    if-ge v2, v0, :cond_6

    .line 276
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    add-int/lit16 v3, v2, 0x100

    sget-object v4, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    aget v4, v4, v2

    aput v4, v0, v3

    .line 277
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->d:[F

    add-int/lit16 v3, v2, 0x100

    sget-object v4, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->d:[F

    aget v4, v4, v2

    aput v4, v0, v3

    move v0, v1

    .line 278
    :goto_5
    if-ge v0, v6, :cond_4

    .line 279
    sget-object v3, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->c:[[F

    add-int/lit16 v4, v2, 0x100

    aget-object v3, v3, v4

    sget-object v4, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->c:[[F

    aget-object v4, v4, v2

    aget v4, v4, v0

    aput v4, v3, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    move v0, v1

    .line 280
    :goto_6
    if-ge v0, v7, :cond_5

    .line 281
    sget-object v3, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    add-int/lit16 v4, v2, 0x100

    aget-object v3, v3, v4

    sget-object v4, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    aget-object v4, v4, v2

    aget v4, v4, v0

    aput v4, v3, v0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 275
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 283
    :cond_6
    return-void
.end method

.method private static b([F)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 236
    aget v0, p0, v3

    aget v1, p0, v3

    mul-float/2addr v0, v1

    aget v1, p0, v4

    aget v2, p0, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 237
    aget v1, p0, v3

    div-float/2addr v1, v0

    aput v1, p0, v3

    .line 238
    aget v1, p0, v4

    div-float v0, v1, v0

    aput v0, p0, v4

    .line 239
    return-void
.end method

.method public static findRange(Lcom/jabistudio/androidjhlabs/filter/math/Function1D;[F)[F
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 291
    if-nez p1, :cond_0

    .line 292
    const/4 v0, 0x2

    new-array p1, v0, [F

    .line 295
    :cond_0
    const/high16 v0, -0x3d380000    # -100.0f

    move v2, v1

    :goto_0
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 296
    invoke-interface {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/math/Function1D;->evaluate(F)F

    move-result v3

    .line 297
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 298
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 295
    float-to-double v4, v0

    const-wide v6, 0x3ff4579d0a67620fL    # 1.27139

    add-double/2addr v4, v6

    double-to-float v0, v4

    goto :goto_0

    .line 300
    :cond_1
    const/4 v0, 0x0

    aput v2, p1, v0

    .line 301
    const/4 v0, 0x1

    aput v1, p1, v0

    .line 302
    return-object p1
.end method

.method public static findRange(Lcom/jabistudio/androidjhlabs/filter/math/Function2D;[F)[F
    .locals 11

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v0, 0x0

    const/high16 v1, -0x3d380000    # -100.0f

    .line 311
    if-nez p1, :cond_0

    .line 312
    const/4 v2, 0x2

    new-array p1, v2, [F

    :cond_0
    move v4, v1

    move v2, v0

    .line 315
    :goto_0
    cmpg-float v3, v4, v10

    if-gez v3, :cond_2

    move v3, v2

    move v2, v0

    move v0, v1

    .line 316
    :goto_1
    cmpg-float v5, v0, v10

    if-gez v5, :cond_1

    .line 317
    invoke-interface {p0, v0, v4}, Lcom/jabistudio/androidjhlabs/filter/math/Function2D;->evaluate(FF)F

    move-result v5

    .line 318
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 319
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 316
    float-to-double v6, v0

    const-wide v8, 0x40258af3a14cec42L    # 10.77139

    add-double/2addr v6, v8

    double-to-float v0, v6

    goto :goto_1

    .line 315
    :cond_1
    float-to-double v4, v4

    const-wide v6, 0x4024b415f45e0b4eL    # 10.35173

    add-double/2addr v4, v6

    double-to-float v0, v4

    move v4, v0

    move v0, v2

    move v2, v3

    goto :goto_0

    .line 322
    :cond_2
    const/4 v1, 0x0

    aput v2, p1, v1

    .line 323
    const/4 v1, 0x1

    aput v0, p1, v1

    .line 324
    return-object p1
.end method

.method public static lerp(FFF)F
    .locals 1

    .prologue
    .line 232
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static noise1(F)F
    .locals 7

    .prologue
    .line 93
    sget-boolean v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->e:Z

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->e:Z

    .line 95
    invoke-static {}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b()V

    .line 98
    :cond_0
    const/high16 v0, 0x45800000    # 4096.0f

    add-float/2addr v0, p0

    .line 99
    float-to-int v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 100
    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 101
    float-to-int v3, v0

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 102
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v0, v3

    .line 104
    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a(F)F

    move-result v4

    .line 106
    sget-object v5, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->d:[F

    sget-object v6, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    aget v1, v6, v1

    aget v1, v5, v1

    mul-float/2addr v0, v1

    .line 107
    sget-object v1, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->d:[F

    sget-object v5, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    aget v2, v5, v2

    aget v1, v1, v2

    mul-float/2addr v1, v3

    .line 108
    const v2, 0x40133333    # 2.3f

    invoke-static {v4, v0, v1}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->lerp(FFF)F

    move-result v0

    mul-float/2addr v0, v2

    return v0
.end method

.method public static noise2(FF)F
    .locals 13

    .prologue
    const/high16 v4, 0x45800000    # 4096.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 122
    sget-boolean v0, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->e:Z

    if-eqz v0, :cond_0

    .line 123
    sput-boolean v11, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->e:Z

    .line 124
    invoke-static {}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b()V

    .line 127
    :cond_0
    add-float v0, p0, v4

    .line 128
    float-to-int v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 129
    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 130
    float-to-int v3, v0

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 131
    sub-float v3, v0, v8

    .line 133
    add-float/2addr v4, p1

    .line 134
    float-to-int v5, v4

    and-int/lit16 v5, v5, 0xff

    .line 135
    add-int/lit8 v6, v5, 0x1

    and-int/lit16 v6, v6, 0xff

    .line 136
    float-to-int v7, v4

    int-to-float v7, v7

    sub-float/2addr v4, v7

    .line 137
    sub-float v7, v4, v8

    .line 139
    sget-object v8, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    aget v1, v8, v1

    .line 140
    sget-object v8, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    aget v2, v8, v2

    .line 142
    sget-object v8, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    add-int v9, v1, v5

    aget v8, v8, v9

    .line 143
    sget-object v9, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    add-int/2addr v5, v2

    aget v5, v9, v5

    .line 144
    sget-object v9, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    add-int/2addr v1, v6

    aget v1, v9, v1

    .line 145
    sget-object v9, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    add-int/2addr v2, v6

    aget v2, v9, v2

    .line 147
    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a(F)F

    move-result v6

    .line 148
    invoke-static {v4}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a(F)F

    move-result v9

    .line 150
    sget-object v10, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->c:[[F

    aget-object v8, v10, v8

    aget v10, v8, v11

    mul-float/2addr v10, v0

    aget v8, v8, v12

    mul-float/2addr v8, v4

    add-float/2addr v8, v10

    .line 151
    sget-object v10, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->c:[[F

    aget-object v5, v10, v5

    aget v10, v5, v11

    mul-float/2addr v10, v3

    aget v5, v5, v12

    mul-float/2addr v4, v5

    add-float/2addr v4, v10

    .line 152
    invoke-static {v6, v8, v4}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->lerp(FFF)F

    move-result v4

    .line 154
    sget-object v5, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->c:[[F

    aget-object v1, v5, v1

    aget v5, v1, v11

    mul-float/2addr v0, v5

    aget v1, v1, v12

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    .line 155
    sget-object v1, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->c:[[F

    aget-object v1, v1, v2

    aget v2, v1, v11

    mul-float/2addr v2, v3

    aget v1, v1, v12

    mul-float/2addr v1, v7

    add-float/2addr v1, v2

    .line 156
    invoke-static {v6, v0, v1}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->lerp(FFF)F

    move-result v0

    .line 158
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v9, v4, v0}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->lerp(FFF)F

    move-result v0

    mul-float/2addr v0, v1

    return v0
.end method

.method public static noise3(FFF)F
    .locals 21

    .prologue
    .line 173
    sget-boolean v2, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->e:Z

    if-eqz v2, :cond_0

    .line 174
    const/4 v2, 0x0

    sput-boolean v2, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->e:Z

    .line 175
    invoke-static {}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b()V

    .line 178
    :cond_0
    const/high16 v2, 0x45800000    # 4096.0f

    add-float v2, v2, p0

    .line 179
    float-to-int v3, v2

    and-int/lit16 v3, v3, 0xff

    .line 180
    add-int/lit8 v4, v3, 0x1

    and-int/lit16 v4, v4, 0xff

    .line 181
    float-to-int v5, v2

    int-to-float v5, v5

    sub-float/2addr v2, v5

    .line 182
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v2, v5

    .line 184
    const/high16 v6, 0x45800000    # 4096.0f

    add-float v6, v6, p1

    .line 185
    float-to-int v7, v6

    and-int/lit16 v7, v7, 0xff

    .line 186
    add-int/lit8 v8, v7, 0x1

    and-int/lit16 v8, v8, 0xff

    .line 187
    float-to-int v9, v6

    int-to-float v9, v9

    sub-float/2addr v6, v9

    .line 188
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v6, v9

    .line 190
    const/high16 v10, 0x45800000    # 4096.0f

    add-float v10, v10, p2

    .line 191
    float-to-int v11, v10

    and-int/lit16 v11, v11, 0xff

    .line 192
    add-int/lit8 v12, v11, 0x1

    and-int/lit16 v12, v12, 0xff

    .line 193
    float-to-int v13, v10

    int-to-float v13, v13

    sub-float/2addr v10, v13

    .line 194
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v13, v10, v13

    .line 196
    sget-object v14, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    aget v3, v14, v3

    .line 197
    sget-object v14, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    aget v4, v14, v4

    .line 199
    sget-object v14, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    add-int v15, v3, v7

    aget v14, v14, v15

    .line 200
    sget-object v15, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    add-int/2addr v7, v4

    aget v7, v15, v7

    .line 201
    sget-object v15, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    add-int/2addr v3, v8

    aget v3, v15, v3

    .line 202
    sget-object v15, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a:[I

    add-int/2addr v4, v8

    aget v4, v15, v4

    .line 204
    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a(F)F

    move-result v8

    .line 205
    invoke-static {v6}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a(F)F

    move-result v15

    .line 206
    invoke-static {v10}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->a(F)F

    move-result v16

    .line 208
    sget-object v17, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    add-int v18, v14, v11

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget v18, v17, v18

    mul-float v18, v18, v2

    const/16 v19, 0x1

    aget v19, v17, v19

    mul-float v19, v19, v6

    add-float v18, v18, v19

    const/16 v19, 0x2

    aget v17, v17, v19

    mul-float v17, v17, v10

    add-float v17, v17, v18

    .line 209
    sget-object v18, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    add-int v19, v7, v11

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v19, v18, v19

    mul-float v19, v19, v5

    const/16 v20, 0x1

    aget v20, v18, v20

    mul-float v20, v20, v6

    add-float v19, v19, v20

    const/16 v20, 0x2

    aget v18, v18, v20

    mul-float v18, v18, v10

    add-float v18, v18, v19

    .line 210
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->lerp(FFF)F

    move-result v17

    .line 212
    sget-object v18, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    add-int v19, v3, v11

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v19, v18, v19

    mul-float v19, v19, v2

    const/16 v20, 0x1

    aget v20, v18, v20

    mul-float v20, v20, v9

    add-float v19, v19, v20

    const/16 v20, 0x2

    aget v18, v18, v20

    mul-float v18, v18, v10

    add-float v18, v18, v19

    .line 213
    sget-object v19, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    add-int/2addr v11, v4

    aget-object v11, v19, v11

    const/16 v19, 0x0

    aget v19, v11, v19

    mul-float v19, v19, v5

    const/16 v20, 0x1

    aget v20, v11, v20

    mul-float v20, v20, v9

    add-float v19, v19, v20

    const/16 v20, 0x2

    aget v11, v11, v20

    mul-float/2addr v10, v11

    add-float v10, v10, v19

    .line 214
    move/from16 v0, v18

    invoke-static {v8, v0, v10}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->lerp(FFF)F

    move-result v10

    .line 216
    move/from16 v0, v17

    invoke-static {v15, v0, v10}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->lerp(FFF)F

    move-result v10

    .line 218
    sget-object v11, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    add-int/2addr v14, v12

    aget-object v11, v11, v14

    const/4 v14, 0x0

    aget v14, v11, v14

    mul-float/2addr v14, v2

    const/16 v17, 0x1

    aget v17, v11, v17

    mul-float v17, v17, v6

    add-float v14, v14, v17

    const/16 v17, 0x2

    aget v11, v11, v17

    mul-float/2addr v11, v13

    add-float/2addr v11, v14

    .line 219
    sget-object v14, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    add-int/2addr v7, v12

    aget-object v7, v14, v7

    const/4 v14, 0x0

    aget v14, v7, v14

    mul-float/2addr v14, v5

    const/16 v17, 0x1

    aget v17, v7, v17

    mul-float v6, v6, v17

    add-float/2addr v6, v14

    const/4 v14, 0x2

    aget v7, v7, v14

    mul-float/2addr v7, v13

    add-float/2addr v6, v7

    .line 220
    invoke-static {v8, v11, v6}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->lerp(FFF)F

    move-result v6

    .line 222
    sget-object v7, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    add-int/2addr v3, v12

    aget-object v3, v7, v3

    const/4 v7, 0x0

    aget v7, v3, v7

    mul-float/2addr v2, v7

    const/4 v7, 0x1

    aget v7, v3, v7

    mul-float/2addr v7, v9

    add-float/2addr v2, v7

    const/4 v7, 0x2

    aget v3, v3, v7

    mul-float/2addr v3, v13

    add-float/2addr v2, v3

    .line 223
    sget-object v3, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->b:[[F

    add-int/2addr v4, v12

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v4, v3, v4

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v3, v5

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v3, v3, v5

    mul-float/2addr v3, v13

    add-float/2addr v3, v4

    .line 224
    invoke-static {v8, v2, v3}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->lerp(FFF)F

    move-result v2

    .line 226
    invoke-static {v15, v6, v2}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->lerp(FFF)F

    move-result v2

    .line 228
    const/high16 v3, 0x3fc00000    # 1.5f

    move/from16 v0, v16

    invoke-static {v0, v10, v2}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->lerp(FFF)F

    move-result v2

    mul-float/2addr v2, v3

    return v2
.end method

.method public static turbulence2(FFF)F
    .locals 4

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    cmpg-float v2, v0, p2

    if-gtz v2, :cond_0

    .line 51
    mul-float v2, v0, p0

    mul-float v3, v0, p1

    invoke-static {v2, v3}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise2(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 50
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    goto :goto_0

    .line 52
    :cond_0
    return v1
.end method

.method public static turbulence3(FFFF)F
    .locals 5

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    cmpg-float v2, v0, p3

    if-gtz v2, :cond_0

    .line 66
    mul-float v2, v0, p0

    mul-float v3, v0, p1

    mul-float v4, v0, p2

    invoke-static {v2, v3, v4}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise3(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 65
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    goto :goto_0

    .line 67
    :cond_0
    return v1
.end method


# virtual methods
.method public evaluate(F)F
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise1(F)F

    move-result v0

    return v0
.end method

.method public evaluate(FF)F
    .locals 1

    .prologue
    .line 33
    invoke-static {p1, p2}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise2(FF)F

    move-result v0

    return v0
.end method

.method public evaluate(FFF)F
    .locals 1

    .prologue
    .line 37
    invoke-static {p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise3(FFF)F

    move-result v0

    return v0
.end method
