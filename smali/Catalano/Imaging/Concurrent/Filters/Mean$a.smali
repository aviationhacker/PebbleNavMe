.class LCatalano/Imaging/Concurrent/Filters/Mean$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Mean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Mean;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Mean;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 187
    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v3

    invoke-static {v2, v3}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;I)I

    move-result v20

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v2

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-boolean v3, v3, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    if-eqz v3, :cond_0

    .line 199
    const/4 v2, 0x0

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    iput v4, v3, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    :cond_0
    move v8, v2

    .line 203
    sget-object v2, LCatalano/Imaging/Concurrent/Filters/Mean$1;->a:[I

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/Mean;->b(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    move-result-object v3

    invoke-virtual {v3}, LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 415
    :cond_1
    return-void

    .line 205
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v3, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v2, v3, :cond_1

    .line 209
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 210
    const/4 v6, 0x0

    .line 211
    const/4 v5, 0x0

    .line 212
    const/4 v4, 0x0

    move v7, v4

    :goto_2
    move/from16 v0, v20

    if-ge v7, v0, :cond_4

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v4

    sub-int v4, v7, v4

    add-int v9, v2, v4

    .line 214
    const/4 v4, 0x0

    move/from16 v26, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v26

    :goto_3
    move/from16 v0, v20

    if-ge v6, v0, :cond_3

    .line 215
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v10

    sub-int v10, v6, v10

    add-int/2addr v10, v3

    .line 216
    if-ltz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v11, v11, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v11, v8

    if-ge v9, v11, :cond_2

    if-ltz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v11, v11, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v11}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    add-int/2addr v4, v10

    .line 218
    add-int/lit8 v5, v5, 0x1

    .line 214
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 212
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_2

    .line 222
    :cond_4
    div-int v4, v5, v6

    .line 223
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v5, v5, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v2, v3, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 208
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v2, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v3, v2, :cond_1

    .line 233
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v4, v2, :cond_a

    .line 234
    const/4 v9, 0x0

    .line 235
    const/4 v7, 0x0

    .line 236
    const/4 v2, 0x0

    move v10, v2

    move v6, v7

    move v5, v7

    :goto_6
    move/from16 v0, v20

    if-ge v10, v0, :cond_9

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v2

    sub-int v2, v10, v2

    add-int v11, v3, v2

    .line 238
    const/4 v2, 0x0

    move/from16 v26, v2

    move v2, v7

    move v7, v9

    move/from16 v9, v26

    move/from16 v27, v5

    move v5, v6

    move/from16 v6, v27

    :goto_7
    move/from16 v0, v20

    if-ge v9, v0, :cond_8

    .line 239
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v12}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v12

    sub-int v12, v9, v12

    add-int/2addr v12, v4

    .line 240
    if-ltz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v13, v13, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v13, v8

    if-ge v11, v13, :cond_7

    if-ltz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v13, v13, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v13}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_7

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v13

    add-int/2addr v6, v13

    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v13

    add-int/2addr v5, v13

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v12

    add-int/2addr v2, v12

    .line 244
    add-int/lit8 v7, v7, 0x1

    .line 238
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 236
    :cond_8
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v9, v7

    move v7, v2

    move/from16 v26, v6

    move v6, v5

    move/from16 v5, v26

    goto :goto_6

    .line 248
    :cond_9
    div-int/2addr v5, v9

    .line 249
    div-int/2addr v6, v9

    .line 250
    div-int/2addr v7, v9

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 232
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 258
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v3, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v2, v3, :cond_1

    .line 261
    const/4 v3, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 262
    const/4 v5, 0x0

    .line 263
    const-wide/16 v6, 0x0

    .line 264
    const/4 v4, 0x0

    move v9, v4

    :goto_a
    move/from16 v0, v20

    if-ge v9, v0, :cond_d

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v4

    sub-int v4, v9, v4

    add-int v10, v2, v4

    .line 266
    const/4 v4, 0x0

    move/from16 v26, v4

    move-wide/from16 v27, v6

    move/from16 v7, v26

    move v6, v5

    move-wide/from16 v4, v27

    :goto_b
    move/from16 v0, v20

    if-ge v7, v0, :cond_c

    .line 267
    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v11

    sub-int v11, v7, v11

    add-int/2addr v11, v3

    .line 268
    if-ltz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v12, v12, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v12, v8

    if-ge v10, v12, :cond_b

    if-ltz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v12, v12, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v12}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v12

    if-ge v11, v12, :cond_b

    .line 269
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v14}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    int-to-double v14, v11

    div-double/2addr v12, v14

    add-double/2addr v4, v12

    .line 270
    add-int/lit8 v6, v6, 0x1

    .line 266
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 264
    :cond_c
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move-wide/from16 v26, v4

    move v5, v6

    move-wide/from16 v6, v26

    goto :goto_a

    .line 274
    :cond_d
    int-to-double v4, v5

    div-double/2addr v4, v6

    .line 275
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v6, v6, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v6, v2, v3, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 260
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 279
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v2, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v3, v2, :cond_1

    .line 285
    const/4 v4, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v4, v2, :cond_13

    .line 286
    const/4 v5, 0x0

    .line 287
    const-wide/16 v6, 0x0

    .line 288
    const/4 v2, 0x0

    move v9, v2

    move-wide v10, v6

    move-wide v12, v6

    :goto_e
    move/from16 v0, v20

    if-ge v9, v0, :cond_12

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v2

    sub-int v2, v9, v2

    add-int v14, v3, v2

    .line 290
    const/4 v2, 0x0

    move/from16 v26, v2

    move v2, v5

    move/from16 v5, v26

    :goto_f
    move/from16 v0, v20

    if-ge v5, v0, :cond_11

    .line 291
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v15}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v15

    sub-int v15, v5, v15

    add-int/2addr v15, v4

    .line 292
    if-ltz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    move/from16 v16, v0

    add-int v16, v16, v8

    move/from16 v0, v16

    if-ge v14, v0, :cond_10

    if-ltz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_10

    .line 293
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    add-double v12, v12, v16

    .line 294
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    add-double v10, v10, v16

    .line 295
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    add-double v6, v6, v16

    .line 296
    add-int/lit8 v2, v2, 0x1

    .line 290
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_f

    .line 288
    :cond_11
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v5, v2

    goto/16 :goto_e

    .line 300
    :cond_12
    int-to-double v14, v5

    div-double v12, v14, v12

    .line 301
    int-to-double v14, v5

    div-double v10, v14, v10

    .line 302
    int-to-double v14, v5

    div-double/2addr v14, v6

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v5, v12

    double-to-int v6, v10

    double-to-int v7, v14

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    .line 284
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    .line 310
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v3, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v2, v3, :cond_1

    .line 314
    const/4 v3, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_17

    .line 315
    const-wide/16 v6, 0x0

    .line 316
    const/4 v4, 0x0

    move v12, v4

    move-wide v10, v6

    :goto_12
    move/from16 v0, v20

    if-ge v12, v0, :cond_16

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v4

    sub-int v4, v12, v4

    add-int v13, v2, v4

    .line 318
    const/4 v4, 0x0

    move v9, v4

    move-wide v4, v6

    move-wide v6, v10

    :goto_13
    move/from16 v0, v20

    if-ge v9, v0, :cond_15

    .line 319
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v10

    sub-int v10, v9, v10

    add-int/2addr v10, v3

    .line 320
    if-ltz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v11, v11, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v11, v8

    if-ge v13, v11, :cond_14

    if-ltz v10, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v11, v11, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v11}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v11

    if-ge v10, v11, :cond_14

    .line 321
    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v11

    invoke-virtual {v11, v13, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    int-to-double v14, v11

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Mean;->d(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    int-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v6, v14

    .line 322
    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v11

    invoke-virtual {v11, v13, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    int-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v14}, LCatalano/Imaging/Concurrent/Filters/Mean;->d(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v14

    int-to-double v14, v14

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v4, v10

    .line 318
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 316
    :cond_15
    add-int/lit8 v9, v12, 0x1

    move v12, v9

    move-wide v10, v6

    move-wide v6, v4

    goto :goto_12

    .line 326
    :cond_16
    div-double v4, v10, v6

    .line 327
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v6, v6, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v6, v2, v3, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    .line 313
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 331
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v2, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v3, v2, :cond_1

    .line 336
    const/4 v4, 0x0

    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v4, v2, :cond_1c

    .line 337
    const-wide/16 v14, 0x0

    .line 338
    const-wide/16 v6, 0x0

    .line 339
    const/4 v2, 0x0

    move v5, v2

    move-wide v10, v6

    move-wide v12, v6

    move-wide/from16 v16, v14

    move-wide/from16 v18, v14

    :goto_16
    move/from16 v0, v20

    if-ge v5, v0, :cond_1b

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v2

    sub-int v2, v5, v2

    add-int v9, v3, v2

    .line 341
    const/4 v2, 0x0

    :goto_17
    move/from16 v0, v20

    if-ge v2, v0, :cond_1a

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v21

    sub-int v21, v2, v21

    add-int v21, v21, v4

    .line 343
    if-ltz v9, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    move/from16 v22, v0

    add-int v22, v22, v8

    move/from16 v0, v22

    if-ge v9, v0, :cond_19

    if-ltz v21, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_19

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, LCatalano/Imaging/Concurrent/Filters/Mean;->d(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v18, v18, v22

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, LCatalano/Imaging/Concurrent/Filters/Mean;->d(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v16, v16, v22

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, LCatalano/Imaging/Concurrent/Filters/Mean;->d(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v14, v14, v22

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, LCatalano/Imaging/Concurrent/Filters/Mean;->d(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v12, v12, v22

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, LCatalano/Imaging/Concurrent/Filters/Mean;->d(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v10, v10, v22

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, LCatalano/Imaging/Concurrent/Filters/Mean;->d(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v6, v6, v22

    .line 341
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_17

    .line 339
    :cond_1a
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_16

    .line 354
    :cond_1b
    div-double v12, v18, v12

    .line 355
    div-double v10, v16, v10

    .line 356
    div-double/2addr v14, v6

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v5, v12

    double-to-int v6, v10

    double-to-int v7, v14

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 336
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15

    .line 335
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14

    .line 364
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_18
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v3, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v2, v3, :cond_1

    .line 367
    const/4 v3, 0x0

    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_20

    .line 368
    const/4 v5, 0x0

    .line 369
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 370
    const/4 v4, 0x0

    move v9, v4

    :goto_1a
    move/from16 v0, v20

    if-ge v9, v0, :cond_1f

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v4

    sub-int v4, v9, v4

    add-int v10, v2, v4

    .line 372
    const/4 v4, 0x0

    move/from16 v26, v4

    move-wide/from16 v27, v6

    move/from16 v7, v26

    move v6, v5

    move-wide/from16 v4, v27

    :goto_1b
    move/from16 v0, v20

    if-ge v7, v0, :cond_1e

    .line 373
    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v11

    sub-int v11, v7, v11

    add-int/2addr v11, v3

    .line 374
    if-ltz v10, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v12, v12, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v12, v8

    if-ge v10, v12, :cond_1d

    if-ltz v11, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v12, v12, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v12}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v12

    if-ge v11, v12, :cond_1d

    .line 375
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v12}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    int-to-double v12, v11

    mul-double/2addr v4, v12

    .line 376
    add-int/lit8 v6, v6, 0x1

    .line 372
    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 370
    :cond_1e
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move-wide/from16 v26, v4

    move v5, v6

    move-wide/from16 v6, v26

    goto :goto_1a

    .line 380
    :cond_1f
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    int-to-double v4, v5

    div-double v4, v10, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 381
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v6, v6, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v6, v2, v3, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_19

    .line 366
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_18

    .line 385
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v2, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v3, v2, :cond_1

    .line 391
    const/4 v4, 0x0

    :goto_1d
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v4, v2, :cond_25

    .line 392
    const/4 v5, 0x0

    .line 393
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 394
    const/4 v2, 0x0

    move v9, v2

    move-wide v10, v6

    move-wide v12, v6

    :goto_1e
    move/from16 v0, v20

    if-ge v9, v0, :cond_24

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v2

    sub-int v2, v9, v2

    add-int v14, v3, v2

    .line 396
    const/4 v2, 0x0

    move/from16 v26, v2

    move v2, v5

    move/from16 v5, v26

    :goto_1f
    move/from16 v0, v20

    if-ge v5, v0, :cond_23

    .line 397
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    invoke-static {v15}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/Concurrent/Filters/Mean;)I

    move-result v15

    sub-int v15, v5, v15

    add-int/2addr v15, v4

    .line 398
    if-ltz v14, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    move/from16 v16, v0

    add-int v16, v16, v8

    move/from16 v0, v16

    if-ge v14, v0, :cond_22

    if-ltz v15, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_22

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->a:LCatalano/Imaging/Concurrent/Filters/Mean;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, LCatalano/Imaging/Concurrent/Filters/Mean;->c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    mul-double v6, v6, v16

    .line 402
    add-int/lit8 v2, v2, 0x1

    .line 396
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 394
    :cond_23
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v5, v2

    goto/16 :goto_1e

    .line 406
    :cond_24
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v5

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 407
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v5

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 408
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v5

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Mean$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v5, v12

    double-to-int v6, v10

    double-to-int v7, v14

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 391
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    .line 390
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1c

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
