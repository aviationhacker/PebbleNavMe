.class public LCatalano/Math/Decompositions/SingularValueDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Z

.field b:Z

.field private c:[[D

.field private d:[[D

.field private e:[D

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>([[D)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->a:Z

    .line 66
    iput-boolean v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->b:Z

    .line 118
    invoke-direct {p0, p1}, LCatalano/Math/Decompositions/SingularValueDecomposition;->a([[D)V

    .line 119
    return-void
.end method

.method public constructor <init>([[DZZ)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->a:Z

    .line 66
    iput-boolean v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->b:Z

    .line 107
    iput-boolean p2, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->a:Z

    .line 108
    iput-boolean p3, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->b:Z

    .line 109
    invoke-direct {p0, p1}, LCatalano/Math/Decompositions/SingularValueDecomposition;->a([[D)V

    .line 110
    return-void
.end method

.method private a([[D)V
    .locals 31

    .prologue
    .line 123
    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v2, v2

    if-nez v2, :cond_0

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Matrix does not have any rows or columns."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_0
    invoke-static/range {p1 .. p1}, LCatalano/Math/Matrix;->Copy([[D)[[D

    move-result-object v9

    .line 127
    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    .line 128
    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v2, v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    .line 135
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 136
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    .line 137
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    filled-new-array {v2, v10}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move-object/from16 v0, p0

    iput-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    .line 138
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move-object/from16 v0, p0

    iput-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    .line 139
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    new-array v12, v2, [D

    .line 140
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    new-array v11, v2, [D

    .line 145
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 146
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    add-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 147
    const/4 v2, 0x0

    :goto_0
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ge v2, v3, :cond_17

    .line 148
    if-ge v2, v8, :cond_5

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    move v3, v2

    .line 153
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v3, v4, :cond_1

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v6, v5, v2

    aget-object v5, v9, v3

    aget-wide v14, v5, v2

    invoke-static {v6, v7, v14, v15}, LCatalano/Math/Tools;->Hypotenuse(DD)D

    move-result-wide v6

    aput-wide v6, v4, v2

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_4

    .line 157
    aget-object v3, v9, v2

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v4, v4, v2

    neg-double v4, v4

    aput-wide v4, v3, v2

    :cond_2
    move v3, v2

    .line 160
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v3, v4, :cond_3

    .line 161
    aget-object v4, v9, v3

    aget-wide v6, v4, v2

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v14, v5, v2

    div-double/2addr v6, v14

    aput-wide v6, v4, v2

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 163
    :cond_3
    aget-object v3, v9, v2

    aget-wide v4, v3, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    aput-wide v4, v3, v2

    .line 165
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v4, v4, v2

    neg-double v4, v4

    aput-wide v4, v3, v2

    .line 167
    :cond_5
    add-int/lit8 v3, v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v3, v4, :cond_8

    .line 168
    if-ge v2, v8, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v4, v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_7

    .line 172
    const-wide/16 v4, 0x0

    move-wide v6, v4

    move v4, v2

    .line 173
    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v4, v5, :cond_6

    .line 174
    aget-object v5, v9, v4

    aget-wide v14, v5, v2

    aget-object v5, v9, v4

    aget-wide v16, v5, v3

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 176
    :cond_6
    neg-double v4, v6

    aget-object v6, v9, v2

    aget-wide v6, v6, v2

    div-double v6, v4, v6

    move v4, v2

    .line 177
    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v4, v5, :cond_7

    .line 178
    aget-object v5, v9, v4

    aget-wide v14, v5, v3

    aget-object v16, v9, v4

    aget-wide v16, v16, v2

    mul-double v16, v16, v6

    add-double v14, v14, v16

    aput-wide v14, v5, v3

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 185
    :cond_7
    aget-object v4, v9, v2

    aget-wide v4, v4, v3

    aput-wide v4, v12, v3

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 187
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->a:Z

    if-ge v2, v8, :cond_9

    const/4 v3, 0x1

    :goto_6
    and-int/2addr v3, v4

    if-eqz v3, :cond_a

    move v3, v2

    .line 192
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v3, v4, :cond_a

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v3

    aget-object v5, v9, v3

    aget-wide v6, v5, v2

    aput-wide v6, v4, v2

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 187
    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    .line 196
    :cond_a
    if-ge v2, v13, :cond_16

    .line 201
    const-wide/16 v4, 0x0

    aput-wide v4, v12, v2

    .line 202
    add-int/lit8 v3, v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v3, v4, :cond_b

    .line 203
    aget-wide v4, v12, v2

    aget-wide v6, v12, v3

    invoke-static {v4, v5, v6, v7}, LCatalano/Math/Tools;->Hypotenuse(DD)D

    move-result-wide v4

    aput-wide v4, v12, v2

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 205
    :cond_b
    aget-wide v4, v12, v2

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_e

    .line 206
    add-int/lit8 v3, v2, 0x1

    aget-wide v4, v12, v3

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_c

    .line 207
    aget-wide v4, v12, v2

    neg-double v4, v4

    aput-wide v4, v12, v2

    .line 209
    :cond_c
    add-int/lit8 v3, v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v3, v4, :cond_d

    .line 210
    aget-wide v4, v12, v3

    aget-wide v6, v12, v2

    div-double/2addr v4, v6

    aput-wide v4, v12, v3

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 212
    :cond_d
    add-int/lit8 v3, v2, 0x1

    aget-wide v4, v12, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    aput-wide v4, v12, v3

    .line 214
    :cond_e
    aget-wide v4, v12, v2

    neg-double v4, v4

    aput-wide v4, v12, v2

    .line 215
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v3, v4, :cond_f

    const/4 v3, 0x1

    :goto_a
    aget-wide v4, v12, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    :goto_b
    and-int/2addr v3, v4

    if-eqz v3, :cond_15

    .line 219
    add-int/lit8 v3, v2, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v3, v4, :cond_11

    .line 220
    const-wide/16 v4, 0x0

    aput-wide v4, v11, v3

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 215
    :cond_f
    const/4 v3, 0x0

    goto :goto_a

    :cond_10
    const/4 v4, 0x0

    goto :goto_b

    .line 222
    :cond_11
    add-int/lit8 v3, v2, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v3, v4, :cond_13

    .line 223
    add-int/lit8 v4, v2, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v4, v5, :cond_12

    .line 224
    aget-wide v6, v11, v4

    aget-wide v14, v12, v3

    aget-object v5, v9, v4

    aget-wide v16, v5, v3

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    aput-wide v6, v11, v4

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 222
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 227
    :cond_13
    add-int/lit8 v3, v2, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v3, v4, :cond_15

    .line 228
    aget-wide v4, v12, v3

    neg-double v4, v4

    add-int/lit8 v6, v2, 0x1

    aget-wide v6, v12, v6

    div-double v6, v4, v6

    .line 229
    add-int/lit8 v4, v2, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v4, v5, :cond_14

    .line 230
    aget-object v5, v9, v4

    aget-wide v14, v5, v3

    aget-wide v16, v11, v4

    mul-double v16, v16, v6

    add-double v14, v14, v16

    aput-wide v14, v5, v3

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 227
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 234
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->b:Z

    if-eqz v3, :cond_16

    .line 239
    add-int/lit8 v3, v2, 0x1

    :goto_11
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v3, v4, :cond_16

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v4, v4, v3

    aget-wide v6, v12, v3

    aput-wide v6, v4, v2

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 147
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 248
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 249
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v8, v2, :cond_18

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-object v3, v9, v8

    aget-wide v4, v3, v8

    aput-wide v4, v2, v8

    .line 252
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v2, v6, :cond_19

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v3, v6, -0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 255
    :cond_19
    add-int/lit8 v2, v13, 0x1

    if-ge v2, v6, :cond_1a

    .line 256
    aget-object v2, v9, v13

    add-int/lit8 v3, v6, -0x1

    aget-wide v2, v2, v3

    aput-wide v2, v12, v13

    .line 258
    :cond_1a
    add-int/lit8 v2, v6, -0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v12, v2

    .line 262
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->a:Z

    if-eqz v2, :cond_24

    move v3, v8

    .line 263
    :goto_12
    if-ge v3, v10, :cond_1c

    .line 264
    const/4 v2, 0x0

    :goto_13
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v2, v4, :cond_1b

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    const-wide/16 v14, 0x0

    aput-wide v14, v4, v3

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 267
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v2, v2, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 263
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_12

    .line 269
    :cond_1c
    add-int/lit8 v3, v8, -0x1

    :goto_14
    if-ltz v3, :cond_24

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v4, v2, v3

    const-wide/16 v8, 0x0

    cmpl-double v2, v4, v8

    if-eqz v2, :cond_21

    .line 271
    add-int/lit8 v2, v3, 0x1

    move v7, v2

    :goto_15
    if-ge v7, v10, :cond_1f

    .line 272
    const-wide/16 v4, 0x0

    move v2, v3

    .line 273
    :goto_16
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v2, v8, :cond_1d

    .line 274
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v8, v8, v2

    aget-wide v8, v8, v3

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v11, v11, v2

    aget-wide v14, v11, v7

    mul-double/2addr v8, v14

    add-double/2addr v4, v8

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 276
    :cond_1d
    neg-double v4, v4

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v2, v2, v3

    aget-wide v8, v2, v3

    div-double/2addr v4, v8

    move v2, v3

    .line 277
    :goto_17
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v2, v8, :cond_1e

    .line 278
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v8, v8, v2

    aget-wide v14, v8, v7

    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v9, v9, v2

    aget-wide v16, v9, v3

    mul-double v16, v16, v4

    add-double v14, v14, v16

    aput-wide v14, v8, v7

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 271
    :cond_1e
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_15

    :cond_1f
    move v2, v3

    .line 281
    :goto_18
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v2, v4, :cond_20

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v5, v5, v2

    aget-wide v8, v5, v3

    neg-double v8, v8

    aput-wide v8, v4, v3

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 284
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v2, v2, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v7, v7, v3

    aget-wide v8, v7, v3

    add-double/2addr v4, v8

    aput-wide v4, v2, v3

    .line 285
    const/4 v2, 0x0

    :goto_19
    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_23

    .line 286
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v3

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 289
    :cond_21
    const/4 v2, 0x0

    :goto_1a
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v2, v4, :cond_22

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v3

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 292
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v2, v2, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 269
    :cond_23
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_14

    .line 299
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->b:Z

    if-eqz v2, :cond_2b

    .line 300
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    add-int/lit8 v2, v2, -0x1

    move v7, v2

    :goto_1b
    if-ltz v7, :cond_2b

    .line 301
    if-ge v7, v13, :cond_25

    const/4 v2, 0x1

    :goto_1c
    aget-wide v4, v12, v7

    const-wide/16 v8, 0x0

    cmpl-double v3, v4, v8

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    :goto_1d
    and-int/2addr v2, v3

    if-eqz v2, :cond_29

    .line 302
    add-int/lit8 v2, v7, 0x1

    move v3, v2

    :goto_1e
    if-ge v3, v10, :cond_29

    .line 303
    const-wide/16 v4, 0x0

    .line 304
    add-int/lit8 v2, v7, 0x1

    :goto_1f
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v2, v8, :cond_27

    .line 305
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v8, v8, v2

    aget-wide v8, v8, v7

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v11, v11, v2

    aget-wide v14, v11, v3

    mul-double/2addr v8, v14

    add-double/2addr v4, v8

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 301
    :cond_25
    const/4 v2, 0x0

    goto :goto_1c

    :cond_26
    const/4 v3, 0x0

    goto :goto_1d

    .line 307
    :cond_27
    neg-double v4, v4

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    add-int/lit8 v8, v7, 0x1

    aget-object v2, v2, v8

    aget-wide v8, v2, v7

    div-double/2addr v4, v8

    .line 308
    add-int/lit8 v2, v7, 0x1

    :goto_20
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v2, v8, :cond_28

    .line 309
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v8, v8, v2

    aget-wide v14, v8, v3

    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v9, v9, v2

    aget-wide v16, v9, v7

    mul-double v16, v16, v4

    add-double v14, v14, v16

    aput-wide v14, v8, v3

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 302
    :cond_28
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1e

    .line 313
    :cond_29
    const/4 v2, 0x0

    :goto_21
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v2, v3, :cond_2a

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v3, v3, v2

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v7

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 316
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v2, v2, v7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v7

    .line 300
    add-int/lit8 v2, v7, -0x1

    move v7, v2

    goto/16 :goto_1b

    .line 322
    :cond_2b
    add-int/lit8 v13, v6, -0x1

    .line 323
    const/4 v5, 0x0

    .line 324
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, -0x3fb6000000000000L    # -52.0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 325
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide v8, -0x3f71d00000000000L    # -966.0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 326
    :goto_22
    if-lez v6, :cond_49

    .line 341
    add-int/lit8 v4, v6, -0x2

    :goto_23
    const/4 v2, -0x1

    if-lt v4, v2, :cond_2c

    .line 342
    const/4 v2, -0x1

    if-ne v4, v2, :cond_2d

    .line 351
    :cond_2c
    :goto_24
    add-int/lit8 v2, v6, -0x2

    if-ne v4, v2, :cond_2f

    .line 352
    const/4 v2, 0x4

    move v3, v4

    .line 375
    :goto_25
    add-int/lit8 v7, v3, 0x1

    .line 378
    packed-switch v2, :pswitch_data_0

    move v2, v5

    move v3, v6

    :goto_26
    move v5, v2

    move v6, v3

    .line 539
    goto :goto_22

    .line 345
    :cond_2d
    aget-wide v2, v12, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v8, v7, v4

    .line 346
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v10, v4, 0x1

    aget-wide v10, v7, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    mul-double/2addr v8, v14

    add-double v8, v8, v16

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_2e

    .line 347
    const-wide/16 v2, 0x0

    aput-wide v2, v12, v4

    goto :goto_24

    .line 341
    :cond_2e
    add-int/lit8 v4, v4, -0x1

    goto :goto_23

    .line 355
    :cond_2f
    add-int/lit8 v7, v6, -0x1

    :goto_27
    if-lt v7, v4, :cond_30

    .line 356
    if-ne v7, v4, :cond_31

    .line 366
    :cond_30
    :goto_28
    if-ne v7, v4, :cond_35

    .line 367
    const/4 v2, 0x3

    move v3, v4

    goto :goto_25

    .line 359
    :cond_31
    if-eq v7, v6, :cond_32

    aget-wide v2, v12, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-wide v8, v2

    :goto_29
    add-int/lit8 v2, v4, 0x1

    if-eq v7, v2, :cond_33

    add-int/lit8 v2, v7, -0x1

    aget-wide v2, v12, v2

    .line 360
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    :goto_2a
    add-double/2addr v2, v8

    .line 361
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v8, v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    mul-double/2addr v2, v14

    add-double v2, v2, v16

    cmpg-double v2, v8, v2

    if-gtz v2, :cond_34

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    const-wide/16 v8, 0x0

    aput-wide v8, v2, v7

    goto :goto_28

    .line 359
    :cond_32
    const-wide/16 v2, 0x0

    move-wide v8, v2

    goto :goto_29

    .line 360
    :cond_33
    const-wide/16 v2, 0x0

    goto :goto_2a

    .line 355
    :cond_34
    add-int/lit8 v7, v7, -0x1

    goto :goto_27

    .line 368
    :cond_35
    add-int/lit8 v2, v6, -0x1

    if-ne v7, v2, :cond_36

    .line 369
    const/4 v2, 0x1

    move v3, v4

    goto/16 :goto_25

    .line 371
    :cond_36
    const/4 v2, 0x2

    move v3, v7

    .line 372
    goto/16 :goto_25

    .line 383
    :pswitch_0
    add-int/lit8 v2, v6, -0x2

    aget-wide v8, v12, v2

    .line 384
    add-int/lit8 v2, v6, -0x2

    const-wide/16 v10, 0x0

    aput-wide v10, v12, v2

    .line 385
    add-int/lit8 v2, v6, -0x2

    move/from16 v30, v2

    move-wide v2, v8

    move/from16 v8, v30

    :goto_2b
    if-lt v8, v7, :cond_39

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v10, v4, v8

    invoke-static {v10, v11, v2, v3}, LCatalano/Math/Tools;->Hypotenuse(DD)D

    move-result-wide v10

    .line 387
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v18, v4, v8

    div-double v18, v18, v10

    .line 388
    div-double v20, v2, v10

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aput-wide v10, v4, v8

    .line 390
    if-eq v8, v7, :cond_37

    .line 391
    move-wide/from16 v0, v20

    neg-double v2, v0

    add-int/lit8 v4, v8, -0x1

    aget-wide v10, v12, v4

    mul-double/2addr v2, v10

    .line 392
    add-int/lit8 v4, v8, -0x1

    add-int/lit8 v9, v8, -0x1

    aget-wide v10, v12, v9

    mul-double v10, v10, v18

    aput-wide v10, v12, v4

    .line 394
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->b:Z

    if-eqz v4, :cond_38

    .line 395
    const/4 v4, 0x0

    :goto_2c
    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v4, v9, :cond_38

    .line 396
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v9, v9, v4

    aget-wide v10, v9, v8

    mul-double v10, v10, v18

    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v9, v9, v4

    add-int/lit8 v22, v6, -0x1

    aget-wide v22, v9, v22

    mul-double v22, v22, v20

    add-double v10, v10, v22

    .line 397
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v9, v9, v4

    add-int/lit8 v22, v6, -0x1

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    move-object/from16 v23, v0

    aget-object v23, v23, v4

    aget-wide v26, v23, v8

    mul-double v24, v24, v26

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    move-object/from16 v23, v0

    aget-object v23, v23, v4

    add-int/lit8 v26, v6, -0x1

    aget-wide v26, v23, v26

    mul-double v26, v26, v18

    add-double v24, v24, v26

    aput-wide v24, v9, v22

    .line 398
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v9, v9, v4

    aput-wide v10, v9, v8

    .line 395
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 385
    :cond_38
    add-int/lit8 v4, v8, -0x1

    move v8, v4

    goto/16 :goto_2b

    :cond_39
    move v2, v5

    move v3, v6

    .line 403
    goto/16 :goto_26

    .line 408
    :pswitch_1
    add-int/lit8 v2, v7, -0x1

    aget-wide v2, v12, v2

    .line 409
    add-int/lit8 v4, v7, -0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v12, v4

    move-wide v8, v2

    move v3, v7

    .line 410
    :goto_2d
    if-ge v3, v6, :cond_3b

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v10, v2, v3

    invoke-static {v10, v11, v8, v9}, LCatalano/Math/Tools;->Hypotenuse(DD)D

    move-result-wide v10

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v18, v2, v3

    div-double v18, v18, v10

    .line 413
    div-double v20, v8, v10

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aput-wide v10, v2, v3

    .line 415
    move-wide/from16 v0, v20

    neg-double v8, v0

    aget-wide v10, v12, v3

    mul-double/2addr v8, v10

    .line 416
    aget-wide v10, v12, v3

    mul-double v10, v10, v18

    aput-wide v10, v12, v3

    .line 417
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->a:Z

    if-eqz v2, :cond_3a

    .line 418
    const/4 v2, 0x0

    :goto_2e
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v2, v4, :cond_3a

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    aget-wide v10, v4, v3

    mul-double v10, v10, v18

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    add-int/lit8 v22, v7, -0x1

    aget-wide v22, v4, v22

    mul-double v22, v22, v20

    add-double v10, v10, v22

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    add-int/lit8 v22, v7, -0x1

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    move-object/from16 v23, v0

    aget-object v23, v23, v2

    aget-wide v26, v23, v3

    mul-double v24, v24, v26

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    move-object/from16 v23, v0

    aget-object v23, v23, v2

    add-int/lit8 v26, v7, -0x1

    aget-wide v26, v23, v26

    mul-double v26, v26, v18

    add-double v24, v24, v26

    aput-wide v24, v4, v22

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    aput-wide v10, v4, v3

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 410
    :cond_3a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2d

    :cond_3b
    move v2, v5

    move v3, v6

    .line 426
    goto/16 :goto_26

    .line 434
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v3, v6, -0x1

    aget-wide v2, v2, v3

    .line 435
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v8, v6, -0x2

    aget-wide v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 434
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    add-int/lit8 v4, v6, -0x2

    aget-wide v8, v12, v4

    .line 435
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 434
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v8, v4, v7

    .line 436
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 434
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aget-wide v8, v12, v7

    .line 436
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 434
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v8, v6, -0x1

    aget-wide v8, v4, v8

    div-double v10, v8, v2

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v8, v6, -0x2

    aget-wide v8, v4, v8

    div-double/2addr v8, v2

    .line 439
    add-int/lit8 v4, v6, -0x2

    aget-wide v18, v12, v4

    div-double v18, v18, v2

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v20, v4, v7

    div-double v20, v20, v2

    .line 441
    aget-wide v22, v12, v7

    div-double v22, v22, v2

    .line 442
    add-double v2, v8, v10

    sub-double/2addr v8, v10

    mul-double/2addr v2, v8

    mul-double v8, v18, v18

    add-double/2addr v2, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v24, v2, v8

    .line 443
    mul-double v2, v10, v18

    mul-double v8, v10, v18

    mul-double v18, v2, v8

    .line 444
    const-wide/16 v2, 0x0

    .line 445
    const-wide/16 v8, 0x0

    cmpl-double v4, v24, v8

    if-eqz v4, :cond_3f

    const/4 v4, 0x1

    move v8, v4

    :goto_2f
    const-wide/16 v26, 0x0

    cmpl-double v4, v18, v26

    if-eqz v4, :cond_40

    const/4 v4, 0x1

    :goto_30
    or-int/2addr v4, v8

    if-eqz v4, :cond_3d

    .line 446
    mul-double v2, v24, v24

    add-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 447
    const-wide/16 v8, 0x0

    cmpg-double v4, v24, v8

    if-gez v4, :cond_3c

    .line 448
    neg-double v2, v2

    .line 450
    :cond_3c
    add-double v2, v2, v24

    div-double v2, v18, v2

    .line 452
    :cond_3d
    add-double v8, v20, v10

    sub-double v10, v20, v10

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    .line 453
    mul-double v2, v20, v22

    move-wide v10, v8

    move-wide v8, v2

    move v3, v7

    .line 457
    :goto_31
    add-int/lit8 v2, v6, -0x1

    if-ge v3, v2, :cond_43

    .line 458
    invoke-static {v10, v11, v8, v9}, LCatalano/Math/Tools;->Hypotenuse(DD)D

    move-result-wide v18

    .line 459
    div-double v10, v10, v18

    .line 460
    div-double v8, v8, v18

    .line 461
    if-eq v3, v7, :cond_3e

    .line 462
    add-int/lit8 v2, v3, -0x1

    aput-wide v18, v12, v2

    .line 464
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v18, v2, v3

    mul-double v18, v18, v10

    aget-wide v20, v12, v3

    mul-double v20, v20, v8

    add-double v18, v18, v20

    .line 465
    aget-wide v20, v12, v3

    mul-double v20, v20, v10

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v22, v2, v3

    mul-double v22, v22, v8

    sub-double v20, v20, v22

    aput-wide v20, v12, v3

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v4, v3, 0x1

    aget-wide v20, v2, v4

    mul-double v20, v20, v8

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    move-object/from16 v22, v0

    add-int/lit8 v23, v3, 0x1

    aget-wide v22, v22, v23

    mul-double v22, v22, v10

    aput-wide v22, v2, v4

    .line 468
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->b:Z

    if-eqz v2, :cond_41

    .line 469
    const/4 v2, 0x0

    :goto_32
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v2, v4, :cond_41

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v4, v4, v2

    aget-wide v22, v4, v3

    mul-double v22, v22, v10

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v4, v4, v2

    add-int/lit8 v24, v3, 0x1

    aget-wide v24, v4, v24

    mul-double v24, v24, v8

    add-double v22, v22, v24

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v4, v4, v2

    add-int/lit8 v24, v3, 0x1

    neg-double v0, v8

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    move-object/from16 v25, v0

    aget-object v25, v25, v2

    aget-wide v28, v25, v3

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    move-object/from16 v25, v0

    aget-object v25, v25, v2

    add-int/lit8 v28, v3, 0x1

    aget-wide v28, v25, v28

    mul-double v28, v28, v10

    add-double v26, v26, v28

    aput-wide v26, v4, v24

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v4, v4, v2

    aput-wide v22, v4, v3

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 445
    :cond_3f
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_2f

    :cond_40
    const/4 v4, 0x0

    goto/16 :goto_30

    .line 475
    :cond_41
    invoke-static/range {v18 .. v21}, LCatalano/Math/Tools;->Hypotenuse(DD)D

    move-result-wide v8

    .line 476
    div-double v18, v18, v8

    .line 477
    div-double v20, v20, v8

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aput-wide v8, v2, v3

    .line 479
    aget-wide v8, v12, v3

    mul-double v8, v8, v18

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v4, v3, 0x1

    aget-wide v10, v2, v4

    mul-double v10, v10, v20

    add-double/2addr v10, v8

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v4, v3, 0x1

    move-wide/from16 v0, v20

    neg-double v8, v0

    aget-wide v22, v12, v3

    mul-double v8, v8, v22

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    move-object/from16 v22, v0

    add-int/lit8 v23, v3, 0x1

    aget-wide v22, v22, v23

    mul-double v22, v22, v18

    add-double v8, v8, v22

    aput-wide v8, v2, v4

    .line 481
    add-int/lit8 v2, v3, 0x1

    aget-wide v8, v12, v2

    mul-double v8, v8, v20

    .line 482
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v4, v3, 0x1

    aget-wide v22, v12, v4

    mul-double v22, v22, v18

    aput-wide v22, v12, v2

    .line 483
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->a:Z

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_42

    .line 484
    const/4 v2, 0x0

    :goto_33
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v2, v4, :cond_42

    .line 485
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    aget-wide v22, v4, v3

    mul-double v22, v22, v18

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    add-int/lit8 v24, v3, 0x1

    aget-wide v24, v4, v24

    mul-double v24, v24, v20

    add-double v22, v22, v24

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    add-int/lit8 v24, v3, 0x1

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    move-object/from16 v25, v0

    aget-object v25, v25, v2

    aget-wide v28, v25, v3

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    move-object/from16 v25, v0

    aget-object v25, v25, v2

    add-int/lit8 v28, v3, 0x1

    aget-wide v28, v25, v28

    mul-double v28, v28, v18

    add-double v26, v26, v28

    aput-wide v26, v4, v24

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    aput-wide v22, v4, v3

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 457
    :cond_42
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_31

    .line 491
    :cond_43
    add-int/lit8 v2, v6, -0x2

    aput-wide v10, v12, v2

    .line 492
    add-int/lit8 v2, v5, 0x1

    move v3, v6

    .line 494
    goto/16 :goto_26

    .line 501
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v2, v2, v7

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_4a

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v2, v2, v7

    const-wide/16 v8, 0x0

    cmpg-double v2, v2, v8

    if-gez v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v2, v2, v7

    neg-double v2, v2

    :goto_34
    aput-wide v2, v4, v7

    .line 503
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->b:Z

    if-eqz v2, :cond_4a

    .line 504
    const/4 v2, 0x0

    :goto_35
    if-gt v2, v13, :cond_4a

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v3, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v7

    neg-double v4, v4

    aput-wide v4, v3, v7

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 502
    :cond_44
    const-wide/16 v2, 0x0

    goto :goto_34

    .line 532
    :cond_45
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .line 511
    :goto_36
    if-ge v3, v13, :cond_46

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v7, v3, 0x1

    aget-wide v8, v2, v7

    cmpl-double v2, v4, v8

    if-ltz v2, :cond_47

    .line 534
    :cond_46
    const/4 v2, 0x0

    .line 535
    add-int/lit8 v3, v6, -0x1

    goto/16 :goto_26

    .line 515
    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v4, v2, v3

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v8, v3, 0x1

    aget-wide v8, v7, v8

    aput-wide v8, v2, v3

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    add-int/lit8 v7, v3, 0x1

    aput-wide v4, v2, v7

    .line 518
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->b:Z

    if-eqz v2, :cond_48

    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_48

    .line 519
    const/4 v2, 0x0

    :goto_37
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v2, v4, :cond_48

    .line 520
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v4, v4, v2

    add-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    .line 521
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v7, v7, v2

    add-int/lit8 v8, v3, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v9, v9, v2

    aget-wide v10, v9, v3

    aput-wide v10, v7, v8

    .line 522
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v7, v7, v2

    neg-double v4, v4

    aput-wide v4, v7, v3

    .line 519
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 525
    :cond_48
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->a:Z

    if-eqz v2, :cond_45

    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_45

    .line 526
    const/4 v2, 0x0

    :goto_38
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    if-ge v2, v4, :cond_45

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v4, v4, v2

    add-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    .line 528
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v7, v7, v2

    add-int/lit8 v8, v3, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v9, v9, v2

    aget-wide v10, v9, v3

    aput-wide v10, v7, v8

    .line 529
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v7, v7, v2

    aput-wide v4, v7, v3

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 540
    :cond_49
    return-void

    :cond_4a
    move v3, v7

    goto/16 :goto_36

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cond()D
    .locals 5

    .prologue
    .line 605
    iget-object v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    iget v3, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    iget v4, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getS()[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 580
    iget v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    iget v1, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 581
    :goto_0
    iget v3, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 582
    :goto_1
    iget v4, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    if-ge v3, v4, :cond_0

    .line 583
    aget-object v4, v0, v1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    .line 582
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 585
    :cond_0
    aget-object v3, v0, v1

    iget-object v4, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v4, v4, v1

    aput-wide v4, v3, v1

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    :cond_1
    return-object v0
.end method

.method public getSingularValues()[D
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    return-object v0
.end method

.method public getU()[[D
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    return-object v0
.end method

.method public getV()[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 555
    iget v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    iget v1, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 557
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 558
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 559
    aget-object v4, v0, v1

    iget-object v5, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 558
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 557
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    :cond_1
    return-object v0
.end method

.method public inverse()[[D
    .locals 14

    .prologue
    .line 630
    invoke-virtual {p0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->threshold()D

    move-result-wide v4

    .line 633
    iget-object v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    array-length v7, v0

    .line 634
    iget-object v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v3, v0

    .line 635
    iget-object v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    array-length v0, v0

    filled-new-array {v7, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 636
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_2

    .line 638
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 640
    iget-object v6, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v8, v6, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v6, v8, v4

    if-lez v6, :cond_0

    .line 641
    aget-object v6, v0, v2

    iget-object v8, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->d:[[D

    aget-object v8, v8, v2

    aget-wide v8, v8, v1

    iget-object v10, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v10, v10, v1

    div-double/2addr v8, v10

    aput-wide v8, v6, v1

    .line 638
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 636
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 646
    :cond_2
    iget-object v1, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    array-length v8, v1

    .line 647
    iget-object v1, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v9, v1

    .line 648
    filled-new-array {v7, v8}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 649
    const/4 v2, 0x0

    move v6, v2

    :goto_2
    if-ge v6, v7, :cond_5

    .line 651
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, v8, :cond_4

    .line 653
    const-wide/16 v4, 0x0

    .line 654
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v9, :cond_3

    .line 655
    aget-object v10, v0, v6

    aget-wide v10, v10, v2

    iget-object v12, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->c:[[D

    aget-object v12, v12, v3

    aget-wide v12, v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 656
    :cond_3
    aget-object v2, v1, v6

    aput-wide v4, v2, v3

    .line 651
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 649
    :cond_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    .line 660
    :cond_5
    return-object v1
.end method

.method public isWantU()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->a:Z

    return v0
.end method

.method public isWantV()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->b:Z

    return v0
.end method

.method public norm2()D
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public rank()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 613
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, -0x3fb6000000000000L    # -52.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 614
    iget v1, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    iget v4, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v4, v1

    iget-object v1, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v6, v1, v0

    mul-double/2addr v4, v6

    mul-double/2addr v2, v4

    move v1, v0

    .line 616
    :goto_0
    iget-object v4, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 617
    iget-object v4, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    aget-wide v4, v4, v0

    cmpl-double v4, v4, v2

    if-lez v4, :cond_0

    .line 618
    add-int/lit8 v1, v1, 0x1

    .line 616
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_1
    return v1
.end method

.method public setWantU(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->a:Z

    .line 82
    return-void
.end method

.method public setWantV(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->b:Z

    .line 98
    return-void
.end method

.method public threshold()D
    .locals 4

    .prologue
    .line 625
    const-wide/high16 v0, 0x3ca0000000000000L

    iget v2, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->f:I

    iget v3, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->g:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget-object v2, p0, LCatalano/Math/Decompositions/SingularValueDecomposition;->e:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    mul-double/2addr v0, v2

    return-wide v0
.end method
