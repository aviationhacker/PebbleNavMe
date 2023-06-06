.class LCatalano/Imaging/Concurrent/Filters/Grayscale$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Grayscale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Grayscale;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Grayscale;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->a:LCatalano/Imaging/Concurrent/Filters/Grayscale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 212
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->a:LCatalano/Imaging/Concurrent/Filters/Grayscale;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Grayscale;->a(LCatalano/Imaging/Concurrent/Filters/Grayscale;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_2

    move v1, v2

    .line 221
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 222
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    int-to-double v4, v3

    .line 223
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v3

    int-to-double v6, v3

    .line 224
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v3

    int-to-double v8, v3

    .line 226
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->a:LCatalano/Imaging/Concurrent/Filters/Grayscale;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/Grayscale;->b(LCatalano/Imaging/Concurrent/Filters/Grayscale;)D

    move-result-wide v10

    mul-double/2addr v4, v10

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->a:LCatalano/Imaging/Concurrent/Filters/Grayscale;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/Grayscale;->c(LCatalano/Imaging/Concurrent/Filters/Grayscale;)D

    move-result-wide v10

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->a:LCatalano/Imaging/Concurrent/Filters/Grayscale;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/Grayscale;->d(LCatalano/Imaging/Concurrent/Filters/Grayscale;)D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 228
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v3, v0, v1, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    sget-object v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$1;->a:[I

    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->a:LCatalano/Imaging/Concurrent/Filters/Grayscale;

    invoke-static {v1}, LCatalano/Imaging/Concurrent/Filters/Grayscale;->e(LCatalano/Imaging/Concurrent/Filters/Grayscale;)LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    move-result-object v1

    invoke-virtual {v1}, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 323
    :cond_2
    return-void

    .line 239
    :pswitch_0
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_2
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_2

    move v1, v2

    .line 240
    :goto_3
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 241
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    int-to-double v4, v3

    .line 242
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v3

    int-to-double v6, v3

    .line 243
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v3

    int-to-double v8, v3

    .line 245
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 246
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 247
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 248
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 249
    add-double/2addr v4, v10

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 251
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v3, v0, v1, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 239
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 257
    :pswitch_1
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_4
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_2

    move v1, v2

    .line 258
    :goto_5
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 259
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    int-to-double v4, v3

    .line 260
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v3

    int-to-double v6, v3

    .line 261
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v3

    int-to-double v8, v3

    .line 263
    add-double/2addr v4, v6

    add-double/2addr v4, v8

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    .line 265
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v3, v0, v1, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 257
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 271
    :pswitch_2
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_6
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_2

    move v1, v2

    .line 272
    :goto_7
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 273
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    int-to-double v4, v3

    .line 274
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v3

    int-to-double v6, v3

    .line 275
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v3

    int-to-double v8, v3

    .line 277
    mul-double/2addr v4, v6

    mul-double/2addr v4, v8

    const-wide v6, 0x3fd51eb851eb851fL    # 0.33

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 279
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v3, v0, v1, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 271
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 285
    :pswitch_3
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_8
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_2

    move v1, v2

    .line 286
    :goto_9
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 287
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    int-to-double v4, v3

    .line 288
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v3

    int-to-double v6, v3

    .line 289
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v3

    int-to-double v8, v3

    .line 291
    const-wide v10, 0x3fcb333333333333L    # 0.2125

    mul-double/2addr v4, v10

    const-wide v10, 0x3fe6e48e8a71de6aL    # 0.7154

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    const-wide v6, 0x3fb27525460aa64cL    # 0.0721

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 293
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v3, v0, v1, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 285
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 299
    :pswitch_4
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_a
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_2

    move v1, v2

    .line 300
    :goto_b
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 301
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    int-to-double v4, v3

    .line 302
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 303
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 305
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v3, v0, v1, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 299
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 311
    :pswitch_5
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_c
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_2

    move v1, v2

    .line 312
    :goto_d
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 313
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    int-to-double v4, v3

    .line 314
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 315
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 317
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v3, v0, v1, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 311
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
