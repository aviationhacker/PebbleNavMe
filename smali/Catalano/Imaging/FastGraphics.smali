.class public LCatalano/Imaging/FastGraphics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;

.field private b:LCatalano/Imaging/Color;

.field private c:I


# direct methods
.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/FastGraphics;->c:I

    .line 79
    iput-object p1, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    .line 80
    return-void
.end method


# virtual methods
.method public DrawCircle(III)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    rsub-int/lit8 v0, p3, 0x1

    move v6, v0

    move v7, v1

    .line 103
    :goto_0
    if-lt p3, v7, :cond_3

    .line 104
    iget-object v0, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    add-int v1, p3, p1

    add-int v2, v7, p2

    iget-object v3, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v3, v3, LCatalano/Imaging/Color;->r:I

    iget-object v4, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v4, v4, LCatalano/Imaging/Color;->g:I

    iget-object v5, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v5, v5, LCatalano/Imaging/Color;->b:I

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 105
    iget-object v0, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    add-int v1, v7, p1

    add-int v2, p3, p2

    iget-object v3, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v3, v3, LCatalano/Imaging/Color;->r:I

    iget-object v4, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v4, v4, LCatalano/Imaging/Color;->g:I

    iget-object v5, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v5, v5, LCatalano/Imaging/Color;->b:I

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 106
    iget-object v0, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    neg-int v1, p3

    add-int/2addr v1, p1

    add-int v2, v7, p2

    iget-object v3, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v3, v3, LCatalano/Imaging/Color;->r:I

    iget-object v4, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v4, v4, LCatalano/Imaging/Color;->g:I

    iget-object v5, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v5, v5, LCatalano/Imaging/Color;->b:I

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 107
    iget-object v0, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    neg-int v1, v7

    add-int/2addr v1, p1

    add-int v2, p3, p2

    iget-object v3, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v3, v3, LCatalano/Imaging/Color;->r:I

    iget-object v4, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v4, v4, LCatalano/Imaging/Color;->g:I

    iget-object v5, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v5, v5, LCatalano/Imaging/Color;->b:I

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 108
    iget-object v0, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    neg-int v1, p3

    add-int/2addr v1, p1

    neg-int v2, v7

    add-int/2addr v2, p2

    iget-object v3, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v3, v3, LCatalano/Imaging/Color;->r:I

    iget-object v4, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v4, v4, LCatalano/Imaging/Color;->g:I

    iget-object v5, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v5, v5, LCatalano/Imaging/Color;->b:I

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 109
    iget-object v0, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    neg-int v1, v7

    add-int/2addr v1, p1

    neg-int v2, p3

    add-int/2addr v2, p2

    iget-object v3, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v3, v3, LCatalano/Imaging/Color;->r:I

    iget-object v4, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v4, v4, LCatalano/Imaging/Color;->g:I

    iget-object v5, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v5, v5, LCatalano/Imaging/Color;->b:I

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 110
    iget-object v0, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    add-int v1, p3, p1

    neg-int v2, v7

    add-int/2addr v2, p2

    iget-object v3, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v3, v3, LCatalano/Imaging/Color;->r:I

    iget-object v4, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v4, v4, LCatalano/Imaging/Color;->g:I

    iget-object v5, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v5, v5, LCatalano/Imaging/Color;->b:I

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 111
    iget-object v0, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    add-int v1, v7, p1

    neg-int v2, p3

    add-int/2addr v2, p2

    iget-object v3, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v3, v3, LCatalano/Imaging/Color;->r:I

    iget-object v4, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v4, v4, LCatalano/Imaging/Color;->g:I

    iget-object v5, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v5, v5, LCatalano/Imaging/Color;->b:I

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 113
    add-int/lit8 v1, v7, 0x1

    .line 114
    if-gez v6, :cond_0

    .line 116
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v6

    move v6, v0

    move v7, v1

    goto/16 :goto_0

    .line 118
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 119
    sub-int v0, v1, p3

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    move v6, v0

    move v7, v1

    goto/16 :goto_0

    .line 125
    :cond_1
    rsub-int/lit8 v0, p3, 0x1

    .line 127
    :goto_1
    if-lt p3, v1, :cond_3

    .line 128
    iget-object v2, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    add-int v3, p3, p1

    add-int v4, v1, p2

    iget v5, p0, LCatalano/Imaging/FastGraphics;->c:I

    invoke-virtual {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 129
    iget-object v2, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    add-int v3, v1, p1

    add-int v4, p3, p2

    iget v5, p0, LCatalano/Imaging/FastGraphics;->c:I

    invoke-virtual {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 130
    iget-object v2, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    neg-int v3, p3

    add-int/2addr v3, p1

    add-int v4, v1, p2

    iget v5, p0, LCatalano/Imaging/FastGraphics;->c:I

    invoke-virtual {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 131
    iget-object v2, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    neg-int v3, v1

    add-int/2addr v3, p1

    add-int v4, p3, p2

    iget v5, p0, LCatalano/Imaging/FastGraphics;->c:I

    invoke-virtual {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 132
    iget-object v2, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    neg-int v3, p3

    add-int/2addr v3, p1

    neg-int v4, v1

    add-int/2addr v4, p2

    iget v5, p0, LCatalano/Imaging/FastGraphics;->c:I

    invoke-virtual {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 133
    iget-object v2, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    neg-int v3, v1

    add-int/2addr v3, p1

    neg-int v4, p3

    add-int/2addr v4, p2

    iget v5, p0, LCatalano/Imaging/FastGraphics;->c:I

    invoke-virtual {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 134
    iget-object v2, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    add-int v3, p3, p1

    neg-int v4, v1

    add-int/2addr v4, p2

    iget v5, p0, LCatalano/Imaging/FastGraphics;->c:I

    invoke-virtual {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 135
    iget-object v2, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    add-int v3, v1, p1

    neg-int v4, p3

    add-int/2addr v4, p2

    iget v5, p0, LCatalano/Imaging/FastGraphics;->c:I

    invoke-virtual {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 138
    if-gez v0, :cond_2

    .line 140
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_1

    .line 142
    :cond_2
    add-int/lit8 p3, p3, -0x1

    .line 143
    sub-int v2, v1, p3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    goto :goto_1

    .line 147
    :cond_3
    return-void
.end method

.method public DrawCircle(LCatalano/Core/IntPoint;I)V
    .locals 2

    .prologue
    .line 88
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1, p2}, LCatalano/Imaging/FastGraphics;->DrawCircle(III)V

    .line 89
    return-void
.end method

.method public DrawLine(IIII)V
    .locals 18

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 168
    sub-int v6, p3, p1

    .line 169
    sub-int v7, p4, p2

    .line 170
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 171
    if-gez v6, :cond_1

    const/4 v5, -0x1

    move v15, v5

    .line 172
    :goto_0
    if-gez v7, :cond_2

    const/4 v4, -0x1

    move v14, v4

    .line 173
    :goto_1
    if-gez v6, :cond_3

    const/4 v2, -0x1

    .line 174
    :cond_0
    :goto_2
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 175
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 176
    if-gt v5, v4, :cond_13

    .line 177
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 178
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 179
    if-gez v7, :cond_4

    const/4 v2, -0x1

    .line 180
    :goto_3
    const/4 v3, 0x0

    move v8, v4

    move v9, v5

    move v10, v2

    move v11, v3

    .line 182
    :goto_4
    shr-int/lit8 v3, v9, 0x1

    .line 183
    const/4 v2, 0x0

    move v12, v2

    move v13, v3

    move/from16 v4, p2

    move/from16 v3, p1

    :goto_5
    if-gt v12, v9, :cond_d

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v5, v5, LCatalano/Imaging/Color;->r:I

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v6, v6, LCatalano/Imaging/Color;->g:I

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    iget v7, v7, LCatalano/Imaging/Color;->b:I

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 185
    add-int v2, v13, v8

    .line 186
    if-lt v2, v9, :cond_5

    .line 187
    sub-int/2addr v2, v9

    .line 188
    add-int v5, v3, v15

    .line 189
    add-int v3, v4, v14

    move v4, v5

    .line 183
    :goto_6
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    move v13, v2

    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    goto :goto_5

    .line 171
    :cond_1
    if-lez v6, :cond_15

    const/4 v5, 0x1

    move v15, v5

    goto :goto_0

    .line 172
    :cond_2
    if-lez v7, :cond_14

    const/4 v4, 0x1

    move v14, v4

    goto :goto_1

    .line 173
    :cond_3
    if-lez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    .line 179
    :cond_4
    if-lez v7, :cond_12

    const/4 v2, 0x1

    goto :goto_3

    .line 191
    :cond_5
    add-int v5, v3, v11

    .line 192
    add-int v3, v4, v10

    move v4, v5

    goto :goto_6

    .line 197
    :cond_6
    sub-int v6, p3, p1

    .line 198
    sub-int v7, p4, p2

    .line 199
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 200
    if-gez v6, :cond_8

    const/4 v5, -0x1

    move v11, v5

    .line 201
    :goto_7
    if-gez v7, :cond_9

    const/4 v4, -0x1

    move v10, v4

    .line 202
    :goto_8
    if-gez v6, :cond_a

    const/4 v2, -0x1

    .line 203
    :cond_7
    :goto_9
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 204
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 205
    if-gt v5, v4, :cond_f

    .line 206
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 207
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 208
    if-gez v7, :cond_b

    const/4 v2, -0x1

    .line 209
    :goto_a
    const/4 v3, 0x0

    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    move/from16 v17, v5

    move v5, v3

    move/from16 v3, v17

    .line 211
    :goto_b
    shr-int/lit8 v7, v3, 0x1

    .line 212
    const/4 v6, 0x0

    move v9, v6

    move v6, v7

    :goto_c
    if-gt v9, v3, :cond_d

    .line 213
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/FastGraphics;->c:I

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v7, v0, v1, v8}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 214
    add-int/2addr v6, v2

    .line 215
    if-lt v6, v3, :cond_c

    .line 216
    sub-int/2addr v6, v3

    .line 217
    add-int v8, p1, v11

    .line 218
    add-int v7, p2, v10

    .line 212
    :goto_d
    add-int/lit8 v9, v9, 0x1

    move/from16 p2, v7

    move/from16 p1, v8

    goto :goto_c

    .line 200
    :cond_8
    if-lez v6, :cond_11

    const/4 v5, 0x1

    move v11, v5

    goto :goto_7

    .line 201
    :cond_9
    if-lez v7, :cond_10

    const/4 v4, 0x1

    move v10, v4

    goto :goto_8

    .line 202
    :cond_a
    if-lez v6, :cond_7

    const/4 v2, 0x1

    goto :goto_9

    .line 208
    :cond_b
    if-lez v7, :cond_e

    const/4 v2, 0x1

    goto :goto_a

    .line 220
    :cond_c
    add-int v8, p1, v5

    .line 221
    add-int v7, p2, v4

    goto :goto_d

    .line 225
    :cond_d
    return-void

    :cond_e
    move v2, v3

    goto :goto_a

    :cond_f
    move/from16 v16, v4

    move v4, v3

    move v3, v5

    move v5, v2

    move/from16 v2, v16

    goto :goto_b

    :cond_10
    move v10, v4

    goto :goto_8

    :cond_11
    move v11, v5

    goto :goto_7

    :cond_12
    move v2, v3

    goto/16 :goto_3

    :cond_13
    move v8, v4

    move v9, v5

    move v10, v3

    move v11, v2

    goto/16 :goto_4

    :cond_14
    move v14, v4

    goto/16 :goto_1

    :cond_15
    move v15, v5

    goto/16 :goto_0
.end method

.method public DrawLine(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)V
    .locals 4

    .prologue
    .line 155
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    iget v2, p2, LCatalano/Core/IntPoint;->x:I

    iget v3, p2, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1, v2, v3}, LCatalano/Imaging/FastGraphics;->DrawLine(IIII)V

    .line 156
    return-void
.end method

.method public DrawPolygon(LCatalano/Imaging/Shapes/IntPolygon;)V
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p1}, LCatalano/Imaging/Shapes/IntPolygon;->getX()[I

    move-result-object v0

    invoke-virtual {p1}, LCatalano/Imaging/Shapes/IntPolygon;->getY()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LCatalano/Imaging/FastGraphics;->DrawPolygon([I[I)V

    .line 233
    return-void
.end method

.method public DrawPolygon(LCatalano/Imaging/Shapes/IntPolygon;I)V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p1}, LCatalano/Imaging/Shapes/IntPolygon;->getX()[I

    move-result-object v0

    invoke-virtual {p1}, LCatalano/Imaging/Shapes/IntPolygon;->getY()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, LCatalano/Imaging/FastGraphics;->DrawPolygon([I[II)V

    .line 242
    return-void
.end method

.method public DrawPolygon(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LCatalano/Imaging/FastGraphics;->DrawPolygon(Ljava/util/List;I)V

    .line 267
    return-void
.end method

.method public DrawPolygon(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    if-le p2, v1, :cond_1

    .line 251
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 252
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Core/IntPoint;

    invoke-virtual {p0, v0, v1}, LCatalano/Imaging/FastGraphics;->DrawLine(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)V

    .line 251
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 254
    :cond_0
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Core/IntPoint;

    invoke-virtual {p0, v0, v1}, LCatalano/Imaging/FastGraphics;->DrawLine(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)V

    .line 259
    return-void

    .line 257
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Draw Polygon needs at least 3 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DrawPolygon([I[I)V
    .locals 1

    .prologue
    .line 275
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, LCatalano/Imaging/FastGraphics;->DrawPolygon([I[II)V

    .line 276
    return-void
.end method

.method public DrawPolygon([I[II)V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x0

    .line 285
    array-length v0, p1

    if-le v0, v1, :cond_2

    array-length v0, p2

    if-le v0, v1, :cond_2

    .line 286
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 287
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    .line 288
    aget v1, p1, v0

    aget v2, p2, v0

    add-int/lit8 v3, v0, -0x1

    aget v3, p1, v3

    add-int/lit8 v4, v0, -0x1

    aget v4, p2, v4

    invoke-virtual {p0, v1, v2, v3, v4}, LCatalano/Imaging/FastGraphics;->DrawLine(IIII)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    add-int/lit8 v0, p3, -0x1

    aget v0, p1, v0

    add-int/lit8 v1, p3, -0x1

    aget v1, p2, v1

    aget v2, p1, v5

    aget v3, p2, v5

    invoke-virtual {p0, v0, v1, v2, v3}, LCatalano/Imaging/FastGraphics;->DrawLine(IIII)V

    .line 299
    return-void

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Draw Polygon: X and Y must be the same size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Draw Polygon: X and Y needs at least 3 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DrawRectangle(IIII)V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, p2

    .line 330
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 331
    iget-object v1, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    iget-object v2, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    invoke-virtual {v1, p1, v0, v2}, LCatalano/Imaging/FastBitmap;->setRGB(IILCatalano/Imaging/Color;)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 334
    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 335
    iget-object v1, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    add-int v2, p1, p4

    iget-object v3, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    invoke-virtual {v1, v2, v0, v3}, LCatalano/Imaging/FastBitmap;->setRGB(IILCatalano/Imaging/Color;)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p1

    .line 338
    :goto_2
    add-int v1, p1, p4

    if-ge v0, v1, :cond_5

    .line 339
    iget-object v1, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    iget-object v2, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    invoke-virtual {v1, v0, p2, v2}, LCatalano/Imaging/FastBitmap;->setRGB(IILCatalano/Imaging/Color;)V

    .line 340
    iget-object v1, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    add-int v2, p2, p3

    iget-object v3, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    invoke-virtual {v1, v0, v2, v3}, LCatalano/Imaging/FastBitmap;->setRGB(IILCatalano/Imaging/Color;)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, p2

    .line 345
    :goto_3
    add-int v1, p2, p3

    if-ge v0, v1, :cond_3

    .line 346
    iget-object v1, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    iget v2, p0, LCatalano/Imaging/FastGraphics;->c:I

    invoke-virtual {v1, p1, v0, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, p2

    .line 349
    :goto_4
    add-int v1, p2, p3

    if-ge v0, v1, :cond_4

    .line 350
    iget-object v1, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    add-int v2, p1, p4

    iget v3, p0, LCatalano/Imaging/FastGraphics;->c:I

    invoke-virtual {v1, v2, v0, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v0, p1

    .line 353
    :goto_5
    add-int v1, p1, p4

    if-ge v0, v1, :cond_5

    .line 354
    iget-object v1, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    iget v2, p0, LCatalano/Imaging/FastGraphics;->c:I

    invoke-virtual {v1, v0, p2, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 355
    iget-object v1, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    add-int v2, p2, p3

    iget v3, p0, LCatalano/Imaging/FastGraphics;->c:I

    invoke-virtual {v1, v0, v2, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 358
    :cond_5
    return-void
.end method

.method public DrawRectangle(LCatalano/Core/IntPoint;II)V
    .locals 2

    .prologue
    .line 316
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1, p2, p3}, LCatalano/Imaging/FastGraphics;->DrawRectangle(IIII)V

    .line 317
    return-void
.end method

.method public DrawRectangle(LCatalano/Imaging/Shapes/IntRectangle;)V
    .locals 4

    .prologue
    .line 306
    iget v0, p1, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    iget v1, p1, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    iget v2, p1, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    iget v3, p1, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, v3}, LCatalano/Imaging/FastGraphics;->DrawRectangle(IIII)V

    .line 307
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, LCatalano/Imaging/FastGraphics;->c:I

    .line 64
    return-void
.end method

.method public setColor(III)V
    .locals 1

    .prologue
    .line 55
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, p1, p2, p3}, LCatalano/Imaging/Color;-><init>(III)V

    iput-object v0, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    .line 56
    return-void
.end method

.method public setColor(LCatalano/Imaging/Color;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, LCatalano/Imaging/FastGraphics;->b:LCatalano/Imaging/Color;

    .line 46
    return-void
.end method

.method public setImage(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, LCatalano/Imaging/FastGraphics;->a:LCatalano/Imaging/FastBitmap;

    .line 72
    return-void
.end method
