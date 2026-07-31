.class LCatalano/Imaging/Concurrent/Filters/Log$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Log;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Log;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->a:LCatalano/Imaging/Concurrent/Filters/Log;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 74
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 80
    const-wide v0, 0x406fe00000000000L    # 255.0

    const-wide v2, 0x406fe00000000000L    # 255.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double v8, v0, v2

    .line 81
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_4

    .line 83
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 84
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    int-to-double v2, v2

    .line 87
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    .line 90
    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    const-wide/16 v2, 0x0

    .line 91
    :cond_1
    const-wide v4, 0x406fe00000000000L    # 255.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_2

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 93
    :cond_2
    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v2, v2

    invoke-virtual {v4, v0, v1, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_4
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 98
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_2
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_f

    .line 99
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 100
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v2

    int-to-double v6, v2

    .line 101
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v2

    int-to-double v4, v2

    .line 102
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v2

    int-to-double v2, v2

    .line 105
    const-wide/16 v10, 0x0

    cmpl-double v10, v6, v10

    if-eqz v10, :cond_5

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    .line 106
    :cond_5
    const-wide/16 v10, 0x0

    cmpl-double v10, v4, v10

    if-eqz v10, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    .line 107
    :cond_6
    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-eqz v10, :cond_7

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    .line 110
    :cond_7
    const-wide/16 v10, 0x0

    cmpg-double v10, v6, v10

    if-gez v10, :cond_8

    const-wide/16 v6, 0x0

    .line 111
    :cond_8
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v10, v6, v10

    if-lez v10, :cond_9

    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 113
    :cond_9
    const-wide/16 v10, 0x0

    cmpg-double v10, v4, v10

    if-gez v10, :cond_a

    const-wide/16 v4, 0x0

    .line 114
    :cond_a
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v10, v4, v10

    if-lez v10, :cond_b

    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 116
    :cond_b
    const-wide/16 v10, 0x0

    cmpg-double v10, v2, v10

    if-gez v10, :cond_c

    const-wide/16 v2, 0x0

    .line 117
    :cond_c
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v10, v2, v10

    if-lez v10, :cond_d

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 120
    :cond_d
    iget-object v10, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v10, v10, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v6, v6

    invoke-virtual {v10, v0, v1, v6}, LCatalano/Imaging/FastBitmap;->setRed(III)V

    .line 121
    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v6, v6, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v6, v0, v1, v4}, LCatalano/Imaging/FastBitmap;->setGreen(III)V

    .line 122
    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/Log$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v2, v2

    invoke-virtual {v4, v0, v1, v2}, LCatalano/Imaging/FastBitmap;->setBlue(III)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 98
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 126
    :cond_f
    return-void
.end method
