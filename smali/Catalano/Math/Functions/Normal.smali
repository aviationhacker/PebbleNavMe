.class public LCatalano/Math/Functions/Normal;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Function(D)D
    .locals 6

    .prologue
    .line 47
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    neg-double v2, p0

    const-wide v4, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    div-double/2addr v2, v4

    invoke-static {v2, v3}, LCatalano/Math/Special;->Erfc(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static HighAccuracyComplemented(D)D
    .locals 20

    .prologue
    .line 227
    const/16 v0, 0x9

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    .line 234
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 236
    aget-wide v2, v0, v1

    .line 237
    mul-int/lit8 v0, v1, 0x2

    int-to-double v12, v0

    .line 238
    mul-double v0, v2, v12

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v8, v0, v4

    .line 240
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v14, v0, v12

    .line 241
    mul-double v16, v14, v14

    .line 242
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 244
    mul-double v0, v14, v8

    add-double v4, v2, v0

    .line 248
    const/4 v0, 0x2

    move-wide v10, v2

    :goto_0
    cmpl-double v1, v4, v2

    if-eqz v1, :cond_0

    .line 252
    mul-double v2, v12, v8

    add-double/2addr v2, v10

    int-to-double v10, v0

    div-double v10, v2, v10

    .line 253
    mul-double v2, v12, v10

    add-double/2addr v2, v8

    add-int/lit8 v1, v0, 0x1

    int-to-double v8, v1

    div-double v8, v2, v8

    .line 254
    mul-double v6, v6, v16

    .line 256
    mul-double v2, v14, v8

    add-double/2addr v2, v10

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    .line 248
    add-int/lit8 v0, v0, 0x2

    move-wide/from16 v18, v4

    move-wide v4, v2

    move-wide/from16 v2, v18

    goto :goto_0

    .line 259
    :cond_0
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    mul-double v2, p0, p0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fed67f1c864beb5L    # 0.9189385332046728

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    .line 261
    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_1

    :goto_1
    return-wide v0

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    goto :goto_1

    .line 227
    :array_0
    .array-data 8
        0x3ff40d931ff62706L    # 1.2533141373155003
        0x3fdaf7b6a4d54e8dL    # 0.4213692292880545
        0x3fce4aa012912ddeL    # 0.23665238291356067
        0x3fc4c8ca8b939648L    # 0.16237766089686745
        0x3fbf85938b48fbd8L    # 0.1231319632579323
        0x3fb959f0273701b2L    # 0.09902859647173193
        0x3fb5302bddbc185fL    # 0.08276628650136918
        0x3fb2319db427a17dL    # 0.07106958053885211
        0x3fafe05e2caeb505L    # 0.0622586659950262
    .end array-data
.end method

.method public static HighAccuracyFunction(D)D
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    .line 195
    const-wide/high16 v2, -0x3fe0000000000000L    # -8.0

    cmpg-double v2, p0, v2

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-wide v0

    .line 202
    :cond_1
    mul-double v6, p0, p0

    .line 203
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v4, p0

    move-wide v8, v0

    move-wide v0, v2

    move-wide v2, v8

    .line 208
    :goto_1
    cmpl-double v2, v4, v2

    if-eqz v2, :cond_2

    .line 213
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    div-double v2, v6, v0

    mul-double/2addr p0, v2

    .line 215
    add-double v2, v4, p0

    move-wide v8, v4

    move-wide v4, v2

    move-wide v2, v8

    goto :goto_1

    .line 218
    :cond_2
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-double/2addr v2, v6

    const-wide v6, 0x3fed67f1c864beb5L    # 0.9189385332046728

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static Inverse(D)D
    .locals 14

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_2

    .line 58
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 186
    :cond_0
    :goto_0
    return-wide v0

    .line 60
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "y0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_4

    .line 67
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_3

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 69
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "y0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :catch_1
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    :cond_4
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 77
    const/4 v0, 0x1

    .line 81
    const/4 v1, 0x5

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    .line 90
    const/16 v2, 0x8

    new-array v3, v2, [D

    fill-array-data v3, :array_1

    .line 102
    const/16 v2, 0x9

    new-array v6, v2, [D

    fill-array-data v6, :array_2

    .line 115
    const/16 v2, 0x8

    new-array v7, v2, [D

    fill-array-data v7, :array_3

    .line 127
    const/16 v2, 0x9

    new-array v8, v2, [D

    fill-array-data v8, :array_4

    .line 140
    const/16 v2, 0x8

    new-array v9, v2, [D

    fill-array-data v9, :array_5

    .line 152
    const-wide v10, 0x3febab5557101f8dL    # 0.8646647167633873

    cmpl-double v2, p0, v10

    if-lez v2, :cond_7

    .line 154
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double p0, v10, p0

    .line 155
    const/4 v0, 0x0

    move v2, v0

    .line 158
    :goto_1
    const-wide v10, 0x3fc152aaa3bf81ccL    # 0.1353352832366127

    cmpl-double v0, p0, v10

    if-lez v0, :cond_5

    .line 160
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double v6, p0, v6

    .line 161
    mul-double v8, v6, v6

    .line 162
    const/4 v0, 0x4

    invoke-static {v8, v9, v1, v0}, LCatalano/Math/Special;->Polevl(D[DI)D

    move-result-wide v0

    mul-double/2addr v0, v8

    const/16 v2, 0x8

    invoke-static {v8, v9, v3, v2}, LCatalano/Math/Special;->P1evl(D[DI)D

    move-result-wide v2

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    add-double/2addr v0, v6

    .line 163
    mul-double/2addr v0, v4

    .line 164
    goto/16 :goto_0

    .line 167
    :cond_5
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 168
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v4, v0

    sub-double v4, v0, v4

    .line 169
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v0

    .line 172
    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    cmpg-double v0, v0, v12

    if-gez v0, :cond_6

    .line 174
    const/16 v0, 0x8

    invoke-static {v10, v11, v6, v0}, LCatalano/Math/Special;->Polevl(D[DI)D

    move-result-wide v0

    mul-double/2addr v0, v10

    const/16 v3, 0x8

    invoke-static {v10, v11, v7, v3}, LCatalano/Math/Special;->P1evl(D[DI)D

    move-result-wide v6

    div-double/2addr v0, v6

    .line 181
    :goto_2
    sub-double v0, v4, v0

    .line 183
    if-eqz v2, :cond_0

    .line 184
    neg-double v0, v0

    goto/16 :goto_0

    .line 178
    :cond_6
    const/16 v0, 0x8

    invoke-static {v10, v11, v8, v0}, LCatalano/Math/Special;->Polevl(D[DI)D

    move-result-wide v0

    mul-double/2addr v0, v10

    const/16 v3, 0x8

    invoke-static {v10, v11, v9, v3}, LCatalano/Math/Special;->P1evl(D[DI)D

    move-result-wide v6

    div-double/2addr v0, v6

    goto :goto_2

    :cond_7
    move v2, v0

    goto :goto_1

    .line 81
    :array_0
    .array-data 8
        -0x3fb204b0f1a1ebd3L    # -59.96335010141079
        0x405880119ea1edd9L    # 98.00107541859997
        -0x3fb3a96f77f92446L    # -56.67628574690703
        0x402bdcce3bd7c1fdL    # 13.931260938727968
        -0x400c2c6071093582L    # -1.2391658386738125
    .end array-data

    .line 90
    :array_1
    .array-data 8
        0x3fff4595d22074f9L    # 1.9544885833814176
        0x4012b4828417e5b6L    # 4.676279128988815
        0x4055970e350b81d4L    # 86.36024213908905
        -0x3f93d131a93dc9a1L    # -225.46268785411937
        0x40690853a8e9cbffL    # 200.26021238006066
        -0x3fab7d9e18724827L    # -82.03722561683334
        0x402fcfadc1047563L    # 15.90562251262117
        -0x400d11230540322bL    # -1.1833162112133
    .end array-data

    .line 102
    :array_2
    .array-data 8
        0x401038c79a3c8edbL    # 4.0554489230596245
        0x403f866d92d57982L    # 31.525109459989388
        0x404c94d742a67fbfL    # 57.16281922464213
        0x40460a4e10ee1ba9L    # 44.08050738932008
        0x402d5eb293ff463eL    # 14.684956192885803
        0x40017e397a6cbfa1L    # 2.1866330685079025
        -0x403e0c16bb726989L    # -0.1402560791713545
        -0x405e0eea119cbe39L    # -0.03504246268278482
        -0x40b3e72193341871L    # -8.574567851546854E-4
    .end array-data

    .line 115
    :array_3
    .array-data 8
        0x402f8f5aa13bd41bL    # 15.779988325646675
        0x4046b20489ee296fL    # 45.39076351288792
        0x4044a89a228c461cL    # 41.3172038254672
        0x402e15c79d87d845L    # 15.04253856929075
        0x40040985a83cba20L    # 2.504649462083094
        -0x403dccf33224fdceL    # -0.14218292285478779
        -0x405c80b1ba924ce3L    # -0.03808064076915783
        -0x40b16b408682f9e2L    # -9.332594808954574E-4
    .end array-data

    .line 127
    :array_4
    .array-data 8
        0x4009e6e8e793d574L    # 3.2377489177694603
        0x401ba931c327780bL    # 6.915228890689842
        0x400f82aef32bb0acL    # 3.9388102529247444
        0x3ff5541c18e79a0cL    # 1.3330346081580755
        0x3fc9ca45f35e2651L    # 0.20148538954917908
        0x3f8956509069354dL    # 0.012371663481782003
        0x3f33c3b2e8ce1812L    # 3.0158155350823543E-4
        0x3ec64c294c0c2234L    # 2.6580697468673755E-6
        0x3e3accac30588ff9L    # 6.239745391849833E-9
    .end array-data

    .line 140
    :array_5
    .array-data 8
        0x401818da568be828L    # 6.02427039364742
        0x400d704daad23816L    # 3.6798356385616087
        0x3ff608472aaf6200L    # 1.3770209948908132
        0x3fcbada75fd63c9bL    # 0.21623699359449663
        0x3f8b7c27adb6c78bL    # 0.013420400608854318
        0x3f357f2b65ff2903L    # 3.2801446468212774E-4
        0x3ec8438cf3f6ccf7L    # 2.8924786474538068E-6
        0x3e3d29e5b8766b3dL    # 6.790194080099813E-9
    .end array-data
.end method
