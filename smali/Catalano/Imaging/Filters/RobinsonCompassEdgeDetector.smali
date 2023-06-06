.class public LCatalano/Imaging/Filters/RobinsonCompassEdgeDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v5, LCatalano/Imaging/Filters/Convolution;

    invoke-direct {v5}, LCatalano/Imaging/Filters/Convolution;-><init>()V

    .line 52
    new-instance v1, LCatalano/Imaging/FastBitmap;

    invoke-direct {v1, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 54
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 56
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    .line 57
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 58
    filled-new-array {v6, v7}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 62
    sget-object v3, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_North:[[I

    .line 63
    invoke-virtual {v5, v3}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 64
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v4, v2

    .line 66
    :goto_0
    if-ge v4, v6, :cond_1

    move v3, v2

    .line 67
    :goto_1
    if-ge v3, v7, :cond_0

    .line 68
    aget-object v8, v0, v4

    invoke-virtual {v1, v4, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    aput v9, v8, v3

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 71
    :cond_1
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 74
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_Northwest:[[I

    .line 75
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 76
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 78
    :goto_2
    if-ge v3, v6, :cond_3

    move v1, v2

    .line 79
    :goto_3
    if-ge v1, v7, :cond_2

    .line 80
    aget-object v8, v0, v3

    aget-object v9, v0, v3

    aget v9, v9, v1

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 78
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 83
    :cond_3
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 86
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_West:[[I

    .line 87
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 88
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 90
    :goto_4
    if-ge v3, v6, :cond_5

    move v1, v2

    .line 91
    :goto_5
    if-ge v1, v7, :cond_4

    .line 92
    aget-object v8, v0, v3

    aget-object v9, v0, v3

    aget v9, v9, v1

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 90
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 95
    :cond_5
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 98
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_Southwest:[[I

    .line 99
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 100
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 102
    :goto_6
    if-ge v3, v6, :cond_7

    move v1, v2

    .line 103
    :goto_7
    if-ge v1, v7, :cond_6

    .line 104
    aget-object v8, v0, v3

    aget-object v9, v0, v3

    aget v9, v9, v1

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v1

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 102
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    .line 107
    :cond_7
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 110
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_South:[[I

    .line 111
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 112
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 114
    :goto_8
    if-ge v3, v6, :cond_9

    move v1, v2

    .line 115
    :goto_9
    if-ge v1, v7, :cond_8

    .line 116
    aget-object v8, v0, v3

    aget-object v9, v0, v3

    aget v9, v9, v1

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 114
    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8

    .line 119
    :cond_9
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 122
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_Southeast:[[I

    .line 123
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 124
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 126
    :goto_a
    if-ge v3, v6, :cond_b

    move v1, v2

    .line 127
    :goto_b
    if-ge v1, v7, :cond_a

    .line 128
    aget-object v8, v0, v3

    aget-object v9, v0, v3

    aget v9, v9, v1

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 126
    :cond_a
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_a

    .line 131
    :cond_b
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 134
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_East:[[I

    .line 135
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 136
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 138
    :goto_c
    if-ge v3, v6, :cond_d

    move v1, v2

    .line 139
    :goto_d
    if-ge v1, v7, :cond_c

    .line 140
    aget-object v8, v0, v3

    aget-object v9, v0, v3

    aget v9, v9, v1

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v1

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 138
    :cond_c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_c

    .line 143
    :cond_d
    new-instance v1, LCatalano/Imaging/FastBitmap;

    invoke-direct {v1, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 146
    sget-object v3, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_Northeast:[[I

    .line 147
    invoke-virtual {v5, v3}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 148
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v4, v2

    .line 150
    :goto_e
    if-ge v4, v6, :cond_f

    move v3, v2

    .line 151
    :goto_f
    if-ge v3, v7, :cond_e

    .line 152
    aget-object v8, v0, v4

    aget-object v9, v0, v4

    aget v9, v9, v3

    invoke-virtual {v1, v4, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 150
    :cond_e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_e

    .line 156
    :cond_f
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->matrixToImage([[I)V

    .line 159
    :cond_10
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 161
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    .line 162
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 163
    const/4 v0, 0x3

    filled-new-array {v6, v7, v0}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    .line 167
    sget-object v3, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_North:[[I

    .line 168
    invoke-virtual {v5, v3}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 169
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v4, v2

    .line 171
    :goto_10
    if-ge v4, v6, :cond_12

    move v3, v2

    .line 172
    :goto_11
    if-ge v3, v7, :cond_11

    .line 173
    aget-object v8, v0, v4

    aget-object v8, v8, v3

    invoke-virtual {v1, v4, v3}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v9

    aput v9, v8, v2

    .line 174
    aget-object v8, v0, v4

    aget-object v8, v8, v3

    invoke-virtual {v1, v4, v3}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v9

    aput v9, v8, v11

    .line 175
    aget-object v8, v0, v4

    aget-object v8, v8, v3

    invoke-virtual {v1, v4, v3}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v9

    aput v9, v8, v12

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 171
    :cond_11
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_10

    .line 178
    :cond_12
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 181
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_Northwest:[[I

    .line 182
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 183
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 185
    :goto_12
    if-ge v3, v6, :cond_14

    move v1, v2

    .line 186
    :goto_13
    if-ge v1, v7, :cond_13

    .line 187
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v2

    .line 188
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v11

    .line 189
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v12

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v12

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 185
    :cond_13
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_12

    .line 192
    :cond_14
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 195
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_West:[[I

    .line 196
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 197
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 199
    :goto_14
    if-ge v3, v6, :cond_16

    move v1, v2

    .line 200
    :goto_15
    if-ge v1, v7, :cond_15

    .line 201
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v2

    .line 202
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v11

    .line 203
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v12

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v12

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 199
    :cond_15
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_14

    .line 206
    :cond_16
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 209
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_Southwest:[[I

    .line 210
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 211
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 213
    :goto_16
    if-ge v3, v6, :cond_18

    move v1, v2

    .line 214
    :goto_17
    if-ge v1, v7, :cond_17

    .line 215
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v2

    .line 216
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v11

    .line 217
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v12

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v12

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 213
    :cond_17
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_16

    .line 220
    :cond_18
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 223
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_South:[[I

    .line 224
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 225
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 227
    :goto_18
    if-ge v3, v6, :cond_1a

    move v1, v2

    .line 228
    :goto_19
    if-ge v1, v7, :cond_19

    .line 229
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v2

    .line 230
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v11

    .line 231
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v12

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v12

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 227
    :cond_19
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_18

    .line 234
    :cond_1a
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 237
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_Southeast:[[I

    .line 238
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 239
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 241
    :goto_1a
    if-ge v3, v6, :cond_1c

    move v1, v2

    .line 242
    :goto_1b
    if-ge v1, v7, :cond_1b

    .line 243
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v2

    .line 244
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v11

    .line 245
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v12

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v12

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 241
    :cond_1b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1a

    .line 248
    :cond_1c
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 251
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_East:[[I

    .line 252
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 253
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 255
    :goto_1c
    if-ge v3, v6, :cond_1e

    move v1, v2

    .line 256
    :goto_1d
    if-ge v1, v7, :cond_1d

    .line 257
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v2

    .line 258
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v11

    .line 259
    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget-object v9, v0, v3

    aget-object v9, v9, v1

    aget v9, v9, v12

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v12

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 255
    :cond_1d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1c

    .line 262
    :cond_1e
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 265
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_Northeast:[[I

    .line 266
    invoke-virtual {v5, v1}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 267
    invoke-virtual {v5, v4}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    move v3, v2

    .line 269
    :goto_1e
    if-ge v3, v6, :cond_20

    move v1, v2

    .line 270
    :goto_1f
    if-ge v1, v7, :cond_1f

    .line 271
    aget-object v5, v0, v3

    aget-object v5, v5, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v2

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v5, v2

    .line 272
    aget-object v5, v0, v3

    aget-object v5, v5, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v11

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v5, v11

    .line 273
    aget-object v5, v0, v3

    aget-object v5, v5, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v12

    invoke-virtual {v4, v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v5, v12

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 269
    :cond_1f
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1e

    .line 276
    :cond_20
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->matrixToImage([[[I)V

    .line 278
    :cond_21
    return-void
.end method
