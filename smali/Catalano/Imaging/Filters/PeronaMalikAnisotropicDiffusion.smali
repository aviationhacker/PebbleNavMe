.class public LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;
    }
.end annotation


# instance fields
.field private a:I

.field private b:D

.field private c:D

.field private d:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x14

    invoke-direct {p0, v0}, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;-><init>(I)V

    .line 131
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 138
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    sget-object v6, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;->HighContrastEdges:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;-><init>(IDDLCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;)V

    .line 139
    return-void
.end method

.method public constructor <init>(IDDLCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->a:I

    .line 150
    iput-wide p2, p0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->b:D

    .line 151
    iput-wide p4, p0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->c:D

    .line 152
    iput-object p6, p0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->d:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    .line 153
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 28

    .prologue
    .line 158
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 160
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->toMatrixGrayAsDouble()[[D

    move-result-object v14

    .line 162
    array-length v15, v14

    .line 163
    const/4 v2, 0x0

    aget-object v2, v14, v2

    array-length v0, v2

    move/from16 v16, v0

    .line 165
    filled-new-array/range {v15 .. v16}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 166
    filled-new-array/range {v15 .. v16}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 167
    filled-new-array/range {v15 .. v16}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 168
    filled-new-array/range {v15 .. v16}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 170
    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->a:I

    if-ge v6, v7, :cond_10

    .line 172
    const/4 v7, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v7, v0, :cond_0

    .line 173
    const/4 v8, 0x0

    aget-object v8, v2, v8

    const/4 v9, 0x0

    aget-object v9, v14, v9

    aget-wide v10, v9, v7

    neg-double v10, v10

    aput-wide v10, v8, v7

    .line 172
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 175
    :cond_0
    const/4 v7, 0x1

    move v8, v7

    :goto_2
    if-ge v8, v15, :cond_2

    .line 176
    const/4 v7, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v7, v0, :cond_1

    .line 177
    aget-object v9, v2, v8

    add-int/lit8 v10, v8, -0x1

    aget-object v10, v14, v10

    aget-wide v10, v10, v7

    aget-object v12, v14, v8

    aget-wide v12, v12, v7

    sub-double/2addr v10, v12

    aput-wide v10, v9, v7

    .line 176
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 175
    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_2

    .line 182
    :cond_2
    const/4 v7, 0x0

    move v8, v7

    :goto_4
    add-int/lit8 v7, v15, -0x1

    if-ge v8, v7, :cond_4

    .line 183
    const/4 v7, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v7, v0, :cond_3

    .line 184
    aget-object v9, v3, v8

    add-int/lit8 v10, v8, 0x1

    aget-object v10, v14, v10

    aget-wide v10, v10, v7

    aget-object v12, v14, v8

    aget-wide v12, v12, v7

    sub-double/2addr v10, v12

    aput-wide v10, v9, v7

    .line 183
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 182
    :cond_3
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_4

    .line 187
    :cond_4
    const/4 v7, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v7, v0, :cond_5

    .line 188
    add-int/lit8 v8, v15, -0x1

    aget-object v8, v3, v8

    add-int/lit8 v9, v15, -0x1

    aget-object v9, v14, v9

    aget-wide v10, v9, v7

    neg-double v10, v10

    aput-wide v10, v8, v7

    .line 187
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 192
    :cond_5
    const/4 v7, 0x0

    move v8, v7

    :goto_7
    if-ge v8, v15, :cond_7

    .line 193
    const/4 v7, 0x0

    :goto_8
    add-int/lit8 v9, v16, -0x1

    if-ge v7, v9, :cond_6

    .line 194
    aget-object v9, v4, v8

    aget-object v10, v14, v8

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    aget-object v12, v14, v8

    aget-wide v12, v12, v7

    sub-double/2addr v10, v12

    aput-wide v10, v9, v7

    .line 193
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 192
    :cond_6
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_7

    .line 197
    :cond_7
    const/4 v7, 0x0

    :goto_9
    if-ge v7, v15, :cond_8

    .line 198
    aget-object v8, v4, v7

    add-int/lit8 v9, v16, -0x1

    aget-object v10, v14, v7

    add-int/lit8 v11, v16, -0x1

    aget-wide v10, v10, v11

    neg-double v10, v10

    aput-wide v10, v8, v9

    .line 197
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 202
    :cond_8
    const/4 v7, 0x0

    move v8, v7

    :goto_a
    if-ge v8, v15, :cond_a

    .line 203
    const/4 v7, 0x1

    :goto_b
    move/from16 v0, v16

    if-ge v7, v0, :cond_9

    .line 204
    aget-object v9, v5, v8

    aget-object v10, v14, v8

    add-int/lit8 v11, v7, -0x1

    aget-wide v10, v10, v11

    aget-object v12, v14, v8

    aget-wide v12, v12, v7

    sub-double/2addr v10, v12

    aput-wide v10, v9, v7

    .line 203
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 202
    :cond_9
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_a

    .line 207
    :cond_a
    const/4 v7, 0x0

    :goto_c
    if-ge v7, v15, :cond_b

    .line 208
    aget-object v8, v5, v7

    const/4 v9, 0x0

    aget-object v10, v14, v7

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    neg-double v10, v10

    aput-wide v10, v8, v9

    .line 207
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 211
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->d:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    sget-object v8, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;->HighContrastEdges:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    if-ne v7, v8, :cond_d

    .line 212
    const/4 v7, 0x0

    move v8, v7

    :goto_d
    if-ge v8, v15, :cond_f

    .line 213
    const/4 v7, 0x0

    :goto_e
    move/from16 v0, v16

    if-ge v7, v0, :cond_c

    .line 214
    aget-object v9, v2, v8

    aget-wide v10, v9, v7

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->b:D

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    neg-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    .line 215
    aget-object v9, v3, v8

    aget-wide v12, v9, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->b:D

    move-wide/from16 v18, v0

    div-double v12, v12, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    neg-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    .line 216
    aget-object v9, v4, v8

    aget-wide v18, v9, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->b:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->exp(D)D

    move-result-wide v18

    .line 217
    aget-object v9, v5, v8

    aget-wide v20, v9, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->b:D

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->exp(D)D

    move-result-wide v20

    .line 218
    aget-object v9, v14, v8

    aget-object v17, v14, v8

    aget-wide v22, v17, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->c:D

    move-wide/from16 v24, v0

    aget-object v17, v2, v8

    aget-wide v26, v17, v7

    mul-double v10, v10, v26

    aget-object v17, v3, v8

    aget-wide v26, v17, v7

    mul-double v12, v12, v26

    add-double/2addr v10, v12

    aget-object v12, v4, v8

    aget-wide v12, v12, v7

    mul-double v12, v12, v18

    add-double/2addr v10, v12

    aget-object v12, v5, v8

    aget-wide v12, v12, v7

    mul-double v12, v12, v20

    add-double/2addr v10, v12

    mul-double v10, v10, v24

    add-double v10, v10, v22

    aput-wide v10, v9, v7

    .line 213
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_e

    .line 212
    :cond_c
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto/16 :goto_d

    .line 223
    :cond_d
    const/4 v7, 0x0

    move v8, v7

    :goto_f
    if-ge v8, v15, :cond_f

    .line 224
    const/4 v7, 0x0

    :goto_10
    move/from16 v0, v16

    if-ge v7, v0, :cond_e

    .line 225
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aget-object v9, v2, v8

    aget-wide v18, v9, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->b:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v12, v12, v18

    div-double/2addr v10, v12

    .line 226
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    aget-object v9, v3, v8

    aget-wide v20, v9, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->b:D

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    div-double v12, v12, v18

    .line 227
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    aget-object v9, v4, v8

    aget-wide v22, v9, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->b:D

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    div-double v18, v18, v20

    .line 228
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    aget-object v9, v5, v8

    aget-wide v24, v9, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->b:D

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v22, v22, v24

    div-double v20, v20, v22

    .line 229
    aget-object v9, v14, v8

    aget-object v17, v14, v8

    aget-wide v22, v17, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->c:D

    move-wide/from16 v24, v0

    aget-object v17, v2, v8

    aget-wide v26, v17, v7

    mul-double v10, v10, v26

    aget-object v17, v3, v8

    aget-wide v26, v17, v7

    mul-double v12, v12, v26

    add-double/2addr v10, v12

    aget-object v12, v4, v8

    aget-wide v12, v12, v7

    mul-double v12, v12, v18

    add-double/2addr v10, v12

    aget-object v12, v5, v8

    aget-wide v12, v12, v7

    mul-double v12, v12, v20

    add-double/2addr v10, v12

    mul-double v10, v10, v24

    add-double v10, v10, v22

    aput-wide v10, v9, v7

    .line 224
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_10

    .line 223
    :cond_e
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto/16 :goto_f

    .line 170
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 236
    :cond_10
    invoke-static {v14}, LCatalano/Math/Matrix;->Min([[D)D

    move-result-wide v2

    .line 237
    invoke-static {v14}, LCatalano/Math/Matrix;->Max([[D)D

    move-result-wide v4

    .line 238
    const/4 v6, 0x0

    move v13, v6

    :goto_11
    if-ge v13, v15, :cond_13

    .line 239
    const/4 v6, 0x0

    move v12, v6

    :goto_12
    move/from16 v0, v16

    if-ge v12, v0, :cond_11

    .line 240
    const-wide/16 v6, 0x0

    const-wide v8, 0x406fe00000000000L    # 255.0

    aget-object v10, v14, v13

    aget-wide v10, v10, v12

    invoke-static/range {v2 .. v11}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v6

    double-to-int v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 239
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto :goto_12

    .line 238
    :cond_11
    add-int/lit8 v6, v13, 0x1

    move v13, v6

    goto :goto_11

    .line 245
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Perona-Malik only works in grayscale images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_13
    return-void
.end method

.method public getDiffusion()LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->d:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    return-object v0
.end method

.method public getIterations()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->a:I

    return v0
.end method

.method public getKappa()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->b:D

    return-wide v0
.end method

.method public getLambda()D
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->c:D

    return-wide v0
.end method

.method public setDiffusion(LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->d:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    .line 124
    return-void
.end method

.method public setIterations(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->a:I

    .line 76
    return-void
.end method

.method public setKappa(D)V
    .locals 1

    .prologue
    .line 91
    iput-wide p1, p0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->b:D

    .line 92
    return-void
.end method

.method public setLambda(D)V
    .locals 1

    .prologue
    .line 107
    iput-wide p1, p0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;->c:D

    .line 108
    return-void
.end method
