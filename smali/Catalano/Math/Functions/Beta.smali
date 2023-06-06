.class public final LCatalano/Math/Functions/Beta;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Function(DD)D
    .locals 2

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, LCatalano/Math/Functions/Beta;->Log(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Incbcf(DDD)D
    .locals 44

    .prologue
    .line 181
    const-wide/high16 v32, 0x4330000000000000L    # 4.503599627370496E15

    .line 182
    const-wide/high16 v34, 0x3cb0000000000000L    # 2.220446049250313E-16

    .line 185
    add-double v10, p0, p2

    .line 187
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v4, p0, v0

    .line 188
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 189
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v6, p2, v0

    .line 191
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double v2, p0, v0

    .line 193
    const-wide/16 v20, 0x0

    .line 194
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 195
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    .line 196
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 197
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 198
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 199
    const/4 v0, 0x0

    .line 200
    const-wide/high16 v36, 0x3cb8000000000000L    # 3.3306690738754696E-16

    move-wide/from16 v24, v4

    move-wide/from16 v26, v10

    move-wide/from16 v28, p0

    move-wide/from16 v10, v22

    move-wide/from16 v22, v8

    move-wide v8, v2

    move/from16 v38, v0

    move-wide/from16 v0, v16

    move/from16 v16, v38

    move-wide/from16 v39, v4

    move-wide/from16 v4, v18

    move-wide/from16 v18, v39

    move-wide/from16 v41, v20

    move-wide/from16 v20, v6

    move-wide/from16 v6, v41

    .line 204
    :goto_0
    mul-double v2, p4, v28

    mul-double v2, v2, v26

    neg-double v2, v2

    mul-double v30, p0, v24

    div-double v30, v2, v30

    .line 205
    mul-double v2, v6, v30

    add-double/2addr v2, v10

    .line 206
    mul-double v0, v0, v30

    add-double/2addr v0, v4

    .line 212
    mul-double v6, p4, v22

    mul-double v6, v6, v20

    mul-double v30, v18, v8

    div-double v6, v6, v30

    .line 213
    mul-double/2addr v10, v6

    add-double/2addr v10, v2

    .line 214
    mul-double/2addr v4, v6

    add-double/2addr v4, v0

    .line 220
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_0

    div-double v14, v10, v4

    .line 221
    :cond_0
    const-wide/16 v6, 0x0

    cmpl-double v6, v14, v6

    if-eqz v6, :cond_1

    .line 223
    sub-double v6, v12, v14

    div-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-wide v12, v14

    .line 229
    :goto_1
    cmpg-double v6, v6, v36

    if-gez v6, :cond_2

    move-wide v0, v12

    .line 256
    :goto_2
    return-wide v0

    .line 227
    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .line 231
    :cond_2
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v30, v28, v6

    .line 232
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v28, v26, v6

    .line 233
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double p0, p0, v6

    .line 234
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double v26, v24, v6

    .line 235
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v24, v22, v6

    .line 236
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v22, v20, v6

    .line 237
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double v20, v18, v6

    .line 238
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double v18, v8, v6

    .line 240
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    cmpl-double v6, v6, v32

    if-lez v6, :cond_6

    .line 242
    mul-double v6, v2, v34

    .line 243
    mul-double v8, v10, v34

    .line 244
    mul-double v0, v0, v34

    .line 245
    mul-double v2, v4, v34

    .line 247
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v34

    if-ltz v4, :cond_3

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v34

    if-gez v4, :cond_4

    .line 249
    :cond_3
    mul-double v6, v6, v32

    .line 250
    mul-double v8, v8, v32

    .line 251
    mul-double v0, v0, v32

    .line 252
    mul-double v2, v2, v32

    .line 254
    :cond_4
    add-int/lit8 v4, v16, 0x1

    const/16 v5, 0x12c

    if-lt v4, v5, :cond_5

    move-wide v0, v12

    .line 256
    goto :goto_2

    :cond_5
    move/from16 v16, v4

    move-wide v10, v8

    move-wide v4, v2

    move-wide/from16 v8, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v22

    move-wide/from16 v22, v24

    move-wide/from16 v24, v26

    move-wide/from16 v26, v28

    move-wide/from16 v28, v30

    goto/16 :goto_0

    :cond_6
    move-wide v6, v2

    move-wide v8, v10

    move-wide v2, v4

    goto :goto_3
.end method

.method public static Incbd(DDD)D
    .locals 42

    .prologue
    .line 271
    const-wide/high16 v32, 0x4330000000000000L    # 4.503599627370496E15

    .line 272
    const-wide/high16 v34, 0x3cb0000000000000L    # 2.220446049250313E-16

    .line 275
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v16, p2, v0

    .line 277
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v10, p0, v0

    .line 278
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 279
    add-double v6, p0, p2

    .line 280
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v4, p0, v0

    .line 281
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double v2, p0, v0

    .line 283
    const-wide/16 v22, 0x0

    .line 284
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 285
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    .line 286
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 287
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v0, v0, p4

    div-double v36, p4, v0

    .line 288
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 289
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 290
    const/4 v0, 0x0

    .line 291
    const-wide/high16 v38, 0x3cb8000000000000L    # 3.3306690738754696E-16

    move-wide/from16 v26, v16

    move-wide/from16 v28, p0

    move/from16 v16, v0

    move-wide/from16 v0, v18

    move-wide/from16 v18, v4

    move-wide/from16 v4, v20

    move-wide/from16 v20, v6

    move-wide/from16 v6, v22

    move-wide/from16 v22, v8

    move-wide v8, v2

    move-wide/from16 v40, v10

    move-wide/from16 v10, v24

    move-wide/from16 v24, v40

    .line 294
    :goto_0
    mul-double v2, v36, v28

    mul-double v2, v2, v26

    neg-double v2, v2

    mul-double v30, p0, v24

    div-double v30, v2, v30

    .line 295
    mul-double v2, v6, v30

    add-double/2addr v2, v10

    .line 296
    mul-double v0, v0, v30

    add-double/2addr v0, v4

    .line 302
    mul-double v6, v36, v22

    mul-double v6, v6, v20

    mul-double v30, v18, v8

    div-double v6, v6, v30

    .line 303
    mul-double/2addr v10, v6

    add-double/2addr v10, v2

    .line 304
    mul-double/2addr v4, v6

    add-double/2addr v4, v0

    .line 310
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_0

    div-double v14, v10, v4

    .line 311
    :cond_0
    const-wide/16 v6, 0x0

    cmpl-double v6, v14, v6

    if-eqz v6, :cond_1

    .line 313
    sub-double v6, v12, v14

    div-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-wide v12, v14

    .line 319
    :goto_1
    cmpg-double v6, v6, v38

    if-gez v6, :cond_2

    move-wide v0, v12

    .line 346
    :goto_2
    return-wide v0

    .line 317
    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .line 321
    :cond_2
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v30, v28, v6

    .line 322
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v28, v26, v6

    .line 323
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double p0, p0, v6

    .line 324
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double v26, v24, v6

    .line 325
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v24, v22, v6

    .line 326
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v22, v20, v6

    .line 327
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double v20, v18, v6

    .line 328
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double v18, v8, v6

    .line 330
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    cmpl-double v6, v6, v32

    if-lez v6, :cond_6

    .line 332
    mul-double v6, v2, v34

    .line 333
    mul-double v8, v10, v34

    .line 334
    mul-double v0, v0, v34

    .line 335
    mul-double v2, v4, v34

    .line 337
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v34

    if-ltz v4, :cond_3

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v34

    if-gez v4, :cond_4

    .line 339
    :cond_3
    mul-double v6, v6, v32

    .line 340
    mul-double v8, v8, v32

    .line 341
    mul-double v0, v0, v32

    .line 342
    mul-double v2, v2, v32

    .line 344
    :cond_4
    add-int/lit8 v4, v16, 0x1

    const/16 v5, 0x12c

    if-lt v4, v5, :cond_5

    move-wide v0, v12

    .line 346
    goto :goto_2

    :cond_5
    move/from16 v16, v4

    move-wide v10, v8

    move-wide v4, v2

    move-wide/from16 v8, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v22

    move-wide/from16 v22, v24

    move-wide/from16 v24, v26

    move-wide/from16 v26, v28

    move-wide/from16 v28, v30

    goto/16 :goto_0

    :cond_6
    move-wide v6, v2

    move-wide v8, v10

    move-wide v2, v4

    goto :goto_3
.end method

.method public static Incomplete(DDD)D
    .locals 20

    .prologue
    .line 71
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gtz v2, :cond_0

    .line 73
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, " \'a\' Lower limit must be greater than zero."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    move-exception v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v2, p2, v2

    if-gtz v2, :cond_1

    .line 80
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, " \'b\' Upper limit must be greater than zero."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :catch_1
    move-exception v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v2, p4, v2

    if-lez v2, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p4, v2

    if-ltz v2, :cond_6

    .line 88
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, p4, v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    .line 166
    :cond_3
    :goto_0
    return-wide v2

    .line 89
    :cond_4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p4, v2

    if-nez v2, :cond_5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 91
    :cond_5
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, " \'x\' Value must be between 0 and 1."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    :catch_2
    move-exception v2

    .line 93
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    :cond_6
    const/4 v2, 0x0

    .line 98
    mul-double v4, p2, p4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_7

    const-wide v4, 0x3fee666666666666L    # 0.95

    cmpg-double v3, p4, v4

    if-gtz v3, :cond_7

    .line 100
    invoke-static/range {p0 .. p5}, LCatalano/Math/Functions/Beta;->PowerSeries(DDD)D

    move-result-wide v2

    goto :goto_0

    .line 104
    :cond_7
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, p4

    .line 106
    add-double v6, p0, p2

    div-double v6, p0, v6

    cmpl-double v3, p4, v6

    if-lez v3, :cond_8

    .line 108
    const/4 v2, 0x1

    move v10, v2

    move-wide v6, v4

    move-wide/from16 v4, p0

    move-wide/from16 v2, p2

    .line 122
    :goto_1
    if-eqz v10, :cond_a

    mul-double v8, v4, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v8, v12

    if-gtz v8, :cond_a

    const-wide v8, 0x3fee666666666666L    # 0.95

    cmpg-double v8, v6, v8

    if-gtz v8, :cond_a

    .line 124
    invoke-static/range {v2 .. v7}, LCatalano/Math/Functions/Beta;->PowerSeries(DDD)D

    move-result-wide v2

    .line 125
    const-wide/high16 v4, 0x3ca0000000000000L

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_9

    const-wide v2, 0x3fefffffffffffffL    # 0.9999999999999999

    goto :goto_0

    :cond_8
    move v10, v2

    move-wide/from16 v6, p4

    move-wide/from16 p4, v4

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    .line 119
    goto :goto_1

    .line 126
    :cond_9
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    goto :goto_0

    .line 130
    :cond_a
    add-double v8, v2, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    sub-double/2addr v8, v12

    mul-double/2addr v8, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v2, v12

    sub-double/2addr v8, v12

    .line 131
    const-wide/16 v12, 0x0

    cmpg-double v8, v8, v12

    if-gez v8, :cond_b

    .line 132
    invoke-static/range {v2 .. v7}, LCatalano/Math/Functions/Beta;->Incbcf(DDD)D

    move-result-wide v8

    .line 137
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    mul-double/2addr v12, v2

    .line 138
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    mul-double/2addr v14, v4

    .line 139
    add-double v16, v2, v4

    const-wide v18, 0x406573fae561f647L    # 171.6243769563027

    cmpg-double v11, v16, v18

    if-gez v11, :cond_d

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x40862e42fefa39efL    # 709.782712893384

    cmpg-double v11, v16, v18

    if-gez v11, :cond_d

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x40862e42fefa39efL    # 709.782712893384

    cmpg-double v11, v16, v18

    if-gez v11, :cond_d

    .line 141
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 142
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v12

    .line 143
    div-double/2addr v6, v2

    .line 144
    mul-double/2addr v6, v8

    .line 145
    add-double v8, v2, v4

    invoke-static {v8, v9}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v8

    invoke-static {v2, v3}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v2

    invoke-static {v4, v5}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double v2, v8, v2

    mul-double/2addr v2, v6

    .line 146
    if-eqz v10, :cond_3

    .line 148
    const-wide/high16 v4, 0x3ca0000000000000L

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_c

    const-wide v2, 0x3fefffffffffffffL    # 0.9999999999999999

    goto/16 :goto_0

    .line 134
    :cond_b
    invoke-static/range {v2 .. v7}, LCatalano/Math/Functions/Beta;->Incbd(DDD)D

    move-result-wide v8

    div-double v8, v8, p4

    goto :goto_2

    .line 149
    :cond_c
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    goto/16 :goto_0

    .line 154
    :cond_d
    add-double v6, v2, v4

    invoke-static {v6, v7}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v6

    add-double/2addr v6, v14

    invoke-static {v2, v3}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v14

    sub-double/2addr v6, v14

    invoke-static {v4, v5}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v4

    sub-double v4, v6, v4

    add-double/2addr v4, v12

    .line 155
    div-double v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    .line 156
    const-wide v4, -0x3f78b6ef2ad2cfaeL    # -745.1332191019412

    cmpg-double v4, v2, v4

    if-gez v4, :cond_e

    .line 157
    const-wide/16 v2, 0x0

    .line 161
    :goto_3
    if-eqz v10, :cond_3

    .line 163
    const-wide/high16 v4, 0x3ca0000000000000L

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_f

    const-wide v2, 0x3fefffffffffffffL    # 0.9999999999999999

    goto/16 :goto_0

    .line 159
    :cond_e
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    goto :goto_3

    .line 164
    :cond_f
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    goto/16 :goto_0
.end method

.method public static Log(DD)D
    .locals 4

    .prologue
    .line 57
    invoke-static {p0, p1}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v0

    invoke-static {p2, p3}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    add-double v2, p0, p2

    invoke-static {v2, v3}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static PowerSeries(DDD)D
    .locals 20

    .prologue
    .line 359
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v14, v4, p0

    .line 360
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, p2

    mul-double v6, v4, p4

    .line 361
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v4, v4, p0

    div-double v8, v6, v4

    .line 364
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 365
    const-wide/16 v10, 0x0

    .line 366
    const-wide/high16 v12, 0x3ca0000000000000L

    mul-double v16, v12, v14

    move-wide v12, v10

    move-wide v10, v6

    move-wide v6, v8

    .line 367
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v6, v6, v16

    if-lez v6, :cond_0

    .line 369
    sub-double v6, v4, p2

    mul-double v6, v6, p4

    div-double/2addr v6, v4

    .line 370
    mul-double/2addr v10, v6

    .line 371
    add-double v6, p0, v4

    div-double v6, v10, v6

    .line 372
    add-double/2addr v12, v6

    .line 373
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v4, v4, v18

    goto :goto_0

    .line 375
    :cond_0
    add-double v4, v12, v8

    .line 376
    add-double/2addr v4, v14

    .line 378
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double v6, v6, p0

    .line 379
    add-double v8, p0, p2

    const-wide v10, 0x406573fae561f647L    # 171.6243769563027

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x40862e42fefa39efL    # 709.782712893384

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 381
    add-double v6, p0, p2

    invoke-static {v6, v7}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v6

    invoke-static/range {p0 .. p1}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v8

    invoke-static/range {p2 .. p3}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    .line 382
    mul-double/2addr v4, v6

    move-wide/from16 v0, p4

    move-wide/from16 v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 390
    :goto_1
    return-wide v4

    .line 386
    :cond_1
    add-double v8, p0, p2

    invoke-static {v8, v9}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v8

    invoke-static/range {p0 .. p1}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static/range {p2 .. p3}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    add-double/2addr v4, v6

    .line 387
    const-wide v6, -0x3f78b6ef2ad2cfaeL    # -745.1332191019412

    cmpg-double v6, v4, v6

    if-gez v6, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_1

    .line 388
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    goto :goto_1
.end method
