.class LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 94
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 100
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_8

    .line 101
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->startY:I

    :goto_1
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->endWidth:I

    if-ge v1, v2, :cond_7

    .line 103
    const/4 v3, 0x0

    .line 105
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v2

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v5, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    sub-int/2addr v2, v4

    .line 106
    if-gez v2, :cond_0

    neg-int v2, v2

    .line 107
    :cond_0
    if-le v2, v3, :cond_9

    .line 109
    :goto_2
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    sub-int/2addr v3, v4

    .line 110
    if-gez v3, :cond_1

    neg-int v3, v3

    .line 111
    :cond_1
    if-le v3, v2, :cond_2

    move v2, v3

    .line 113
    :cond_2
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v4, v5, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    sub-int/2addr v3, v4

    .line 114
    if-gez v3, :cond_3

    neg-int v3, v3

    .line 115
    :cond_3
    if-le v3, v2, :cond_4

    move v2, v3

    .line 117
    :cond_4
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v0, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v0, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    sub-int/2addr v3, v4

    .line 118
    if-gez v3, :cond_5

    neg-int v3, v3

    .line 119
    :cond_5
    if-le v3, v2, :cond_6

    move v2, v3

    .line 121
    :cond_6
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 100
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 124
    :cond_8
    return-void

    :cond_9
    move v2, v3

    goto :goto_2
.end method
