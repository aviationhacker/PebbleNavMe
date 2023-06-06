.class LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/ColorFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/ColorFiltering;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/ColorFiltering;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/ColorFiltering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 92
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 97
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v1, v0, :cond_2

    move v2, v6

    .line 98
    :goto_1
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 99
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    .line 100
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    .line 101
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    .line 103
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/ColorFiltering;

    .line 104
    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->a(LCatalano/Imaging/Concurrent/Filters/ColorFiltering;)LCatalano/Core/IntRange;

    move-result-object v0

    invoke-virtual {v0}, LCatalano/Core/IntRange;->getMin()I

    move-result v0

    if-lt v3, v0, :cond_0

    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/ColorFiltering;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->a(LCatalano/Imaging/Concurrent/Filters/ColorFiltering;)LCatalano/Core/IntRange;

    move-result-object v0

    invoke-virtual {v0}, LCatalano/Core/IntRange;->getMax()I

    move-result v0

    if-gt v3, v0, :cond_0

    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/ColorFiltering;

    .line 105
    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->b(LCatalano/Imaging/Concurrent/Filters/ColorFiltering;)LCatalano/Core/IntRange;

    move-result-object v0

    invoke-virtual {v0}, LCatalano/Core/IntRange;->getMin()I

    move-result v0

    if-lt v4, v0, :cond_0

    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/ColorFiltering;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->b(LCatalano/Imaging/Concurrent/Filters/ColorFiltering;)LCatalano/Core/IntRange;

    move-result-object v0

    invoke-virtual {v0}, LCatalano/Core/IntRange;->getMax()I

    move-result v0

    if-gt v4, v0, :cond_0

    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/ColorFiltering;

    .line 106
    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->c(LCatalano/Imaging/Concurrent/Filters/ColorFiltering;)LCatalano/Core/IntRange;

    move-result-object v0

    invoke-virtual {v0}, LCatalano/Core/IntRange;->getMin()I

    move-result v0

    if-lt v5, v0, :cond_0

    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->a:LCatalano/Imaging/Concurrent/Filters/ColorFiltering;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->c(LCatalano/Imaging/Concurrent/Filters/ColorFiltering;)LCatalano/Core/IntRange;

    move-result-object v0

    invoke-virtual {v0}, LCatalano/Core/IntRange;->getMax()I

    move-result v0

    if-gt v5, v0, :cond_0

    .line 108
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 98
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    goto :goto_2

    .line 97
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 116
    :cond_2
    return-void
.end method
