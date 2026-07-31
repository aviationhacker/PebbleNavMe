.class LCatalano/Imaging/Concurrent/Filters/Exp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Exp;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Exp;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->a:LCatalano/Imaging/Concurrent/Filters/Exp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 75
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 81
    const-wide v0, 0x406fe00000000000L    # 255.0

    const-wide v2, 0x406fe00000000000L    # 255.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double v8, v0, v2

    .line 82
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_3

    .line 84
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 87
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    int-to-double v2, v2

    .line 88
    div-double/2addr v2, v8

    invoke-static {v2, v3}, LCatalano/Math/Approximation;->Highprecision_Exp(D)D

    move-result-wide v2

    .line 91
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v2, 0x0

    .line 92
    :cond_0
    const-wide v4, 0x406fe00000000000L    # 255.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 94
    :cond_1
    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v2, v2

    invoke-virtual {v4, v0, v1, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 99
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_2
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_b

    .line 100
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 101
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v2

    int-to-double v2, v2

    .line 102
    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    int-to-double v4, v4

    .line 103
    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v6, v6, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v6, v0, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v6

    int-to-double v10, v6

    .line 106
    div-double/2addr v2, v8

    invoke-static {v2, v3}, LCatalano/Math/Approximation;->Highprecision_Exp(D)D

    move-result-wide v6

    .line 107
    div-double v2, v4, v8

    invoke-static {v2, v3}, LCatalano/Math/Approximation;->Highprecision_Exp(D)D

    move-result-wide v4

    .line 108
    div-double v2, v10, v8

    invoke-static {v2, v3}, LCatalano/Math/Approximation;->Highprecision_Exp(D)D

    move-result-wide v2

    .line 111
    const-wide/16 v10, 0x0

    cmpg-double v10, v6, v10

    if-gez v10, :cond_4

    const-wide/16 v6, 0x0

    .line 112
    :cond_4
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v10, v6, v10

    if-lez v10, :cond_5

    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 114
    :cond_5
    const-wide/16 v10, 0x0

    cmpg-double v10, v4, v10

    if-gez v10, :cond_6

    const-wide/16 v4, 0x0

    .line 115
    :cond_6
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v10, v4, v10

    if-lez v10, :cond_7

    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 117
    :cond_7
    const-wide/16 v10, 0x0

    cmpg-double v10, v2, v10

    if-gez v10, :cond_8

    const-wide/16 v2, 0x0

    .line 118
    :cond_8
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v10, v2, v10

    if-lez v10, :cond_9

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 121
    :cond_9
    iget-object v10, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v10, v10, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v6, v6

    invoke-virtual {v10, v0, v1, v6}, LCatalano/Imaging/FastBitmap;->setRed(III)V

    .line 122
    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v6, v6, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v6, v0, v1, v4}, LCatalano/Imaging/FastBitmap;->setGreen(III)V

    .line 123
    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/Exp$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v2, v2

    invoke-virtual {v4, v0, v1, v2}, LCatalano/Imaging/FastBitmap;->setBlue(III)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 99
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 127
    :cond_b
    return-void
.end method
