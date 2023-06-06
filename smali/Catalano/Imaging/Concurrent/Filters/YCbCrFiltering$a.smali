.class LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 246
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_9

    move v1, v2

    .line 253
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v3, LCatalano/Imaging/Concurrent/Share;->endWidth:I

    if-ge v1, v3, :cond_8

    .line 256
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    .line 257
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v5, v5, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v5

    .line 258
    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v6, v6, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v6, v0, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v6

    .line 261
    sget-object v7, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_601:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    invoke-static {v3, v5, v6, v7}, LCatalano/Imaging/Tools/ColorConverter;->RGBtoYCbCr(IIILCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;)[F

    move-result-object v5

    .line 264
    aget v3, v5, v2

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    .line 265
    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->a(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)LCatalano/Core/FloatRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMin()F

    move-result v6

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_4

    aget v3, v5, v2

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->a(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)LCatalano/Core/FloatRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMax()F

    move-result v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_4

    aget v3, v5, v4

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    .line 266
    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->b(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)LCatalano/Core/FloatRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMin()F

    move-result v6

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_4

    aget v3, v5, v4

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->b(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)LCatalano/Core/FloatRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMax()F

    move-result v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_4

    aget v3, v5, v8

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    .line 267
    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->c(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)LCatalano/Core/FloatRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMin()F

    move-result v6

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_4

    aget v3, v5, v8

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->c(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)LCatalano/Core/FloatRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMax()F

    move-result v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_4

    .line 270
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->d(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 272
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->e(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->f(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)F

    move-result v3

    aput v3, v5, v2

    .line 273
    :cond_0
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->g(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->h(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)F

    move-result v3

    aput v3, v5, v4

    .line 274
    :cond_1
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->i(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->j(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)F

    move-result v3

    aput v3, v5, v8

    :cond_2
    move v3, v4

    .line 291
    :goto_2
    if-eqz v3, :cond_3

    .line 294
    aget v3, v5, v2

    aget v6, v5, v4

    aget v5, v5, v8

    sget-object v7, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_601:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    invoke-static {v3, v6, v5, v7}, LCatalano/Imaging/Tools/ColorConverter;->YCbCrtoRGB(FFFLCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;)[I

    move-result-object v3

    .line 295
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v5, v5, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0, v1, v3}, LCatalano/Imaging/FastBitmap;->setRGB(II[I)V

    .line 253
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 281
    :cond_4
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->d(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 283
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->e(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->f(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)F

    move-result v3

    aput v3, v5, v2

    .line 284
    :cond_5
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->g(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->h(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)F

    move-result v3

    aput v3, v5, v4

    .line 285
    :cond_6
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->i(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->j(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)F

    move-result v3

    aput v3, v5, v8

    :cond_7
    move v3, v4

    .line 287
    goto :goto_2

    .line 252
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 299
    :cond_9
    return-void

    :cond_a
    move v3, v2

    goto :goto_2
.end method
