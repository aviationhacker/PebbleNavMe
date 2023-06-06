.class LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/HSLFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 247
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_b

    move v1, v2

    .line 254
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v3, LCatalano/Imaging/Concurrent/Share;->endWidth:I

    if-ge v1, v3, :cond_a

    .line 257
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    .line 258
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v5, v5, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v5

    .line 259
    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v6, v6, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v6, v0, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v6

    .line 261
    invoke-static {v3, v5, v6}, LCatalano/Imaging/Tools/ColorConverter;->RGBtoHLS(III)[F

    move-result-object v5

    .line 264
    aget v3, v5, v4

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    .line 265
    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->a(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/FloatRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMin()F

    move-result v6

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_6

    aget v3, v5, v4

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->a(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/FloatRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMax()F

    move-result v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_6

    aget v3, v5, v7

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    .line 266
    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->b(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/FloatRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMin()F

    move-result v6

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_6

    aget v3, v5, v7

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->b(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/FloatRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/FloatRange;->getMax()F

    move-result v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_6

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    .line 268
    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/IntRange;

    move-result-object v3

    invoke-virtual {v3}, LCatalano/Core/IntRange;->getMin()I

    move-result v3

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/IntRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMax()I

    move-result v6

    if-ge v3, v6, :cond_0

    aget v3, v5, v2

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/IntRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMin()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_0

    aget v3, v5, v2

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/IntRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMax()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-lez v3, :cond_1

    :cond_0
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    .line 269
    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/IntRange;

    move-result-object v3

    invoke-virtual {v3}, LCatalano/Core/IntRange;->getMin()I

    move-result v3

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/IntRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMax()I

    move-result v6

    if-le v3, v6, :cond_6

    aget v3, v5, v2

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/IntRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMin()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-gez v3, :cond_1

    aget v3, v5, v2

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/IntRange;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMax()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_6

    .line 273
    :cond_1
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->d(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 275
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->e(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->f(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)I

    move-result v3

    int-to-float v3, v3

    aput v3, v5, v2

    .line 276
    :cond_2
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->g(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->h(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)F

    move-result v3

    aput v3, v5, v4

    .line 277
    :cond_3
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->i(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->j(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)F

    move-result v3

    aput v3, v5, v7

    :cond_4
    move v3, v4

    .line 294
    :goto_2
    if-eqz v3, :cond_5

    .line 297
    aget v3, v5, v2

    aget v6, v5, v4

    aget v5, v5, v7

    invoke-static {v3, v6, v5}, LCatalano/Imaging/Tools/ColorConverter;->HSLtoRGB(FFF)[I

    move-result-object v3

    .line 298
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v5, v5, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0, v1, v3}, LCatalano/Imaging/FastBitmap;->setRGB(II[I)V

    .line 254
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 284
    :cond_6
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->d(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 286
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->e(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->f(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)I

    move-result v3

    int-to-float v3, v3

    aput v3, v5, v2

    .line 287
    :cond_7
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->g(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->h(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)F

    move-result v3

    aput v3, v5, v4

    .line 288
    :cond_8
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->i(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/HSLFiltering;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->j(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)F

    move-result v3

    aput v3, v5, v7

    :cond_9
    move v3, v4

    .line 290
    goto :goto_2

    .line 253
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 302
    :cond_b
    return-void

    :cond_c
    move v3, v2

    goto :goto_2
.end method
