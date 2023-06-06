.class public LCatalano/Imaging/Texture/Haralick;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ClusterProminence([[D)D
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 248
    array-length v0, p0

    new-array v5, v0, [D

    .line 249
    aget-object v0, p0, v1

    array-length v0, v0

    new-array v8, v0, [D

    move v0, v1

    .line 251
    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 252
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 253
    aget-wide v6, v5, v0

    aget-object v3, p0, v0

    aget-wide v10, v3, v2

    add-double/2addr v6, v10

    aput-wide v6, v5, v0

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    :cond_0
    aget-wide v2, v5, v0

    array-length v4, p0

    int-to-double v6, v4

    div-double/2addr v2, v6

    aput-wide v2, v5, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 258
    :goto_2
    array-length v2, v8

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 259
    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 260
    aget-wide v6, v8, v2

    aget-object v3, p0, v2

    aget-wide v10, v3, v0

    add-double/2addr v6, v10

    aput-wide v6, v8, v2

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 262
    :cond_2
    aget-wide v2, v8, v0

    aget-object v4, p0, v1

    array-length v4, v4

    int-to-double v6, v4

    div-double/2addr v2, v6

    aput-wide v2, v8, v0

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 265
    :cond_3
    const-wide/16 v2, 0x0

    move v0, v1

    .line 266
    :goto_4
    array-length v4, p0

    if-ge v0, v4, :cond_5

    move v4, v1

    .line 267
    :goto_5
    aget-object v6, p0, v1

    array-length v6, v6

    if-ge v4, v6, :cond_4

    .line 268
    int-to-double v6, v0

    aget-wide v10, v5, v0

    sub-double/2addr v6, v10

    int-to-double v10, v4

    aget-wide v12, v8, v4

    sub-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    aget-object v9, p0, v0

    aget-wide v10, v9, v4

    mul-double/2addr v6, v10

    add-double/2addr v6, v2

    .line 267
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_5

    .line 266
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 271
    :cond_5
    return-wide v2
.end method

.method public static ClusterShade([[D)D
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 216
    array-length v0, p0

    new-array v5, v0, [D

    .line 217
    aget-object v0, p0, v1

    array-length v0, v0

    new-array v8, v0, [D

    move v0, v1

    .line 219
    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 220
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 221
    aget-wide v6, v5, v0

    aget-object v3, p0, v0

    aget-wide v10, v3, v2

    add-double/2addr v6, v10

    aput-wide v6, v5, v0

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 223
    :cond_0
    aget-wide v2, v5, v0

    array-length v4, p0

    int-to-double v6, v4

    div-double/2addr v2, v6

    aput-wide v2, v5, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 226
    :goto_2
    array-length v2, v8

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 227
    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 228
    aget-wide v6, v8, v2

    aget-object v3, p0, v2

    aget-wide v10, v3, v0

    add-double/2addr v6, v10

    aput-wide v6, v8, v2

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 230
    :cond_2
    aget-wide v2, v8, v0

    aget-object v4, p0, v1

    array-length v4, v4

    int-to-double v6, v4

    div-double/2addr v2, v6

    aput-wide v2, v8, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 233
    :cond_3
    const-wide/16 v2, 0x0

    move v0, v1

    .line 234
    :goto_4
    array-length v4, p0

    if-ge v0, v4, :cond_5

    move v4, v1

    .line 235
    :goto_5
    aget-object v6, p0, v1

    array-length v6, v6

    if-ge v4, v6, :cond_4

    .line 236
    int-to-double v6, v0

    aget-wide v10, v5, v0

    sub-double/2addr v6, v10

    int-to-double v10, v4

    aget-wide v12, v8, v4

    sub-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    aget-object v9, p0, v0

    aget-wide v10, v9, v4

    mul-double/2addr v6, v10

    add-double/2addr v6, v2

    .line 235
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_5

    .line 234
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 239
    :cond_5
    return-wide v2
.end method

.method public static ClusterTendency([[D)D
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 184
    array-length v0, p0

    new-array v5, v0, [D

    .line 185
    aget-object v0, p0, v1

    array-length v0, v0

    new-array v8, v0, [D

    move v0, v1

    .line 187
    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 188
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 189
    aget-wide v6, v5, v0

    aget-object v3, p0, v0

    aget-wide v10, v3, v2

    add-double/2addr v6, v10

    aput-wide v6, v5, v0

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    :cond_0
    aget-wide v2, v5, v0

    array-length v4, p0

    int-to-double v6, v4

    div-double/2addr v2, v6

    aput-wide v2, v5, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 194
    :goto_2
    array-length v2, v8

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 195
    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 196
    aget-wide v6, v8, v2

    aget-object v3, p0, v2

    aget-wide v10, v3, v0

    add-double/2addr v6, v10

    aput-wide v6, v8, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 198
    :cond_2
    aget-wide v2, v8, v0

    aget-object v4, p0, v1

    array-length v4, v4

    int-to-double v6, v4

    div-double/2addr v2, v6

    aput-wide v2, v8, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 201
    :cond_3
    const-wide/16 v2, 0x0

    move v0, v1

    .line 202
    :goto_4
    array-length v4, p0

    if-ge v0, v4, :cond_5

    move v4, v1

    .line 203
    :goto_5
    aget-object v6, p0, v1

    array-length v6, v6

    if-ge v4, v6, :cond_4

    .line 204
    int-to-double v6, v0

    aget-wide v10, v5, v0

    sub-double/2addr v6, v10

    int-to-double v10, v4

    aget-wide v12, v8, v4

    sub-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    aget-object v9, p0, v0

    aget-wide v10, v9, v4

    mul-double/2addr v6, v10

    add-double/2addr v6, v2

    .line 203
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_5

    .line 202
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 207
    :cond_5
    return-wide v2
.end method

.method public static Contrast([[D)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 71
    const-wide/16 v2, 0x0

    move v0, v1

    .line 72
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 73
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 74
    sub-int v5, v0, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v6, v5

    aget-object v5, p0, v0

    aget-wide v8, v5, v4

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 73
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    return-wide v2
.end method

.method public static Correlation([[D)D
    .locals 18

    .prologue
    .line 102
    const-wide/16 v6, 0x0

    .line 103
    const-wide/16 v4, 0x0

    .line 104
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 105
    const/4 v3, 0x0

    :goto_1
    const/4 v8, 0x0

    aget-object v8, p0, v8

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 106
    aget-object v8, p0, v2

    aget-wide v8, v8, v3

    add-double/2addr v6, v8

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 108
    :cond_0
    const/4 v3, 0x0

    :goto_2
    const/4 v8, 0x0

    aget-object v8, p0, v8

    array-length v8, v8

    if-ge v3, v8, :cond_1

    .line 109
    int-to-double v8, v2

    sub-double/2addr v8, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    aget-object v10, p0, v2

    aget-wide v10, v10, v3

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 104
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_2
    const-wide/16 v10, 0x0

    .line 114
    const-wide/16 v8, 0x0

    .line 115
    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x0

    aget-object v3, p0, v3

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 116
    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p0

    array-length v12, v0

    if-ge v3, v12, :cond_3

    .line 117
    aget-object v12, p0, v3

    aget-wide v12, v12, v2

    add-double/2addr v10, v12

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 119
    :cond_3
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    array-length v12, v0

    if-ge v3, v12, :cond_4

    .line 120
    int-to-double v12, v2

    sub-double/2addr v12, v10

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    aget-object v14, p0, v3

    aget-wide v14, v14, v2

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 115
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 124
    :cond_5
    const-wide/16 v12, 0x0

    .line 125
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 126
    const/4 v3, 0x0

    :goto_7
    const/4 v14, 0x0

    aget-object v14, p0, v14

    array-length v14, v14

    if-ge v3, v14, :cond_6

    .line 127
    mul-int v14, v2, v3

    int-to-double v14, v14

    aget-object v16, p0, v2

    aget-wide v16, v16, v3

    mul-double v14, v14, v16

    mul-double v16, v6, v10

    sub-double v14, v14, v16

    div-double/2addr v14, v4

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 125
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 130
    :cond_7
    return-wide v12
.end method

.method public static Energy([[D)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 41
    const-wide/16 v2, 0x0

    move v0, v1

    .line 42
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 43
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 44
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    aget-object v5, p0, v0

    aget-wide v8, v5, v4

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 43
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    return-wide v2
.end method

.method public static Entropy([[D)D
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 56
    const-wide/16 v2, 0x0

    move v0, v1

    .line 57
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 58
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 59
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    aget-object v5, p0, v0

    aget-wide v8, v5, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, LCatalano/Math/Tools;->Log(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 58
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    neg-double v0, v2

    return-wide v0
.end method

.method public static Inertia([[D)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 86
    const-wide/16 v2, 0x0

    move v0, v1

    .line 87
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 88
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 89
    sub-int v5, v0, v4

    int-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    aget-object v5, p0, v0

    aget-wide v8, v5, v4

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 88
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 87
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    return-wide v2
.end method

.method public static InverseDifference([[D)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 154
    const-wide/16 v2, 0x0

    move v0, v1

    .line 155
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 156
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 157
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    sub-int v5, v0, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v8, v5

    div-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 156
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    return-wide v2
.end method

.method public static InverseDifferenceMoment([[D)D
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 169
    const-wide/16 v2, 0x0

    move v0, v1

    .line 170
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 171
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 172
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-int v5, v0, v4

    int-to-double v10, v5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    div-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 171
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    return-wide v2
.end method

.method public static TextureHomogeneity([[D)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 139
    const-wide/16 v2, 0x0

    move v0, v1

    .line 140
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 141
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 142
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    sub-int v5, v0, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-double v8, v5

    div-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 141
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    return-wide v2
.end method
