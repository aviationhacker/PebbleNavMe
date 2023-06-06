.class LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 112
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0xff

    .line 117
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_2

    .line 118
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->startY:I

    :goto_1
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->endWidth:I

    if-ge v1, v2, :cond_1

    .line 120
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    .line 121
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    .line 122
    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v5, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    .line 123
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v0, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    .line 124
    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 125
    iget-object v7, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v7}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v7, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 126
    iget-object v8, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v8}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v8, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    .line 127
    iget-object v9, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)LCatalano/Imaging/FastBitmap;

    move-result-object v9

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v9, v0, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    .line 129
    add-int/2addr v4, v2

    sub-int/2addr v4, v8

    sub-int/2addr v4, v3

    sub-int v6, v3, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v7

    sub-int v2, v3, v2

    sub-int/2addr v2, v8

    sub-int v3, v5, v9

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 130
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->b(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v3, v2}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->a(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;I)I

    .line 131
    :cond_0
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 117
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 135
    :cond_2
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->c(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->b(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)I

    move-result v0

    if-eq v0, v11, :cond_4

    .line 136
    const-wide v0, 0x406fe00000000000L    # 255.0

    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->a:LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->b(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    .line 138
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_2
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_4

    .line 139
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->startY:I

    :goto_3
    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v4, v4, LCatalano/Imaging/Concurrent/Share;->endWidth:I

    if-ge v1, v4, :cond_3

    .line 140
    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v5, v5, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v6, v2

    double-to-int v5, v6

    invoke-virtual {v4, v0, v1, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 138
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 145
    :cond_4
    return-void
.end method
