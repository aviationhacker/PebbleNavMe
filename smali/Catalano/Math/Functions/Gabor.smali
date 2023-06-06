.class public final LCatalano/Math/Functions/Gabor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Math/Functions/Gabor$Config;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Function1D(DDDDDDD)D
    .locals 6

    .prologue
    .line 74
    sub-double v0, p0, p6

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, p8

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, p4

    add-double/2addr v0, p2

    .line 75
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, p12

    sub-double v4, p0, p6

    mul-double/2addr v2, v4

    add-double v2, v2, p10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 76
    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static Function2D(IIDDDDD)LCatalano/Math/ComplexNumber;
    .locals 8

    .prologue
    .line 92
    int-to-double v0, p0

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    int-to-double v2, p1

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 93
    neg-int v2, p0

    int-to-double v2, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    int-to-double v4, p1

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 95
    mul-double v4, v0, v0

    mul-double v6, p10, p10

    mul-double/2addr v6, v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v4, v4, p8

    mul-double v4, v4, p8

    div-double/2addr v2, v4

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 96
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double v6, v0, p2

    mul-double/2addr v4, v6

    add-double/2addr v4, p6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 97
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, p2

    mul-double/2addr v0, v6

    add-double/2addr v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 99
    new-instance v6, LCatalano/Math/ComplexNumber;

    mul-double/2addr v4, v2

    mul-double/2addr v0, v2

    invoke-direct {v6, v4, v5, v0, v1}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    return-object v6
.end method

.method public static ImaginaryFunction2D(IIDDDDD)D
    .locals 8

    .prologue
    .line 139
    int-to-double v0, p0

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    int-to-double v2, p1

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 140
    neg-int v2, p0

    int-to-double v2, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    int-to-double v4, p1

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 142
    mul-double v4, v0, v0

    mul-double v6, p10, p10

    mul-double/2addr v6, v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v4, v4, p8

    mul-double v4, v4, p8

    div-double/2addr v2, v4

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 143
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, p2

    mul-double/2addr v0, v4

    add-double/2addr v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 145
    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static Kernel2D(IDDDDD)[[D
    .locals 21

    .prologue
    .line 159
    .line 160
    div-double v2, p7, p9

    .line 162
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p0

    int-to-double v6, v0

    mul-double v6, v6, p7

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move/from16 v0, p0

    int-to-double v8, v0

    mul-double/2addr v8, v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v15, v4

    .line 163
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p0

    int-to-double v6, v0

    mul-double v6, v6, p7

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move/from16 v0, p0

    int-to-double v8, v0

    mul-double/2addr v2, v8

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v18, v0

    .line 165
    mul-int/lit8 v2, v15, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v18, 0x2

    add-int/lit8 v3, v3, 0x1

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, [[D

    .line 167
    const-wide/16 v4, 0x0

    .line 168
    neg-int v2, v15

    :goto_0
    if-gt v2, v15, :cond_1

    .line 169
    move/from16 v0, v18

    neg-int v3, v0

    move-wide/from16 v16, v4

    :goto_1
    move/from16 v0, v18

    if-gt v3, v0, :cond_0

    .line 170
    add-int v4, v2, v15

    aget-object v19, v14, v4

    add-int v20, v3, v18

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-static/range {v2 .. v13}, LCatalano/Math/Functions/Gabor;->ImaginaryFunction2D(IIDDDDD)D

    move-result-wide v4

    aput-wide v4, v19, v20

    .line 171
    add-int v4, v2, v15

    aget-object v4, v14, v4

    add-int v5, v3, v18

    aget-wide v4, v4, v5

    add-double v4, v4, v16

    .line 169
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v16, v4

    goto :goto_1

    .line 168
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v4, v16

    goto :goto_0

    .line 174
    :cond_1
    neg-int v2, v15

    move v3, v2

    :goto_2
    if-gt v3, v15, :cond_3

    .line 175
    move/from16 v0, v18

    neg-int v2, v0

    :goto_3
    move/from16 v0, v18

    if-gt v2, v0, :cond_2

    .line 176
    add-int v6, v3, v15

    aget-object v6, v14, v6

    add-int v7, v2, v18

    aget-wide v8, v6, v7

    div-double/2addr v8, v4

    aput-wide v8, v6, v7

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 174
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 179
    :cond_3
    return-object v14
.end method

.method public static Kernel2D(IDDDDDLCatalano/Math/Functions/Gabor$Config;)[[D
    .locals 23

    .prologue
    .line 194
    .line 195
    div-double v2, p7, p9

    .line 197
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p0

    int-to-double v6, v0

    mul-double v6, v6, p7

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move/from16 v0, p0

    int-to-double v8, v0

    mul-double/2addr v8, v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v15, v4

    .line 198
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p0

    int-to-double v6, v0

    mul-double v6, v6, p7

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move/from16 v0, p0

    int-to-double v8, v0

    mul-double/2addr v2, v8

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v18, v0

    .line 200
    mul-int/lit8 v2, v15, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v18, 0x2

    add-int/lit8 v3, v3, 0x1

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, [[D

    .line 202
    const-wide/16 v2, 0x0

    .line 204
    sget-object v4, LCatalano/Math/Functions/Gabor$1;->a:[I

    invoke-virtual/range {p11 .. p11}, LCatalano/Math/Functions/Gabor$Config;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 241
    :goto_0
    neg-int v4, v15

    move v5, v4

    :goto_1
    if-gt v5, v15, :cond_8

    .line 242
    move/from16 v0, v18

    neg-int v4, v0

    :goto_2
    move/from16 v0, v18

    if-gt v4, v0, :cond_7

    .line 243
    add-int v6, v5, v15

    aget-object v6, v14, v6

    add-int v7, v4, v18

    aget-wide v8, v6, v7

    div-double/2addr v8, v2

    aput-wide v8, v6, v7

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 206
    :pswitch_0
    neg-int v4, v15

    move/from16 v21, v4

    move-wide v4, v2

    move/from16 v2, v21

    :goto_3
    if-gt v2, v15, :cond_1

    .line 207
    move/from16 v0, v18

    neg-int v3, v0

    move-wide/from16 v16, v4

    :goto_4
    move/from16 v0, v18

    if-gt v3, v0, :cond_0

    .line 208
    add-int v4, v2, v15

    aget-object v19, v14, v4

    add-int v20, v3, v18

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-static/range {v2 .. v13}, LCatalano/Math/Functions/Gabor;->RealFunction2D(IIDDDDD)D

    move-result-wide v4

    aput-wide v4, v19, v20

    .line 209
    add-int v4, v2, v15

    aget-object v4, v14, v4

    add-int v5, v3, v18

    aget-wide v4, v4, v5

    add-double v4, v4, v16

    .line 207
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v16, v4

    goto :goto_4

    .line 206
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v4, v16

    goto :goto_3

    :cond_1
    move-wide v2, v4

    .line 212
    goto :goto_0

    .line 214
    :pswitch_1
    neg-int v4, v15

    move/from16 v21, v4

    move-wide v4, v2

    move/from16 v2, v21

    :goto_5
    if-gt v2, v15, :cond_3

    .line 215
    move/from16 v0, v18

    neg-int v3, v0

    move-wide/from16 v16, v4

    :goto_6
    move/from16 v0, v18

    if-gt v3, v0, :cond_2

    .line 216
    add-int v4, v2, v15

    aget-object v19, v14, v4

    add-int v20, v3, v18

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-static/range {v2 .. v13}, LCatalano/Math/Functions/Gabor;->ImaginaryFunction2D(IIDDDDD)D

    move-result-wide v4

    aput-wide v4, v19, v20

    .line 217
    add-int v4, v2, v15

    aget-object v4, v14, v4

    add-int v5, v3, v18

    aget-wide v4, v4, v5

    add-double v4, v4, v16

    .line 215
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v16, v4

    goto :goto_6

    .line 214
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v4, v16

    goto :goto_5

    :cond_3
    move-wide v2, v4

    .line 220
    goto/16 :goto_0

    .line 222
    :pswitch_2
    neg-int v4, v15

    move/from16 v21, v4

    move-wide v4, v2

    move/from16 v2, v21

    :goto_7
    if-gt v2, v15, :cond_5

    .line 223
    move/from16 v0, v18

    neg-int v3, v0

    move-wide/from16 v16, v4

    :goto_8
    move/from16 v0, v18

    if-gt v3, v0, :cond_4

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    .line 224
    invoke-static/range {v2 .. v13}, LCatalano/Math/Functions/Gabor;->Function2D(IIDDDDD)LCatalano/Math/ComplexNumber;

    move-result-object v4

    .line 225
    add-int v5, v2, v15

    aget-object v5, v14, v5

    add-int v6, v3, v18

    invoke-virtual {v4}, LCatalano/Math/ComplexNumber;->getMagnitude()D

    move-result-wide v8

    aput-wide v8, v5, v6

    .line 226
    add-int v4, v2, v15

    aget-object v4, v14, v4

    add-int v5, v3, v18

    aget-wide v4, v4, v5

    add-double v4, v4, v16

    .line 223
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v16, v4

    goto :goto_8

    .line 222
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v4, v16

    goto :goto_7

    :cond_5
    move-wide v2, v4

    .line 229
    goto/16 :goto_0

    .line 231
    :pswitch_3
    neg-int v4, v15

    move/from16 v21, v4

    move-wide v4, v2

    move/from16 v2, v21

    :goto_9
    if-gt v2, v15, :cond_9

    .line 232
    move/from16 v0, v18

    neg-int v3, v0

    move-wide/from16 v16, v4

    :goto_a
    move/from16 v0, v18

    if-gt v3, v0, :cond_6

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    .line 233
    invoke-static/range {v2 .. v13}, LCatalano/Math/Functions/Gabor;->Function2D(IIDDDDD)LCatalano/Math/ComplexNumber;

    move-result-object v4

    .line 234
    add-int v5, v2, v15

    aget-object v5, v14, v5

    add-int v6, v3, v18

    invoke-virtual {v4}, LCatalano/Math/ComplexNumber;->getSquaredMagnitude()D

    move-result-wide v8

    aput-wide v8, v5, v6

    .line 235
    add-int v4, v2, v15

    aget-object v4, v14, v4

    add-int v5, v3, v18

    aget-wide v4, v4, v5

    add-double v4, v4, v16

    .line 232
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v16, v4

    goto :goto_a

    .line 231
    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v4, v16

    goto :goto_9

    .line 241
    :cond_7
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_1

    .line 246
    :cond_8
    return-object v14

    :cond_9
    move-wide v2, v4

    goto/16 :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static RealFunction2D(IIDDDDD)D
    .locals 8

    .prologue
    .line 116
    int-to-double v0, p0

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    int-to-double v2, p1

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 117
    neg-int v2, p0

    int-to-double v2, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    int-to-double v4, p1

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 119
    mul-double v4, v0, v0

    mul-double v6, p10, p10

    mul-double/2addr v6, v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v4, v4, p8

    mul-double v4, v4, p8

    div-double/2addr v2, v4

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 120
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, p2

    mul-double/2addr v0, v4

    add-double/2addr v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 122
    mul-double/2addr v0, v2

    return-wide v0
.end method
