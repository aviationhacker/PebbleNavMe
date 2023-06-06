.class LCatalano/Imaging/Concurrent/Filters/Convolution$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Convolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Convolution;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Convolution;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 170
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v2

    invoke-static {v1, v2}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;[[I)I

    move-result v8

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-boolean v1, v1, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    if-eqz v1, :cond_20

    .line 182
    const/4 v1, 0x0

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    iput v3, v2, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    move v7, v1

    .line 186
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v1, v1, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v1, v2, :cond_17

    .line 189
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 190
    const/4 v4, 0x0

    .line 191
    const/4 v3, 0x0

    move v5, v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v6

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 192
    sub-int v6, v3, v8

    add-int v12, v1, v6

    .line 193
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    array-length v9, v9

    if-ge v6, v9, :cond_3

    .line 194
    sub-int v9, v6, v8

    add-int/2addr v9, v2

    .line 195
    if-ltz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v10, v10, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v10, v7

    if-ge v12, v10, :cond_0

    if-ltz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v10, v10, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v10}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    aget v10, v10, v6

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Convolution;->b(LCatalano/Imaging/Concurrent/Filters/Convolution;)LCatalano/Imaging/FastBitmap;

    move-result-object v11

    invoke-virtual {v11, v12, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    mul-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 197
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v9

    aget-object v9, v9, v3

    aget v9, v9, v6

    add-int/2addr v9, v5

    move v5, v4

    .line 193
    :goto_5
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v5

    move v5, v9

    goto :goto_4

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Convolution;->c(LCatalano/Imaging/Concurrent/Filters/Convolution;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 200
    add-int v9, v1, v3

    sub-int/2addr v9, v8

    .line 201
    add-int v10, v2, v6

    sub-int/2addr v10, v8

    .line 203
    if-gez v9, :cond_1

    const/4 v9, 0x0

    .line 204
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v11, v11, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-lt v9, v11, :cond_1e

    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v9, v9, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/lit8 v9, v9, -0x1

    move v11, v9

    .line 206
    :goto_6
    if-gez v10, :cond_1d

    const/4 v9, 0x0

    .line 207
    :goto_7
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v10, v10, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v10}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    if-lt v9, v10, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v9, v9, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v9}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 209
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    aget v10, v10, v6

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Convolution;->b(LCatalano/Imaging/Concurrent/Filters/Convolution;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v11, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    mul-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 210
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v9

    aget-object v9, v9, v3

    aget v9, v9, v6

    add-int/2addr v9, v5

    move v5, v4

    goto :goto_5

    .line 191
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 215
    :cond_4
    if-eqz v5, :cond_1c

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/Convolution;->d(LCatalano/Imaging/Concurrent/Filters/Convolution;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/Convolution;->e(LCatalano/Imaging/Concurrent/Filters/Convolution;)I

    move-result v3

    div-int v3, v4, v3

    .line 224
    :goto_8
    const/16 v4, 0xff

    if-le v3, v4, :cond_5

    const/16 v3, 0xff

    .line 225
    :cond_5
    if-gez v3, :cond_6

    const/4 v3, 0x0

    .line 227
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1, v2, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 220
    :cond_7
    div-int v3, v4, v5

    goto :goto_8

    .line 188
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 233
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v1, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v2, v1, :cond_17

    .line 234
    const/4 v3, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v1, v1, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    if-ge v3, v1, :cond_16

    .line 235
    const/4 v4, 0x0

    .line 236
    const/4 v1, 0x0

    move v5, v4

    move v6, v4

    move v9, v4

    :goto_b
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v10

    array-length v10, v10

    if-ge v1, v10, :cond_e

    .line 237
    sub-int v10, v1, v8

    add-int v14, v2, v10

    .line 238
    const/4 v10, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    array-length v11, v11

    if-ge v10, v11, :cond_d

    .line 239
    sub-int v11, v10, v8

    add-int v12, v3, v11

    .line 240
    if-ltz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v11, v11, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v11, v7

    if-ge v14, v11, :cond_a

    if-ltz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v11, v11, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v11}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v11

    if-ge v12, v11, :cond_a

    .line 241
    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v11

    aget-object v11, v11, v1

    aget v11, v11, v10

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Convolution;->b(LCatalano/Imaging/Concurrent/Filters/Convolution;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v14, v12}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v13

    mul-int/2addr v11, v13

    add-int/2addr v11, v6

    .line 242
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v6

    aget-object v6, v6, v1

    aget v6, v6, v10

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Convolution;->b(LCatalano/Imaging/Concurrent/Filters/Convolution;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v14, v12}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v13

    mul-int/2addr v6, v13

    add-int/2addr v6, v5

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v5

    aget-object v5, v5, v1

    aget v5, v5, v10

    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Convolution;->b(LCatalano/Imaging/Concurrent/Filters/Convolution;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v14, v12}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v12

    mul-int/2addr v5, v12

    add-int/2addr v5, v4

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v4

    aget-object v4, v4, v1

    aget v4, v4, v10

    add-int/2addr v9, v4

    move/from16 v16, v11

    move v11, v9

    move/from16 v9, v16

    .line 238
    :goto_d
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move v4, v5

    move v5, v6

    move v6, v9

    move v9, v11

    goto/16 :goto_c

    .line 246
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Convolution;->c(LCatalano/Imaging/Concurrent/Filters/Convolution;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 247
    add-int v11, v2, v1

    sub-int/2addr v11, v8

    .line 248
    add-int v12, v3, v10

    sub-int/2addr v12, v8

    .line 250
    if-gez v11, :cond_b

    const/4 v11, 0x0

    .line 251
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v13, v13, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-lt v11, v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v11, v11, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/lit8 v11, v11, -0x1

    move v13, v11

    .line 253
    :goto_e
    if-gez v12, :cond_19

    const/4 v11, 0x0

    .line 254
    :goto_f
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v12, v12, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v12}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v12

    if-lt v11, v12, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v11, v11, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v11}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .line 256
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v12}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v12

    aget-object v12, v12, v1

    aget v12, v12, v10

    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v15}, LCatalano/Imaging/Concurrent/Filters/Convolution;->b(LCatalano/Imaging/Concurrent/Filters/Convolution;)LCatalano/Imaging/FastBitmap;

    move-result-object v15

    invoke-virtual {v15, v13, v11}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v15

    mul-int/2addr v12, v15

    add-int/2addr v12, v6

    .line 257
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v6

    aget-object v6, v6, v1

    aget v6, v6, v10

    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v15}, LCatalano/Imaging/Concurrent/Filters/Convolution;->b(LCatalano/Imaging/Concurrent/Filters/Convolution;)LCatalano/Imaging/FastBitmap;

    move-result-object v15

    invoke-virtual {v15, v13, v11}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v15

    mul-int/2addr v6, v15

    add-int/2addr v6, v5

    .line 258
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v5

    aget-object v5, v5, v1

    aget v5, v5, v10

    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v15}, LCatalano/Imaging/Concurrent/Filters/Convolution;->b(LCatalano/Imaging/Concurrent/Filters/Convolution;)LCatalano/Imaging/FastBitmap;

    move-result-object v15

    invoke-virtual {v15, v13, v11}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v11

    mul-int/2addr v5, v11

    add-int/2addr v5, v4

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I

    move-result-object v4

    aget-object v4, v4, v1

    aget v4, v4, v10

    add-int v11, v9, v4

    move v9, v12

    goto/16 :goto_d

    .line 236
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 264
    :cond_e
    if-eqz v9, :cond_18

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v1}, LCatalano/Imaging/Concurrent/Filters/Convolution;->d(LCatalano/Imaging/Concurrent/Filters/Convolution;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v1}, LCatalano/Imaging/Concurrent/Filters/Convolution;->e(LCatalano/Imaging/Concurrent/Filters/Convolution;)I

    move-result v1

    div-int v1, v6, v1

    .line 267
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/Convolution;->e(LCatalano/Imaging/Concurrent/Filters/Convolution;)I

    move-result v6

    div-int/2addr v5, v6

    .line 268
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->a:LCatalano/Imaging/Concurrent/Filters/Convolution;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/Convolution;->e(LCatalano/Imaging/Concurrent/Filters/Convolution;)I

    move-result v6

    div-int v6, v4, v6

    move v4, v1

    .line 277
    :goto_10
    const/16 v1, 0xff

    if-le v4, v1, :cond_f

    const/16 v4, 0xff

    .line 278
    :cond_f
    const/16 v1, 0xff

    if-le v5, v1, :cond_10

    const/16 v5, 0xff

    .line 279
    :cond_10
    const/16 v1, 0xff

    if-le v6, v1, :cond_11

    const/16 v6, 0xff

    .line 281
    :cond_11
    if-gez v4, :cond_12

    const/4 v4, 0x0

    .line 282
    :cond_12
    if-gez v5, :cond_13

    const/4 v5, 0x0

    .line 283
    :cond_13
    if-gez v6, :cond_14

    const/4 v6, 0x0

    .line 285
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/Convolution$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v1, v1, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual/range {v1 .. v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 271
    :cond_15
    div-int v1, v6, v9

    .line 272
    div-int/2addr v5, v9

    .line 273
    div-int v6, v4, v9

    move v4, v1

    goto :goto_10

    .line 233
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 289
    :cond_17
    return-void

    :cond_18
    move/from16 v16, v4

    move v4, v6

    move/from16 v6, v16

    goto :goto_10

    :cond_19
    move v11, v12

    goto/16 :goto_f

    :cond_1a
    move v13, v11

    goto/16 :goto_e

    :cond_1b
    move v11, v9

    move v9, v6

    move v6, v5

    move v5, v4

    goto/16 :goto_d

    :cond_1c
    move v3, v4

    goto/16 :goto_8

    :cond_1d
    move v9, v10

    goto/16 :goto_7

    :cond_1e
    move v11, v9

    goto/16 :goto_6

    :cond_1f
    move v9, v5

    move v5, v4

    goto/16 :goto_5

    :cond_20
    move v7, v8

    goto/16 :goto_0
.end method
