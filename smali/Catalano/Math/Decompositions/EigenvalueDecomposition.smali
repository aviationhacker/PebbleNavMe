.class public LCatalano/Math/Decompositions/EigenvalueDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Z

.field private c:[D

.field private d:[D

.field private e:[[D

.field private f:[[D

.field private g:[D

.field private transient h:D

.field private transient i:D


# direct methods
.method public constructor <init>([[D)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    aget-object v0, p1, v1

    array-length v0, v0

    iput v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    .line 70
    iget v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    iget v2, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    .line 71
    iget v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    new-array v0, v0, [D

    iput-object v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    .line 72
    iget v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    new-array v0, v0, [D

    iput-object v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    .line 74
    iput-boolean v3, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->b:Z

    move v0, v1

    .line 75
    :goto_0
    iget v2, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v0, v2, :cond_0

    move v2, v3

    :goto_1
    iget-boolean v4, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->b:Z

    and-int/2addr v2, v4

    if-eqz v2, :cond_4

    move v2, v1

    .line 76
    :goto_2
    iget v4, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v2, v4, :cond_1

    move v4, v3

    :goto_3
    iget-boolean v5, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->b:Z

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 77
    aget-object v4, p1, v2

    aget-wide v4, v4, v0

    aget-object v6, p1, v0

    aget-wide v6, v6, v2

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move v4, v3

    :goto_4
    iput-boolean v4, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->b:Z

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v2, v1

    .line 75
    goto :goto_1

    :cond_1
    move v4, v1

    .line 76
    goto :goto_3

    :cond_2
    move v4, v1

    .line 77
    goto :goto_4

    .line 75
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_4
    iget-boolean v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->b:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 82
    :goto_5
    iget v2, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v0, v2, :cond_6

    move v2, v1

    .line 83
    :goto_6
    iget v3, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v2, v3, :cond_5

    .line 84
    iget-object v3, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v3, v3, v0

    aget-object v4, p1, v0

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 82
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 89
    :cond_6
    invoke-direct {p0}, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a()V

    .line 92
    invoke-direct {p0}, LCatalano/Math/Decompositions/EigenvalueDecomposition;->b()V

    .line 110
    :goto_7
    return-void

    .line 95
    :cond_7
    iget v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    iget v2, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    .line 96
    iget v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    new-array v0, v0, [D

    iput-object v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    move v0, v1

    .line 98
    :goto_8
    iget v2, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v0, v2, :cond_9

    move v2, v1

    .line 99
    :goto_9
    iget v3, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v2, v3, :cond_8

    .line 100
    iget-object v3, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    aget-object v4, p1, v2

    aget-wide v4, v4, v0

    aput-wide v4, v3, v0

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 98
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 105
    :cond_9
    invoke-direct {p0}, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c()V

    .line 108
    invoke-direct {p0}, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d()V

    goto :goto_7
.end method

.method private a()V
    .locals 19

    .prologue
    .line 122
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v2, v3, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    add-int/lit8 v2, v2, -0x1

    move v8, v2

    :goto_1
    if-lez v8, :cond_d

    .line 132
    const-wide/16 v6, 0x0

    .line 133
    const-wide/16 v2, 0x0

    .line 134
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v10, v5, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    add-double/2addr v6, v10

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 137
    :cond_1
    const-wide/16 v4, 0x0

    cmpl-double v4, v6, v4

    if-nez v4, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    add-int/lit8 v6, v8, -0x1

    aget-wide v6, v5, v6

    aput-wide v6, v4, v8

    .line 139
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v8, :cond_c

    .line 140
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    add-int/lit8 v7, v8, -0x1

    aget-object v6, v6, v7

    aget-wide v6, v6, v4

    aput-wide v6, v5, v4

    .line 141
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v5, v5, v8

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v5, v5, v4

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v8

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 148
    :cond_2
    const/4 v4, 0x0

    move/from16 v18, v4

    move-wide v4, v2

    move/from16 v2, v18

    :goto_4
    if-ge v2, v8, :cond_3

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v10, v3, v2

    div-double/2addr v10, v6

    aput-wide v10, v3, v2

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v10, v3, v2

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v12, v3, v2

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 152
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    add-int/lit8 v3, v8, -0x1

    aget-wide v10, v2, v3

    .line 153
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 154
    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_4

    .line 155
    neg-double v2, v2

    .line 157
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    mul-double/2addr v6, v2

    aput-wide v6, v9, v8

    .line 158
    mul-double v6, v10, v2

    sub-double/2addr v4, v6

    .line 159
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    add-int/lit8 v7, v8, -0x1

    sub-double v2, v10, v2

    aput-wide v2, v6, v7

    .line 160
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v8, :cond_5

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    const-wide/16 v6, 0x0

    aput-wide v6, v3, v2

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 166
    :cond_5
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v8, :cond_7

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v10, v2, v3

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v2, v2, v3

    aput-wide v10, v2, v8

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v6, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v2, v2, v3

    aget-wide v12, v2, v3

    mul-double/2addr v12, v10

    add-double/2addr v6, v12

    .line 170
    add-int/lit8 v2, v3, 0x1

    :goto_7
    add-int/lit8 v9, v8, -0x1

    if-gt v2, v9, :cond_6

    .line 171
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v9, v9, v2

    aget-wide v12, v9, v3

    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v14, v9, v2

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 172
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v12, v9, v2

    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v14, v14, v2

    aget-wide v14, v14, v3

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    aput-wide v12, v9, v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 174
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aput-wide v6, v2, v3

    .line 166
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 176
    :cond_7
    const-wide/16 v6, 0x0

    .line 177
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v8, :cond_8

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v10, v3, v2

    div-double/2addr v10, v4

    aput-wide v10, v3, v2

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v10, v3, v2

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v12, v3, v2

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 181
    :cond_8
    add-double v2, v4, v4

    div-double/2addr v6, v2

    .line 182
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v8, :cond_9

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v10, v3, v2

    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v12, v9, v2

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    aput-wide v10, v3, v2

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 185
    :cond_9
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v8, :cond_b

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v6, v2, v3

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v10, v2, v3

    move v2, v3

    .line 188
    :goto_b
    add-int/lit8 v9, v8, -0x1

    if-gt v2, v9, :cond_a

    .line 189
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v9, v9, v2

    aget-wide v12, v9, v3

    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v14, v14, v2

    mul-double/2addr v14, v6

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v2

    mul-double v16, v16, v10

    add-double v14, v14, v16

    sub-double/2addr v12, v14

    aput-wide v12, v9, v3

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 191
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    add-int/lit8 v7, v8, -0x1

    aget-object v6, v6, v7

    aget-wide v6, v6, v3

    aput-wide v6, v2, v3

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v2, v2, v8

    const-wide/16 v6, 0x0

    aput-wide v6, v2, v3

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    move-wide v2, v4

    .line 195
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aput-wide v2, v4, v8

    .line 128
    add-int/lit8 v2, v8, -0x1

    move v8, v2

    goto/16 :goto_1

    .line 199
    :cond_d
    const/4 v2, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_13

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v3, v3, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v2

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, v3, v4

    .line 203
    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_11

    .line 204
    const/4 v3, 0x0

    :goto_d
    if-gt v3, v2, :cond_e

    .line 205
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v7, v7, v3

    add-int/lit8 v8, v2, 0x1

    aget-wide v8, v7, v8

    div-double/2addr v8, v4

    aput-wide v8, v6, v3

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 207
    :cond_e
    const/4 v3, 0x0

    move v6, v3

    :goto_e
    if-gt v6, v2, :cond_11

    .line 208
    const-wide/16 v4, 0x0

    .line 209
    const/4 v3, 0x0

    :goto_f
    if-gt v3, v2, :cond_f

    .line 210
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v7, v7, v3

    add-int/lit8 v8, v2, 0x1

    aget-wide v8, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v7, v7, v3

    aget-wide v10, v7, v6

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 212
    :cond_f
    const/4 v3, 0x0

    :goto_10
    if-gt v3, v2, :cond_10

    .line 213
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v7, v7, v3

    aget-wide v8, v7, v6

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v10, v10, v3

    mul-double/2addr v10, v4

    sub-double/2addr v8, v10

    aput-wide v8, v7, v6

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 207
    :cond_10
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_e

    .line 217
    :cond_11
    const/4 v3, 0x0

    :goto_11
    if-gt v3, v2, :cond_12

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v4, v4, v3

    add-int/lit8 v5, v2, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 199
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 221
    :cond_13
    const/4 v2, 0x0

    :goto_12
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v2, v3, :cond_14

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 225
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    add-int/lit8 v3, v3, -0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 227
    return-void
.end method

.method private a(DDDD)V
    .locals 7

    .prologue
    .line 449
    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p7, p8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 450
    div-double v0, p7, p5

    .line 451
    mul-double v2, v0, p7

    add-double/2addr v2, p5

    .line 452
    mul-double v4, v0, p3

    add-double/2addr v4, p1

    div-double/2addr v4, v2

    iput-wide v4, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->h:D

    .line 453
    mul-double/2addr v0, p1

    sub-double v0, p3, v0

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->i:D

    .line 460
    :goto_0
    return-void

    .line 455
    :cond_0
    div-double v0, p5, p7

    .line 456
    mul-double v2, v0, p5

    add-double/2addr v2, p7

    .line 457
    mul-double v4, v0, p1

    add-double/2addr v4, p3

    div-double/2addr v4, v2

    iput-wide v4, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->h:D

    .line 458
    mul-double/2addr v0, p3

    sub-double/2addr v0, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->i:D

    goto :goto_0
.end method

.method private b()V
    .locals 42

    .prologue
    .line 239
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v2, v3, :cond_0

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    add-int/lit8 v4, v2, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v6, v5, v2

    aput-wide v6, v3, v4

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    add-int/lit8 v3, v3, -0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 244
    const-wide/16 v6, 0x0

    .line 245
    const-wide/16 v4, 0x0

    .line 246
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, -0x3fb6000000000000L    # -52.0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    .line 247
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v2, v3, :cond_9

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v8, v3, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v10, v3, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move v3, v2

    .line 253
    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v3, v8, :cond_1

    .line 254
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v8, v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    mul-double v10, v24, v4

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_4

    .line 263
    :cond_1
    if-le v3, v2, :cond_8

    .line 264
    const/4 v8, 0x0

    move/from16 v38, v8

    move-wide v8, v6

    move/from16 v6, v38

    .line 266
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 270
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v12, v7, v2

    .line 271
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    add-int/lit8 v10, v2, 0x1

    aget-wide v10, v7, v10

    sub-double/2addr v10, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v16, v7, v2

    mul-double v14, v14, v16

    div-double v14, v10, v14

    .line 272
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    .line 273
    const-wide/16 v16, 0x0

    cmpg-double v7, v14, v16

    if-gez v7, :cond_3

    .line 274
    neg-double v10, v10

    .line 276
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v2

    add-double v18, v14, v10

    div-double v16, v16, v18

    aput-wide v16, v7, v2

    .line 277
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    add-int/lit8 v16, v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    move-object/from16 v17, v0

    aget-wide v18, v17, v2

    add-double/2addr v10, v14

    mul-double v10, v10, v18

    aput-wide v10, v7, v16

    .line 278
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    add-int/lit8 v10, v2, 0x1

    aget-wide v26, v7, v10

    .line 279
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v10, v7, v2

    sub-double v10, v12, v10

    .line 280
    add-int/lit8 v7, v2, 0x2

    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v7, v12, :cond_5

    .line 281
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v14, v12, v7

    sub-double/2addr v14, v10

    aput-wide v14, v12, v7

    .line 280
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 257
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 283
    :cond_5
    add-double/2addr v8, v10

    .line 287
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v16, v7, v3

    .line 288
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 291
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    add-int/lit8 v10, v2, 0x1

    aget-wide v28, v7, v10

    .line 292
    const-wide/16 v14, 0x0

    .line 293
    const-wide/16 v10, 0x0

    .line 294
    add-int/lit8 v7, v3, -0x1

    move-wide/from16 v18, v12

    move-wide/from16 v20, v12

    move-wide/from16 v22, v16

    move-wide/from16 v16, v12

    move-wide v12, v10

    move v10, v7

    :goto_4
    if-lt v10, v2, :cond_7

    .line 298
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v12, v7, v10

    mul-double v30, v20, v12

    .line 299
    mul-double v32, v20, v22

    .line 300
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v12, v7, v10

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    .line 301
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    add-int/lit8 v11, v10, 0x1

    mul-double v12, v14, v16

    aput-wide v12, v7, v11

    .line 302
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v12, v7, v10

    div-double v12, v12, v16

    .line 303
    div-double v16, v22, v16

    .line 304
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v22, v7, v10

    mul-double v22, v22, v16

    mul-double v34, v12, v30

    sub-double v22, v22, v34

    .line 305
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    add-int/lit8 v11, v10, 0x1

    mul-double v30, v30, v16

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v34, v0

    aget-wide v34, v34, v10

    mul-double v34, v34, v12

    add-double v30, v30, v34

    mul-double v30, v30, v12

    add-double v30, v30, v32

    aput-wide v30, v7, v11

    .line 309
    const/4 v7, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v11, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v7, v11, :cond_6

    .line 310
    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v11, v11, v7

    add-int/lit8 v30, v10, 0x1

    aget-wide v30, v11, v30

    .line 311
    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v11, v11, v7

    add-int/lit8 v32, v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    move-object/from16 v33, v0

    aget-object v33, v33, v7

    aget-wide v34, v33, v10

    mul-double v34, v34, v12

    mul-double v36, v16, v30

    add-double v34, v34, v36

    aput-wide v34, v11, v32

    .line 312
    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v11, v11, v7

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    move-object/from16 v32, v0

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v16

    mul-double v30, v30, v12

    sub-double v30, v32, v30

    aput-wide v30, v11, v10

    .line 309
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 294
    :cond_6
    add-int/lit8 v7, v10, -0x1

    move v10, v7

    move-wide/from16 v38, v14

    move-wide v14, v12

    move-wide/from16 v12, v38

    move-wide/from16 v40, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v16

    move-wide/from16 v16, v40

    goto/16 :goto_4

    .line 315
    :cond_7
    neg-double v10, v14

    mul-double/2addr v10, v12

    mul-double v10, v10, v16

    mul-double v10, v10, v28

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v12, v7, v2

    mul-double/2addr v10, v12

    div-double v10, v10, v26

    .line 316
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    mul-double v12, v14, v10

    aput-wide v12, v7, v2

    .line 317
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    mul-double v10, v10, v20

    aput-wide v10, v7, v2

    .line 321
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v10, v7, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double v12, v24, v4

    cmpl-double v7, v10, v12

    if-gtz v7, :cond_2

    move-wide v6, v8

    .line 323
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v8, v8, v2

    add-double/2addr v8, v6

    aput-wide v8, v3, v2

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    const-wide/16 v8, 0x0

    aput-wide v8, v3, v2

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 329
    :cond_9
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_d

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v4, v3, v2

    .line 332
    add-int/lit8 v3, v2, 0x1

    move v6, v2

    :goto_7
    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v3, v7, :cond_b

    .line 333
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v8, v7, v3

    cmpg-double v7, v8, v4

    if-gez v7, :cond_a

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v4, v4, v3

    move v6, v3

    .line 332
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 338
    :cond_b
    if-eq v6, v2, :cond_c

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v8, v7, v2

    aput-wide v8, v3, v6

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aput-wide v4, v3, v2

    .line 341
    const/4 v3, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v3, v4, :cond_c

    .line 342
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v2

    .line 343
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v7, v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v8, v8, v3

    aget-wide v8, v8, v6

    aput-wide v8, v7, v2

    .line 344
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v7, v7, v3

    aput-wide v4, v7, v6

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 329
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 348
    :cond_d
    return-void
.end method

.method private c()V
    .locals 20

    .prologue
    .line 359
    .line 360
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    add-int/lit8 v7, v2, -0x1

    .line 362
    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v2, v7, -0x1

    if-gt v5, v2, :cond_a

    .line 366
    const-wide/16 v2, 0x0

    move-wide v10, v2

    move v2, v5

    .line 367
    :goto_1
    if-gt v2, v7, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    add-int/lit8 v4, v5, -0x1

    aget-wide v8, v3, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v8, v10

    .line 367
    add-int/lit8 v2, v2, 0x1

    move-wide v10, v8

    goto :goto_1

    .line 370
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, v10, v2

    if-eqz v2, :cond_9

    .line 374
    const-wide/16 v2, 0x0

    move-wide v8, v2

    move v2, v7

    .line 375
    :goto_2
    if-lt v2, v5, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v4, v4, v2

    add-int/lit8 v6, v5, -0x1

    aget-wide v12, v4, v6

    div-double/2addr v12, v10

    aput-wide v12, v3, v2

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v12, v3, v2

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v14, v3, v2

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 375
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 379
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v12, v4, v5

    const-wide/16 v14, 0x0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_2

    .line 381
    neg-double v2, v2

    .line 383
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v12, v4, v5

    mul-double/2addr v12, v2

    sub-double v12, v8, v12

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v8, v6, v5

    sub-double/2addr v8, v2

    aput-wide v8, v4, v5

    move v4, v5

    .line 389
    :goto_3
    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v4, v6, :cond_5

    .line 390
    const-wide/16 v8, 0x0

    move v6, v7

    .line 391
    :goto_4
    if-lt v6, v5, :cond_3

    .line 392
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v14, v14, v6

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    aget-wide v16, v16, v4

    mul-double v14, v14, v16

    add-double/2addr v8, v14

    .line 391
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 394
    :cond_3
    div-double/2addr v8, v12

    move v6, v5

    .line 395
    :goto_5
    if-gt v6, v7, :cond_4

    .line 396
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v14, v14, v6

    aget-wide v16, v14, v4

    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v18, v15, v6

    mul-double v18, v18, v8

    sub-double v16, v16, v18

    aput-wide v16, v14, v4

    .line 395
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 389
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 400
    :cond_5
    const/4 v4, 0x0

    move v6, v4

    :goto_6
    if-gt v6, v7, :cond_8

    .line 401
    const-wide/16 v8, 0x0

    move v4, v7

    .line 402
    :goto_7
    if-lt v4, v5, :cond_6

    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v14, v14, v4

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    aget-wide v16, v16, v4

    mul-double v14, v14, v16

    add-double/2addr v8, v14

    .line 402
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 405
    :cond_6
    div-double/2addr v8, v12

    move v4, v5

    .line 406
    :goto_8
    if-gt v4, v7, :cond_7

    .line 407
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v14, v14, v6

    aget-wide v16, v14, v4

    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v18, v15, v4

    mul-double v18, v18, v8

    sub-double v16, v16, v18

    aput-wide v16, v14, v4

    .line 406
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 400
    :cond_7
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_6

    .line 410
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v8, v6, v5

    mul-double/2addr v8, v10

    aput-wide v8, v4, v5

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v4, v4, v5

    add-int/lit8 v6, v5, -0x1

    mul-double/2addr v2, v10

    aput-wide v2, v4, v6

    .line 362
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 417
    :cond_a
    const/4 v2, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v2, v3, :cond_d

    .line 418
    const/4 v3, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v3, v4, :cond_c

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v6, v4, v2

    if-ne v2, v3, :cond_b

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_b
    aput-wide v4, v6, v3

    .line 418
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 419
    :cond_b
    const-wide/16 v4, 0x0

    goto :goto_b

    .line 417
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 423
    :cond_d
    add-int/lit8 v3, v7, -0x1

    :goto_c
    const/4 v2, 0x1

    if-lt v3, v2, :cond_12

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v3

    add-int/lit8 v4, v3, -0x1

    aget-wide v4, v2, v4

    const-wide/16 v8, 0x0

    cmpl-double v2, v4, v8

    if-eqz v2, :cond_11

    .line 425
    add-int/lit8 v2, v3, 0x1

    :goto_d
    if-gt v2, v7, :cond_e

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v5, v5, v2

    add-int/lit8 v6, v3, -0x1

    aget-wide v8, v5, v6

    aput-wide v8, v4, v2

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_e
    move v6, v3

    .line 428
    :goto_e
    if-gt v6, v7, :cond_11

    .line 429
    const-wide/16 v4, 0x0

    move v2, v3

    .line 430
    :goto_f
    if-gt v2, v7, :cond_f

    .line 431
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v8, v8, v2

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v6

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 434
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v8, v2, v3

    div-double/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v3

    add-int/lit8 v8, v3, -0x1

    aget-wide v8, v2, v8

    div-double/2addr v4, v8

    move v2, v3

    .line 435
    :goto_10
    if-gt v2, v7, :cond_10

    .line 436
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v8, v8, v2

    aget-wide v10, v8, v6

    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->g:[D

    aget-wide v12, v9, v2

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    aput-wide v10, v8, v6

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 428
    :cond_10
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_e

    .line 423
    :cond_11
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 441
    :cond_12
    return-void
.end method

.method private d()V
    .locals 44

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    move/from16 v32, v0

    .line 475
    add-int/lit8 v24, v32, -0x1

    .line 476
    const/16 v30, 0x0

    .line 477
    add-int/lit8 v33, v32, -0x1

    .line 478
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, -0x3fb6000000000000L    # -52.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v34

    .line 479
    const-wide/16 v20, 0x0

    .line 480
    const-wide/16 v18, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v14, 0x0

    .line 484
    const-wide/16 v22, 0x0

    .line 485
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    move/from16 v0, v32

    if-ge v4, v0, :cond_4

    .line 486
    move/from16 v0, v30

    if-ge v4, v0, :cond_1

    const/4 v2, 0x1

    move v3, v2

    :goto_1
    move/from16 v0, v33

    if-le v4, v0, :cond_2

    const/4 v2, 0x1

    :goto_2
    or-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v4

    aget-wide v8, v3, v4

    aput-wide v8, v2, v4

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    const-wide/16 v8, 0x0

    aput-wide v8, v2, v4

    .line 490
    :cond_0
    add-int/lit8 v2, v4, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_3
    move/from16 v0, v32

    if-ge v2, v0, :cond_3

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v4

    aget-wide v8, v3, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double v22, v22, v8

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 486
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 485
    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 497
    :cond_4
    const/4 v2, 0x0

    move/from16 v25, v2

    .line 498
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v30

    if-lt v0, v1, :cond_24

    move-wide/from16 v4, v26

    move/from16 v26, v24

    .line 503
    :goto_5
    move/from16 v0, v26

    move/from16 v1, v30

    if-le v0, v1, :cond_6

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v3, v26, -0x1

    aget-object v2, v2, v3

    add-int/lit8 v3, v26, -0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v4, v4, v26

    aget-wide v4, v4, v26

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 505
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_5

    move-wide/from16 v2, v22

    .line 508
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v4, v4, v26

    add-int/lit8 v5, v26, -0x1

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double v8, v34, v2

    cmpg-double v4, v4, v8

    if-gez v4, :cond_7

    move-wide v4, v2

    .line 517
    :cond_6
    move/from16 v0, v26

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v24

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v24

    aget-wide v8, v3, v24

    add-double v8, v8, v20

    aput-wide v8, v2, v24

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v24

    aget-wide v8, v3, v24

    aput-wide v8, v2, v24

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    const-wide/16 v8, 0x0

    aput-wide v8, v2, v24

    .line 521
    add-int/lit8 v3, v24, -0x1

    .line 522
    const/4 v2, 0x0

    move-wide v10, v14

    move-wide/from16 v8, v16

    move-wide/from16 v12, v18

    move-wide/from16 v14, v20

    :goto_6
    move/from16 v25, v2

    move-wide/from16 v26, v4

    move-wide/from16 v16, v8

    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    move/from16 v24, v3

    move-wide v14, v10

    .line 745
    goto/16 :goto_4

    .line 511
    :cond_7
    add-int/lit8 v4, v26, -0x1

    move/from16 v26, v4

    move-wide v4, v2

    goto/16 :goto_5

    .line 526
    :cond_8
    add-int/lit8 v2, v24, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_f

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v24

    add-int/lit8 v3, v24, -0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v9, v24, -0x1

    aget-object v8, v8, v9

    aget-wide v8, v8, v24

    mul-double v12, v2, v8

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v3, v24, -0x1

    aget-object v2, v2, v3

    add-int/lit8 v3, v24, -0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v8, v8, v24

    aget-wide v8, v8, v24

    sub-double/2addr v2, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v10, v2, v8

    .line 529
    mul-double v2, v10, v10

    add-double v8, v2, v12

    .line 530
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 531
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v14, v14, v24

    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v15, v15, v24

    aget-wide v16, v15, v24

    add-double v16, v16, v20

    aput-wide v16, v14, v24

    .line 532
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v15, v24, -0x1

    aget-object v14, v14, v15

    add-int/lit8 v15, v24, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v16, v0

    add-int/lit8 v17, v24, -0x1

    aget-object v16, v16, v17

    add-int/lit8 v17, v24, -0x1

    aget-wide v16, v16, v17

    add-double v16, v16, v20

    aput-wide v16, v14, v15

    .line 533
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v14, v14, v24

    aget-wide v14, v14, v24

    .line 537
    const-wide/16 v16, 0x0

    cmpl-double v16, v8, v16

    if-ltz v16, :cond_d

    .line 538
    const-wide/16 v4, 0x0

    cmpl-double v4, v10, v4

    if-ltz v4, :cond_a

    .line 539
    add-double/2addr v2, v10

    .line 543
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    add-int/lit8 v5, v24, -0x1

    add-double v6, v14, v2

    aput-wide v6, v4, v5

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    add-int/lit8 v6, v24, -0x1

    aget-wide v6, v5, v6

    aput-wide v6, v4, v24

    .line 545
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_9

    .line 546
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    div-double v6, v12, v2

    sub-double v6, v14, v6

    aput-wide v6, v4, v24

    .line 548
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    add-int/lit8 v5, v24, -0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v24

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v4, v4, v24

    add-int/lit8 v5, v24, -0x1

    aget-wide v6, v4, v5

    .line 551
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 552
    div-double v8, v6, v4

    .line 553
    div-double v12, v2, v4

    .line 554
    mul-double v6, v8, v8

    mul-double v10, v12, v12

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 555
    div-double v10, v8, v6

    .line 556
    div-double v8, v12, v6

    .line 560
    add-int/lit8 v12, v24, -0x1

    move/from16 v42, v12

    move-wide v12, v2

    move/from16 v2, v42

    :goto_8
    move/from16 v0, v32

    if-ge v2, v0, :cond_b

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v12, v24, -0x1

    aget-object v3, v3, v12

    aget-wide v12, v3, v2

    .line 562
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v14, v24, -0x1

    aget-object v3, v3, v14

    mul-double v14, v8, v12

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v16, v0

    aget-object v16, v16, v24

    aget-wide v16, v16, v2

    mul-double v16, v16, v10

    add-double v14, v14, v16

    aput-wide v14, v3, v2

    .line 563
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v24

    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v14, v14, v24

    aget-wide v14, v14, v2

    mul-double/2addr v14, v8

    mul-double v16, v10, v12

    sub-double v14, v14, v16

    aput-wide v14, v3, v2

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 541
    :cond_a
    sub-double v2, v10, v2

    goto/16 :goto_7

    .line 568
    :cond_b
    const/4 v2, 0x0

    move/from16 v42, v2

    move-wide v2, v12

    move/from16 v12, v42

    :goto_9
    move/from16 v0, v24

    if-gt v12, v0, :cond_c

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v12

    add-int/lit8 v3, v24, -0x1

    aget-wide v14, v2, v3

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v12

    add-int/lit8 v3, v24, -0x1

    mul-double v16, v8, v14

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v13, v13, v12

    aget-wide v18, v13, v24

    mul-double v18, v18, v10

    add-double v16, v16, v18

    aput-wide v16, v2, v3

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v12

    aget-wide v16, v3, v24

    mul-double v16, v16, v8

    mul-double v18, v10, v14

    sub-double v16, v16, v18

    aput-wide v16, v2, v24

    .line 568
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move-wide v2, v14

    goto :goto_9

    :cond_c
    move/from16 v12, v30

    .line 576
    :goto_a
    move/from16 v0, v33

    if-gt v12, v0, :cond_e

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v2, v2, v12

    add-int/lit8 v3, v24, -0x1

    aget-wide v14, v2, v3

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v2, v2, v12

    add-int/lit8 v3, v24, -0x1

    mul-double v16, v8, v14

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v13, v13, v12

    aget-wide v18, v13, v24

    mul-double v18, v18, v10

    add-double v16, v16, v18

    aput-wide v16, v2, v3

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v3, v3, v12

    aget-wide v16, v3, v24

    mul-double v16, v16, v8

    mul-double v18, v10, v14

    sub-double v16, v16, v18

    aput-wide v16, v2, v24

    .line 576
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move-wide v2, v14

    goto :goto_a

    .line 585
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    add-int/lit8 v13, v24, -0x1

    add-double v16, v14, v10

    aput-wide v16, v12, v13

    .line 586
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    add-double/2addr v14, v10

    aput-wide v14, v12, v24

    .line 587
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    add-int/lit8 v13, v24, -0x1

    aput-wide v2, v12, v13

    .line 588
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    neg-double v14, v2

    aput-wide v14, v12, v24

    .line 590
    :cond_e
    add-int/lit8 v13, v24, -0x2

    .line 591
    const/4 v12, 0x0

    move-wide/from16 v14, v20

    move-wide/from16 v42, v2

    move v2, v12

    move v3, v13

    move-wide v12, v10

    move-wide/from16 v10, v42

    goto/16 :goto_6

    .line 599
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v24

    aget-wide v8, v2, v24

    .line 600
    const-wide/16 v2, 0x0

    .line 601
    const-wide/16 v10, 0x0

    .line 602
    move/from16 v0, v26

    move/from16 v1, v24

    if-ge v0, v1, :cond_10

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v3, v24, -0x1

    aget-object v2, v2, v3

    add-int/lit8 v3, v24, -0x1

    aget-wide v2, v2, v3

    .line 604
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v10, v10, v24

    add-int/lit8 v11, v24, -0x1

    aget-wide v10, v10, v11

    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v13, v24, -0x1

    aget-object v12, v12, v13

    aget-wide v12, v12, v24

    mul-double/2addr v10, v12

    .line 609
    :cond_10
    const/16 v12, 0xa

    move/from16 v0, v25

    if-ne v0, v12, :cond_45

    .line 610
    add-double v12, v20, v8

    move/from16 v2, v30

    .line 611
    :goto_b
    move/from16 v0, v24

    if-gt v2, v0, :cond_11

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v2

    sub-double/2addr v4, v8

    aput-wide v4, v3, v2

    .line 611
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 614
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v24

    add-int/lit8 v3, v24, -0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v5, v24, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v24, -0x2

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 615
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v2

    .line 616
    const-wide/high16 v8, -0x4024000000000000L    # -0.4375

    mul-double/2addr v8, v2

    mul-double v10, v8, v2

    move-wide v8, v4

    .line 621
    :goto_c
    const/16 v20, 0x1e

    move/from16 v0, v25

    move/from16 v1, v20

    if-ne v0, v1, :cond_44

    .line 622
    sub-double v2, v4, v8

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v2, v2, v20

    .line 623
    mul-double/2addr v2, v2

    add-double/2addr v2, v10

    .line 624
    const-wide/16 v20, 0x0

    cmpl-double v20, v2, v20

    if-lez v20, :cond_44

    .line 625
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 626
    cmpg-double v20, v4, v8

    if-gez v20, :cond_12

    .line 627
    neg-double v2, v2

    .line 629
    :cond_12
    sub-double/2addr v4, v8

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v4, v4, v20

    add-double/2addr v2, v4

    div-double v2, v10, v2

    sub-double v4, v8, v2

    move/from16 v2, v30

    .line 630
    :goto_d
    move/from16 v0, v24

    if-gt v2, v0, :cond_13

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    aget-wide v8, v3, v2

    sub-double/2addr v8, v4

    aput-wide v8, v3, v2

    .line 630
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 633
    :cond_13
    add-double v8, v12, v4

    .line 634
    const-wide v2, 0x3feed916872b020cL    # 0.964

    move-wide v10, v4

    move-wide v12, v8

    move-wide v4, v2

    move-wide v8, v2

    .line 638
    :goto_e
    add-int/lit8 v20, v25, 0x1

    .line 642
    add-int/lit8 v25, v24, -0x2

    move-wide/from16 v42, v14

    move-wide v14, v6

    move-wide/from16 v6, v42

    .line 643
    :goto_f
    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_43

    .line 644
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v6, v6, v25

    aget-wide v6, v6, v25

    .line 645
    sub-double v10, v4, v6

    .line 646
    sub-double v14, v2, v6

    .line 647
    mul-double v16, v10, v14

    sub-double v16, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v18, v0

    add-int/lit8 v19, v25, 0x1

    aget-object v18, v18, v19

    aget-wide v18, v18, v25

    div-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v18, v0

    aget-object v18, v18, v25

    add-int/lit8 v19, v25, 0x1

    aget-wide v18, v18, v19

    add-double v16, v16, v18

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v18, v0

    add-int/lit8 v19, v25, 0x1

    aget-object v18, v18, v19

    add-int/lit8 v19, v25, 0x1

    aget-wide v18, v18, v19

    sub-double v18, v18, v6

    sub-double v10, v18, v10

    sub-double v14, v10, v14

    .line 649
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v11, v25, 0x2

    aget-object v10, v10, v11

    add-int/lit8 v11, v25, 0x1

    aget-wide v28, v10, v11

    .line 650
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    add-double v10, v10, v18

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    add-double v10, v10, v18

    .line 651
    div-double v18, v16, v10

    .line 652
    div-double v16, v14, v10

    .line 653
    div-double v14, v28, v10

    .line 654
    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    move-wide v2, v6

    move-wide v8, v14

    move-wide v6, v10

    move-wide/from16 v14, v18

    move-wide/from16 v10, v16

    .line 665
    :goto_10
    add-int/lit8 v16, v25, 0x2

    :goto_11
    move/from16 v0, v16

    move/from16 v1, v24

    if-gt v0, v1, :cond_17

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v17, v0

    aget-object v17, v17, v16

    add-int/lit8 v18, v16, -0x2

    const-wide/16 v28, 0x0

    aput-wide v28, v17, v18

    .line 667
    add-int/lit8 v17, v25, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_14

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v17, v0

    aget-object v17, v17, v16

    add-int/lit8 v18, v16, -0x3

    const-wide/16 v28, 0x0

    aput-wide v28, v17, v18

    .line 665
    :cond_14
    add-int/lit8 v16, v16, 0x1

    goto :goto_11

    .line 657
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v21, v0

    aget-object v21, v21, v25

    add-int/lit8 v27, v25, -0x1

    aget-wide v28, v21, v27

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v36

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v38

    add-double v36, v36, v38

    mul-double v28, v28, v36

    .line 658
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v36

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v21, v0

    add-int/lit8 v27, v25, -0x1

    aget-object v21, v21, v27

    add-int/lit8 v27, v25, -0x1

    aget-wide v38, v21, v27

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->abs(D)D

    move-result-wide v38

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v40

    add-double v38, v38, v40

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v21, v0

    add-int/lit8 v27, v25, 0x1

    aget-object v21, v21, v27

    add-int/lit8 v27, v25, 0x1

    aget-wide v40, v21, v27

    .line 659
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->abs(D)D

    move-result-wide v40

    add-double v38, v38, v40

    mul-double v36, v36, v38

    mul-double v36, v36, v34

    cmpg-double v21, v28, v36

    if-gez v21, :cond_16

    move-wide v2, v6

    move-wide v8, v14

    move-wide v6, v10

    move-wide/from16 v14, v18

    move-wide/from16 v10, v16

    .line 660
    goto/16 :goto_10

    .line 662
    :cond_16
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_f

    :cond_17
    move/from16 v19, v25

    move-wide/from16 v42, v4

    move-wide v4, v8

    move-wide v8, v14

    move-wide v14, v6

    move-wide v6, v10

    move-wide v10, v2

    move-wide/from16 v2, v42

    .line 675
    :goto_12
    add-int/lit8 v16, v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v16

    if-gt v0, v1, :cond_42

    .line 676
    add-int/lit8 v16, v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v16

    if-eq v0, v1, :cond_18

    const/16 v16, 0x1

    move/from16 v21, v16

    .line 677
    :goto_13
    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_1b

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v19

    add-int/lit8 v3, v19, -0x1

    aget-wide v8, v2, v3

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v3, v19, 0x1

    aget-object v2, v2, v3

    add-int/lit8 v3, v19, -0x1

    aget-wide v6, v2, v3

    .line 680
    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v3, v19, 0x2

    aget-object v2, v2, v3

    add-int/lit8 v3, v19, -0x1

    aget-wide v2, v2, v3

    .line 681
    :goto_14
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v4, v4, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v4, v4, v16

    .line 682
    const-wide/16 v16, 0x0

    cmpl-double v16, v4, v16

    if-nez v16, :cond_1a

    move-wide/from16 v42, v10

    move-wide v10, v6

    move-wide v6, v14

    move-wide v14, v8

    move-wide v8, v2

    move-wide/from16 v2, v42

    .line 675
    :goto_15
    add-int/lit8 v19, v19, 0x1

    move-wide/from16 v42, v4

    move-wide v4, v8

    move-wide v8, v14

    move-wide v14, v6

    move-wide v6, v10

    move-wide v10, v2

    move-wide/from16 v2, v42

    goto :goto_12

    .line 676
    :cond_18
    const/16 v16, 0x0

    move/from16 v21, v16

    goto :goto_13

    .line 680
    :cond_19
    const-wide/16 v2, 0x0

    goto :goto_14

    .line 685
    :cond_1a
    div-double/2addr v8, v4

    .line 686
    div-double/2addr v6, v4

    .line 687
    div-double/2addr v2, v4

    move-wide/from16 v42, v4

    move-wide v4, v2

    move-wide/from16 v2, v42

    .line 690
    :cond_1b
    mul-double v14, v8, v8

    mul-double v16, v6, v6

    add-double v14, v14, v16

    mul-double v16, v4, v4

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 691
    const-wide/16 v16, 0x0

    cmpg-double v16, v8, v16

    if-gez v16, :cond_1c

    .line 692
    neg-double v14, v14

    .line 694
    :cond_1c
    const-wide/16 v16, 0x0

    cmpl-double v16, v14, v16

    if-eqz v16, :cond_41

    .line 695
    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_1f

    .line 696
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v10, v10, v19

    add-int/lit8 v11, v19, -0x1

    neg-double v0, v14

    move-wide/from16 v16, v0

    mul-double v2, v2, v16

    aput-wide v2, v10, v11

    .line 700
    :cond_1d
    :goto_16
    add-double v2, v8, v14

    .line 701
    div-double v8, v2, v14

    .line 702
    div-double v28, v6, v14

    .line 703
    div-double v10, v4, v14

    .line 704
    div-double v16, v6, v2

    .line 705
    div-double v6, v4, v2

    move/from16 v18, v19

    move-wide v4, v2

    .line 709
    :goto_17
    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_20

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v19

    aget-wide v2, v2, v18

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v5, v19, 0x1

    aget-object v4, v4, v5

    aget-wide v4, v4, v18

    mul-double v4, v4, v16

    add-double/2addr v2, v4

    .line 711
    if-eqz v21, :cond_1e

    .line 712
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v5, v19, 0x2

    aget-object v4, v4, v5

    aget-wide v4, v4, v18

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v5, v19, 0x2

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v27, v19, 0x2

    aget-object v5, v5, v27

    aget-wide v36, v5, v18

    mul-double v38, v2, v10

    sub-double v36, v36, v38

    aput-wide v36, v4, v18

    .line 715
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v4, v4, v19

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v5, v5, v19

    aget-wide v36, v5, v18

    mul-double v38, v2, v8

    sub-double v36, v36, v38

    aput-wide v36, v4, v18

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v5, v19, 0x1

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v27, v19, 0x1

    aget-object v5, v5, v27

    aget-wide v36, v5, v18

    mul-double v38, v2, v28

    sub-double v36, v36, v38

    aput-wide v36, v4, v18

    .line 709
    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    move-wide v4, v2

    goto :goto_17

    .line 697
    :cond_1f
    move/from16 v0, v26

    move/from16 v1, v25

    if-eq v0, v1, :cond_1d

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v19

    add-int/lit8 v3, v19, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v10, v10, v19

    add-int/lit8 v11, v19, -0x1

    aget-wide v10, v10, v11

    neg-double v10, v10

    aput-wide v10, v2, v3

    goto/16 :goto_16

    .line 721
    :cond_20
    const/4 v2, 0x0

    :goto_18
    add-int/lit8 v3, v19, 0x3

    move/from16 v0, v24

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-gt v2, v3, :cond_22

    .line 722
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v19

    mul-double/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    add-int/lit8 v18, v19, 0x1

    aget-wide v36, v3, v18

    mul-double v36, v36, v28

    add-double v4, v4, v36

    .line 723
    if-eqz v21, :cond_21

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    add-int/lit8 v18, v19, 0x2

    aget-wide v36, v3, v18

    mul-double v36, v36, v10

    add-double v4, v4, v36

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    add-int/lit8 v18, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v27, v0

    aget-object v27, v27, v2

    add-int/lit8 v31, v19, 0x2

    aget-wide v36, v27, v31

    mul-double v38, v4, v6

    sub-double v36, v36, v38

    aput-wide v36, v3, v18

    .line 727
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v18, v0

    aget-object v18, v18, v2

    aget-wide v36, v18, v19

    sub-double v36, v36, v4

    aput-wide v36, v3, v19

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    add-int/lit8 v18, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    move-object/from16 v27, v0

    aget-object v27, v27, v2

    add-int/lit8 v31, v19, 0x1

    aget-wide v36, v27, v31

    mul-double v38, v4, v16

    sub-double v36, v36, v38

    aput-wide v36, v3, v18

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_22
    move-wide v2, v4

    move/from16 v4, v30

    .line 733
    :goto_19
    move/from16 v0, v33

    if-gt v4, v0, :cond_40

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v2, v2, v4

    aget-wide v2, v2, v19

    mul-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v5, v5, v4

    add-int/lit8 v18, v19, 0x1

    aget-wide v36, v5, v18

    mul-double v36, v36, v28

    add-double v2, v2, v36

    .line 735
    if-eqz v21, :cond_23

    .line 736
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v5, v5, v4

    add-int/lit8 v18, v19, 0x2

    aget-wide v36, v5, v18

    mul-double v36, v36, v10

    add-double v2, v2, v36

    .line 737
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v5, v5, v4

    add-int/lit8 v18, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    move-object/from16 v27, v0

    aget-object v27, v27, v4

    add-int/lit8 v31, v19, 0x2

    aget-wide v36, v27, v31

    mul-double v38, v2, v6

    sub-double v36, v36, v38

    aput-wide v36, v5, v18

    .line 739
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v5, v5, v4

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    aget-wide v36, v18, v19

    sub-double v36, v36, v2

    aput-wide v36, v5, v19

    .line 740
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v5, v5, v4

    add-int/lit8 v18, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    move-object/from16 v27, v0

    aget-object v27, v27, v4

    add-int/lit8 v31, v19, 0x1

    aget-wide v36, v27, v31

    mul-double v38, v2, v16

    sub-double v36, v36, v38

    aput-wide v36, v5, v18

    .line 733
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 749
    :cond_24
    const-wide/16 v2, 0x0

    cmpl-double v2, v22, v2

    if-nez v2, :cond_26

    .line 903
    :cond_25
    return-void

    .line 753
    :cond_26
    add-int/lit8 v31, v32, -0x1

    move-wide/from16 v24, v14

    move-wide/from16 v28, v6

    :goto_1a
    if-ltz v31, :cond_37

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v36, v2, v31

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v10, v2, v31

    .line 759
    const-wide/16 v2, 0x0

    cmpl-double v2, v10, v2

    if-nez v2, :cond_2c

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v31

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v31

    .line 762
    add-int/lit8 v3, v31, -0x1

    move/from16 v2, v31

    move-wide/from16 v6, v24

    move-wide/from16 v10, v26

    :goto_1b
    if-ltz v3, :cond_36

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v3

    sub-double v4, v4, v36

    .line 764
    const-wide/16 v8, 0x0

    move v12, v2

    .line 765
    :goto_1c
    move/from16 v0, v31

    if-gt v12, v0, :cond_27

    .line 766
    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v13, v13, v3

    aget-wide v14, v13, v12

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v13, v13, v12

    aget-wide v16, v13, v31

    mul-double v14, v14, v16

    add-double/2addr v14, v8

    .line 765
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    move-wide v8, v14

    goto :goto_1c

    .line 768
    :cond_27
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v12, v12, v3

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_28

    move-wide v6, v8

    .line 762
    :goto_1d
    add-int/lit8 v3, v3, -0x1

    move-wide v10, v6

    move-wide/from16 v28, v8

    move-wide v6, v4

    goto :goto_1b

    .line 773
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v12, v2, v3

    const-wide/16 v14, 0x0

    cmpl-double v2, v12, v14

    if-nez v2, :cond_2a

    .line 774
    const-wide/16 v12, 0x0

    cmpl-double v2, v4, v12

    if-eqz v2, :cond_29

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v3

    neg-double v12, v8

    div-double v4, v12, v4

    aput-wide v4, v2, v31

    .line 797
    :goto_1e
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v3

    aget-wide v4, v2, v31

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 798
    mul-double v12, v34, v4

    mul-double/2addr v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v12, v14

    if-lez v2, :cond_3f

    move v2, v3

    .line 799
    :goto_1f
    move/from16 v0, v31

    if-gt v2, v0, :cond_3f

    .line 800
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v12, v12, v2

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v13, v13, v2

    aget-wide v14, v13, v31

    div-double/2addr v14, v4

    aput-wide v14, v12, v31

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 777
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v3

    neg-double v4, v8

    mul-double v12, v34, v22

    div-double/2addr v4, v12

    aput-wide v4, v2, v31

    goto :goto_1e

    .line 783
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v3

    add-int/lit8 v12, v3, 0x1

    aget-wide v12, v2, v12

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v14, v3, 0x1

    aget-object v2, v2, v14

    aget-wide v14, v2, v3

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v16, v2, v3

    sub-double v16, v16, v36

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v18, v2, v3

    sub-double v18, v18, v36

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v18, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v20, v2, v3

    mul-double v18, v18, v20

    add-double v16, v16, v18

    .line 786
    mul-double v18, v12, v10

    mul-double v20, v6, v8

    sub-double v18, v18, v20

    div-double v16, v18, v16

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v3

    aput-wide v16, v2, v31

    .line 788
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    cmpl-double v2, v18, v20

    if-lez v2, :cond_2b

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v14, v3, 0x1

    aget-object v2, v2, v14

    neg-double v14, v8

    mul-double v4, v4, v16

    sub-double v4, v14, v4

    div-double/2addr v4, v12

    aput-wide v4, v2, v31

    goto/16 :goto_1e

    .line 791
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v4, v3, 0x1

    aget-object v2, v2, v4

    neg-double v4, v10

    mul-double v12, v14, v16

    sub-double/2addr v4, v12

    div-double/2addr v4, v6

    aput-wide v4, v2, v31

    goto/16 :goto_1e

    .line 808
    :cond_2c
    const-wide/16 v2, 0x0

    cmpg-double v2, v10, v2

    if-gez v2, :cond_35

    .line 809
    add-int/lit8 v2, v31, -0x1

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v31

    add-int/lit8 v4, v31, -0x1

    aget-wide v4, v3, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v6, v31, -0x1

    aget-object v3, v3, v6

    aget-wide v6, v3, v31

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2d

    .line 814
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v4, v31, -0x1

    aget-object v3, v3, v4

    add-int/lit8 v4, v31, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v5, v5, v31

    add-int/lit8 v6, v31, -0x1

    aget-wide v6, v5, v6

    div-double v6, v10, v6

    aput-wide v6, v3, v4

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v4, v31, -0x1

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v4, v4, v31

    aget-wide v4, v4, v31

    sub-double v4, v4, v36

    neg-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v6, v6, v31

    add-int/lit8 v7, v31, -0x1

    aget-wide v6, v6, v7

    div-double/2addr v4, v6

    aput-wide v4, v3, v31

    .line 821
    :goto_20
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v31

    add-int/lit8 v4, v31, -0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v3, v4

    .line 822
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v31

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v31

    .line 823
    add-int/lit8 v12, v31, -0x2

    :goto_21
    if-ltz v12, :cond_35

    .line 825
    const-wide/16 v4, 0x0

    .line 826
    const-wide/16 v6, 0x0

    move v3, v2

    .line 827
    :goto_22
    move/from16 v0, v31

    if-gt v3, v0, :cond_2e

    .line 828
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v8, v8, v12

    aget-wide v8, v8, v3

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v13, v13, v3

    add-int/lit8 v14, v31, -0x1

    aget-wide v14, v13, v14

    mul-double/2addr v8, v14

    add-double/2addr v4, v8

    .line 829
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v8, v8, v12

    aget-wide v8, v8, v3

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v13, v13, v3

    aget-wide v14, v13, v31

    mul-double/2addr v8, v14

    add-double/2addr v6, v8

    .line 827
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 817
    :cond_2d
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v6, v31, -0x1

    aget-object v3, v3, v6

    aget-wide v6, v3, v31

    neg-double v6, v6

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v8, v31, -0x1

    aget-object v3, v3, v8

    add-int/lit8 v8, v31, -0x1

    aget-wide v8, v3, v8

    sub-double v8, v8, v36

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a(DDDD)V

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v4, v31, -0x1

    aget-object v3, v3, v4

    add-int/lit8 v4, v31, -0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->h:D

    aput-wide v6, v3, v4

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v4, v31, -0x1

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->i:D

    aput-wide v4, v3, v31

    goto/16 :goto_20

    .line 831
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v12

    aget-wide v8, v3, v12

    sub-double v8, v8, v36

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v14, v3, v12

    const-wide/16 v16, 0x0

    cmpg-double v3, v14, v16

    if-gez v3, :cond_2f

    move-wide/from16 v42, v6

    move-wide v6, v4

    move-wide/from16 v4, v42

    .line 823
    :goto_23
    add-int/lit8 v12, v12, -0x1

    move-wide/from16 v24, v8

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    goto/16 :goto_21

    .line 839
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v2, v2, v12

    const-wide/16 v14, 0x0

    cmpl-double v2, v2, v14

    if-nez v2, :cond_30

    .line 840
    neg-double v4, v4

    neg-double v6, v6

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a(DDDD)V

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v12

    add-int/lit8 v3, v31, -0x1

    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->h:D

    aput-wide v4, v2, v3

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->i:D

    aput-wide v4, v2, v31

    .line 870
    :goto_24
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v12

    add-int/lit8 v3, v31, -0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v4, v4, v12

    aget-wide v4, v4, v31

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 871
    mul-double v2, v34, v4

    mul-double/2addr v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v6

    if-lez v2, :cond_3e

    move v2, v12

    .line 872
    :goto_25
    move/from16 v0, v31

    if-gt v2, v0, :cond_3e

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    add-int/lit8 v6, v31, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v7, v7, v2

    add-int/lit8 v8, v31, -0x1

    aget-wide v8, v7, v8

    div-double/2addr v8, v4

    aput-wide v8, v3, v6

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v6, v6, v2

    aget-wide v6, v6, v31

    div-double/2addr v6, v4

    aput-wide v6, v3, v31

    .line 872
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 847
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v12

    add-int/lit8 v3, v12, 0x1

    aget-wide v38, v2, v3

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v3, v12, 0x1

    aget-object v2, v2, v3

    aget-wide v40, v2, v12

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v2, v2, v12

    sub-double v2, v2, v36

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v14, v13, v12

    sub-double v14, v14, v36

    mul-double/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v14, v13, v12

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v16, v13, v12

    mul-double v14, v14, v16

    add-double/2addr v2, v14

    mul-double v14, v10, v10

    sub-double v18, v2, v14

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v2, v2, v12

    sub-double v2, v2, v36

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v14

    mul-double v20, v2, v10

    .line 851
    const-wide/16 v2, 0x0

    cmpl-double v2, v18, v2

    if-nez v2, :cond_32

    const/4 v2, 0x1

    move v3, v2

    :goto_26
    const-wide/16 v14, 0x0

    cmpl-double v2, v20, v14

    if-nez v2, :cond_33

    const/4 v2, 0x1

    :goto_27
    and-int/2addr v2, v3

    if-eqz v2, :cond_31

    .line 852
    mul-double v2, v34, v22

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v14, v14, v16

    .line 853
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v14, v14, v16

    mul-double v18, v2, v14

    .line 855
    :cond_31
    mul-double v2, v38, v28

    mul-double v14, v24, v4

    sub-double/2addr v2, v14

    mul-double v14, v10, v6

    add-double/2addr v14, v2

    mul-double v2, v38, v26

    mul-double v16, v24, v6

    sub-double v2, v2, v16

    mul-double v16, v10, v4

    sub-double v16, v2, v16

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v21}, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a(DDDD)V

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v12

    add-int/lit8 v3, v31, -0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->h:D

    aput-wide v14, v2, v3

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->i:D

    aput-wide v14, v2, v31

    .line 858
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v14, v14, v16

    cmpl-double v2, v2, v14

    if-lez v2, :cond_34

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v3, v12, 0x1

    aget-object v2, v2, v3

    add-int/lit8 v3, v31, -0x1

    neg-double v4, v4

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v13, v13, v12

    add-int/lit8 v14, v31, -0x1

    aget-wide v14, v13, v14

    mul-double/2addr v14, v8

    sub-double/2addr v4, v14

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v13, v13, v12

    aget-wide v14, v13, v31

    mul-double/2addr v14, v10

    add-double/2addr v4, v14

    div-double v4, v4, v38

    aput-wide v4, v2, v3

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v3, v12, 0x1

    aget-object v2, v2, v3

    neg-double v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v12

    aget-wide v6, v3, v31

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v12

    add-int/lit8 v6, v31, -0x1

    aget-wide v6, v3, v6

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    div-double v4, v4, v38

    aput-wide v4, v2, v31

    goto/16 :goto_24

    .line 851
    :cond_32
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_26

    :cond_33
    const/4 v2, 0x0

    goto/16 :goto_27

    .line 862
    :cond_34
    move-wide/from16 v0, v28

    neg-double v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v4, v4, v12

    add-int/lit8 v5, v31, -0x1

    aget-wide v4, v4, v5

    mul-double v4, v4, v40

    sub-double v4, v2, v4

    move-wide/from16 v0, v26

    neg-double v2, v0

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v6, v6, v12

    aget-wide v6, v6, v31

    mul-double v6, v6, v40

    sub-double v6, v2, v6

    move-object/from16 v3, p0

    move-wide/from16 v8, v24

    invoke-direct/range {v3 .. v11}, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a(DDDD)V

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v3, v12, 0x1

    aget-object v2, v2, v3

    add-int/lit8 v3, v31, -0x1

    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->h:D

    aput-wide v4, v2, v3

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    add-int/lit8 v3, v12, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->i:D

    aput-wide v4, v2, v31

    goto/16 :goto_24

    :cond_35
    move-wide/from16 v6, v24

    move-wide/from16 v10, v26

    .line 753
    :cond_36
    add-int/lit8 v31, v31, -0x1

    move-wide/from16 v24, v6

    move-wide/from16 v26, v10

    goto/16 :goto_1a

    .line 884
    :cond_37
    const/4 v3, 0x0

    :goto_28
    move/from16 v0, v32

    if-ge v3, v0, :cond_3b

    .line 885
    move/from16 v0, v30

    if-ge v3, v0, :cond_38

    const/4 v2, 0x1

    move v4, v2

    :goto_29
    move/from16 v0, v33

    if-le v3, v0, :cond_39

    const/4 v2, 0x1

    :goto_2a
    or-int/2addr v2, v4

    if-eqz v2, :cond_3a

    move v2, v3

    .line 886
    :goto_2b
    move/from16 v0, v32

    if-ge v2, v0, :cond_3a

    .line 887
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v4, v4, v3

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v2

    aput-wide v6, v4, v2

    .line 886
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 885
    :cond_38
    const/4 v2, 0x0

    move v4, v2

    goto :goto_29

    :cond_39
    const/4 v2, 0x0

    goto :goto_2a

    .line 884
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 894
    :cond_3b
    add-int/lit8 v2, v32, -0x1

    move v7, v2

    :goto_2c
    move/from16 v0, v30

    if-lt v7, v0, :cond_25

    move/from16 v6, v30

    .line 895
    :goto_2d
    move/from16 v0, v33

    if-gt v6, v0, :cond_3d

    .line 896
    const-wide/16 v2, 0x0

    move-wide v4, v2

    move/from16 v2, v30

    .line 897
    :goto_2e
    move/from16 v0, v33

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-gt v2, v3, :cond_3c

    .line 898
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v3, v3, v6

    aget-wide v8, v3, v2

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->f:[[D

    aget-object v3, v3, v2

    aget-wide v10, v3, v7

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 897
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 900
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    aget-object v2, v2, v6

    aput-wide v4, v2, v7

    .line 895
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2d

    .line 894
    :cond_3d
    add-int/lit8 v2, v7, -0x1

    move v7, v2

    goto :goto_2c

    :cond_3e
    move v2, v12

    move-wide/from16 v8, v24

    move-wide/from16 v4, v26

    move-wide/from16 v6, v28

    goto/16 :goto_23

    :cond_3f
    move v2, v3

    move-wide v4, v6

    move-wide v6, v10

    goto/16 :goto_1d

    :cond_40
    move-wide v4, v8

    move-wide v8, v6

    move-wide v6, v14

    move-wide v14, v2

    move-wide v2, v10

    move-wide/from16 v10, v16

    goto/16 :goto_15

    :cond_41
    move-wide/from16 v42, v2

    move-wide v2, v10

    move-wide v10, v6

    move-wide v6, v14

    move-wide v14, v8

    move-wide v8, v4

    move-wide/from16 v4, v42

    goto/16 :goto_15

    :cond_42
    move/from16 v2, v20

    move/from16 v3, v24

    move-wide/from16 v42, v4

    move-wide v4, v14

    move-wide v14, v12

    move-wide v12, v8

    move-wide v8, v6

    move-wide/from16 v6, v42

    goto/16 :goto_6

    :cond_43
    move-wide v2, v6

    move-wide v8, v14

    move-wide v6, v10

    move-wide/from16 v14, v18

    move-wide/from16 v10, v16

    goto/16 :goto_10

    :cond_44
    move-wide/from16 v42, v4

    move-wide v4, v8

    move-wide v8, v10

    move-wide v10, v2

    move-wide/from16 v2, v42

    goto/16 :goto_e

    :cond_45
    move-wide/from16 v12, v20

    move-wide/from16 v42, v4

    move-wide v4, v2

    move-wide/from16 v2, v42

    goto/16 :goto_c
.end method


# virtual methods
.method public getD()[[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 934
    iget v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    iget v1, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 936
    :goto_0
    iget v3, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 937
    :goto_1
    iget v4, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    if-ge v3, v4, :cond_0

    .line 938
    aget-object v4, v0, v1

    aput-wide v8, v4, v3

    .line 937
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 940
    :cond_0
    aget-object v3, v0, v1

    iget-object v4, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    aget-wide v4, v4, v1

    aput-wide v4, v3, v1

    .line 941
    iget-object v3, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v4, v3, v1

    cmpl-double v3, v4, v8

    if-lez v3, :cond_2

    .line 942
    aget-object v3, v0, v1

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v6, v5, v1

    aput-wide v6, v3, v4

    .line 936
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    :cond_2
    iget-object v3, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v4, v3, v1

    cmpg-double v3, v4, v8

    if-gez v3, :cond_1

    .line 944
    aget-object v3, v0, v1

    add-int/lit8 v4, v1, -0x1

    iget-object v5, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    aget-wide v6, v5, v1

    aput-wide v6, v3, v4

    goto :goto_2

    .line 947
    :cond_3
    return-object v0
.end method

.method public getImagEigenvalues()[D
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->d:[D

    return-object v0
.end method

.method public getRealEigenvalues()[D
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->c:[D

    return-object v0
.end method

.method public getV()[[D
    .locals 3

    .prologue
    .line 910
    iget-object v0, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->e:[[D

    iget v1, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    iget v2, p0, LCatalano/Math/Decompositions/EigenvalueDecomposition;->a:I

    invoke-static {v0, v1, v2}, LCatalano/Math/Matrix;->SubMatrix([[DII)[[D

    move-result-object v0

    return-object v0
.end method
