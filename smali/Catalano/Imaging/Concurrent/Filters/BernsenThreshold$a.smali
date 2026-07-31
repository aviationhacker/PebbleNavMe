.class LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 116
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v4, 0xff

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_4

    move v1, v2

    .line 122
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 124
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->a(LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;)LCatalano/Imaging/FastBitmap;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->b(LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;)LCatalano/Imaging/FastBitmap;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-double v6, v3

    .line 125
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->a(LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;)LCatalano/Imaging/FastBitmap;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->b(LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;)LCatalano/Imaging/FastBitmap;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    int-to-double v8, v3

    .line 127
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    .line 128
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->c(LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;)D

    move-result-wide v10

    cmpg-double v5, v6, v10

    if-gez v5, :cond_1

    .line 129
    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    cmpl-double v3, v8, v6

    if-ltz v3, :cond_0

    move v3, v4

    .line 133
    :goto_2
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v5, v5, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0, v1, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v3, v2

    .line 129
    goto :goto_2

    .line 131
    :cond_1
    int-to-double v6, v3

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_2

    .line 121
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_4
    return-void
.end method
