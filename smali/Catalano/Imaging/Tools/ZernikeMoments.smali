.class public final LCatalano/Imaging/Tools/ZernikeMoments;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RadialPolynomial(IIDD)D
    .locals 20

    .prologue
    .line 65
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 67
    sub-int v2, p0, v10

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "RadialPolynomial: n-|m| is odd"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_0
    const-wide/16 v4, 0x0

    .line 72
    mul-double v2, p2, p2

    mul-double v6, p4, p4

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_2

    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-static/range {p0 .. p0}, LCatalano/Imaging/Tools/ZernikeMoments;->a(I)I

    move-result v9

    .line 76
    const/4 v8, 0x1

    .line 77
    add-int v2, p0, v10

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, LCatalano/Imaging/Tools/ZernikeMoments;->a(I)I

    move-result v7

    .line 78
    sub-int v2, p0, v10

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, LCatalano/Imaging/Tools/ZernikeMoments;->a(I)I

    move-result v6

    .line 83
    const/4 v2, 0x0

    :goto_0
    sub-int v11, p0, v10

    div-int/lit8 v11, v11, 0x2

    if-gt v2, v11, :cond_2

    .line 84
    int-to-double v12, v3

    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    mul-int v11, v8, v7

    mul-int/2addr v11, v6

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    mul-double/2addr v12, v14

    mul-double v14, p2, p2

    mul-double v16, p4, p4

    add-double v14, v14, v16

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    int-to-double v0, v2

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    .line 87
    sub-int v11, p0, v10

    div-int/lit8 v11, v11, 0x2

    if-ge v2, v11, :cond_1

    .line 88
    neg-int v3, v3

    .line 89
    sub-int v11, p0, v2

    div-int/2addr v9, v11

    .line 90
    add-int/lit8 v11, v2, 0x1

    mul-int/2addr v8, v11

    .line 91
    add-int v11, p0, v10

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v2

    div-int/2addr v7, v11

    .line 92
    sub-int v11, p0, v10

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v2

    div-int/2addr v6, v11

    .line 83
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_2
    return-wide v4
.end method

.method public static ZernikeBasisFunction(IIDD)LCatalano/Math/ComplexNumber;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 108
    mul-double v0, p2, p2

    mul-double v2, p4, p4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 109
    new-instance v0, LCatalano/Math/ComplexNumber;

    invoke-direct {v0, v4, v5, v4, v5}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    .line 116
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-static/range {p0 .. p5}, LCatalano/Imaging/Tools/ZernikeMoments;->RadialPolynomial(IIDD)D

    move-result-wide v0

    .line 113
    int-to-double v2, p1

    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 114
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    .line 116
    new-instance v0, LCatalano/Math/ComplexNumber;

    invoke-direct {v0, v4, v5, v2, v3}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    goto :goto_0
.end method

.method public static ZernikeMoments([D[DIDDDDII)LCatalano/Math/ComplexNumber;
    .locals 17

    .prologue
    .line 174
    invoke-static/range {p12 .. p12}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, p11, v2

    .line 175
    if-ltz p11, :cond_0

    invoke-static/range {p12 .. p12}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v0, p11

    if-gt v3, v0, :cond_0

    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    .line 176
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zer_mom: n="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", m="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p12

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", n-|m|="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p3, v2

    .line 183
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v10, v4, v2

    .line 184
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p5, v2

    .line 185
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v12, v4, v2

    .line 186
    new-instance v9, LCatalano/Math/ComplexNumber;

    invoke-direct {v9}, LCatalano/Math/ComplexNumber;-><init>()V

    .line 187
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    move/from16 v0, p2

    if-ge v8, v0, :cond_3

    .line 188
    aget-wide v2, p0, v8

    sub-double v2, v2, p7

    div-double v4, v2, v10

    .line 189
    aget-wide v2, p1, v8

    sub-double v2, v2, p9

    div-double v6, v2, v12

    .line 190
    mul-double v2, v4, v4

    mul-double v14, v6, v6

    add-double/2addr v2, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v14

    if-gtz v2, :cond_2

    move/from16 v2, p11

    move/from16 v3, p12

    .line 191
    invoke-static/range {v2 .. v7}, LCatalano/Imaging/Tools/ZernikeMoments;->ZernikeBasisFunction(IIDD)LCatalano/Math/ComplexNumber;

    move-result-object v2

    .line 192
    iget-wide v4, v9, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v6, v2, LCatalano/Math/ComplexNumber;->real:D

    add-double/2addr v4, v6

    iput-wide v4, v9, LCatalano/Math/ComplexNumber;->real:D

    .line 193
    iget-wide v4, v9, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v2, v2, LCatalano/Math/ComplexNumber;->imaginary:D

    add-double/2addr v2, v4

    iput-wide v2, v9, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 187
    :cond_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    .line 196
    :cond_3
    iget-wide v2, v9, LCatalano/Math/ComplexNumber;->real:D

    add-int/lit8 v4, p11, 0x1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    iput-wide v2, v9, LCatalano/Math/ComplexNumber;->real:D

    .line 197
    iget-wide v2, v9, LCatalano/Math/ComplexNumber;->imaginary:D

    add-int/lit8 v4, p11, 0x1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    iput-wide v2, v9, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 198
    return-object v9
.end method

.method public static ZernikeMoments([D[DIII)LCatalano/Math/ComplexNumber;
    .locals 16

    .prologue
    .line 131
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, p3, v2

    .line 132
    if-ltz p3, :cond_0

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v0, p3

    if-gt v3, v0, :cond_0

    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    .line 133
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zer_mom: n="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", m="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", n-|m|="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_1
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 136
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 137
    const-wide/16 v6, 0x1

    .line 138
    const-wide/16 v4, 0x1

    .line 140
    const/4 v2, 0x0

    move-wide v12, v8

    :goto_0
    move/from16 v0, p2

    if-ge v2, v0, :cond_2

    .line 141
    aget-wide v8, p0, v2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 142
    aget-wide v8, p0, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 143
    aget-wide v8, p1, v2

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 144
    aget-wide v12, p1, v2

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 140
    add-int/lit8 v2, v2, 0x1

    move-wide v12, v8

    goto :goto_0

    .line 147
    :cond_2
    sub-double/2addr v6, v10

    .line 148
    sub-double v8, v4, v12

    .line 149
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, v6, v2

    add-double/2addr v10, v2

    .line 150
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, v8, v2

    add-double/2addr v12, v2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v14, p3

    move/from16 v15, p4

    .line 151
    invoke-static/range {v3 .. v15}, LCatalano/Imaging/Tools/ZernikeMoments;->ZernikeMoments([D[DIDDDDII)LCatalano/Math/ComplexNumber;

    move-result-object v2

    return-object v2
.end method

.method public static ZernikeMoments(I[D[DI)[LCatalano/Math/ComplexNumber;
    .locals 12

    .prologue
    .line 211
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 212
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 213
    const-wide/16 v4, 0x1

    .line 214
    const-wide/16 v2, 0x1

    .line 215
    const/4 v0, 0x0

    move-wide v10, v6

    :goto_0
    if-ge v0, p3, :cond_0

    .line 216
    aget-wide v6, p1, v0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 217
    aget-wide v6, p1, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 218
    aget-wide v6, p2, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 219
    aget-wide v10, p2, v0

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 215
    add-int/lit8 v0, v0, 0x1

    move-wide v10, v6

    goto :goto_0

    .line 221
    :cond_0
    sub-double/2addr v4, v8

    .line 222
    sub-double v6, v2, v10

    .line 223
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, v4, v0

    add-double/2addr v8, v0

    .line 224
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, v6, v0

    add-double/2addr v10, v0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 225
    invoke-static/range {v0 .. v11}, LCatalano/Imaging/Tools/ZernikeMoments;->ZernikeMoments(I[D[DIDDDD)[LCatalano/Math/ComplexNumber;

    move-result-object v0

    return-object v0
.end method

.method public static ZernikeMoments(I[D[DIDDDD)[LCatalano/Math/ComplexNumber;
    .locals 18

    .prologue
    .line 241
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    const/4 v4, 0x0

    .line 243
    const/4 v14, 0x0

    :goto_0
    move/from16 v0, p0

    if-gt v14, v0, :cond_2

    .line 244
    const/4 v15, 0x0

    move v2, v4

    :goto_1
    if-gt v15, v14, :cond_1

    .line 245
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v3, v14, v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    .line 246
    invoke-static/range {v3 .. v15}, LCatalano/Imaging/Tools/ZernikeMoments;->ZernikeMoments([D[DIDDDDII)LCatalano/Math/ComplexNumber;

    move-result-object v3

    .line 247
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 248
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v2, v2, 0x1

    .line 244
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 243
    :cond_1
    add-int/lit8 v14, v14, 0x1

    move v4, v2

    goto :goto_0

    .line 253
    :cond_2
    new-array v5, v4, [LCatalano/Math/ComplexNumber;

    .line 254
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_3

    .line 255
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Math/ComplexNumber;

    aput-object v2, v5, v3

    .line 254
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 257
    :cond_3
    return-object v5
.end method

.method private static a(I)I
    .locals 2

    .prologue
    .line 266
    const/4 v1, 0x1

    .line 267
    const/4 v0, 0x2

    :goto_0
    if-gt v0, p0, :cond_0

    .line 268
    mul-int/2addr v1, v0

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    return v1
.end method
