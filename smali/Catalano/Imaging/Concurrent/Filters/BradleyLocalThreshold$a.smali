.class LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 132
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 137
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 138
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/lit8 v2, v0, -0x1

    .line 140
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->a(LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;)I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;

    invoke-static {v1}, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->b(LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;)F

    move-result v1

    sub-float v10, v0, v1

    .line 144
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_5

    .line 146
    sub-int v3, v0, v9

    .line 147
    add-int v1, v0, v9

    .line 149
    if-gez v3, :cond_6

    move v8, v4

    .line 151
    :goto_1
    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    move v3, v4

    .line 154
    :goto_2
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v5, v5, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 155
    sub-int v7, v3, v9

    .line 156
    add-int v5, v3, v9

    .line 158
    if-gez v7, :cond_1

    move v7, v4

    .line 160
    :cond_1
    if-le v5, v6, :cond_2

    move v5, v6

    .line 164
    :cond_2
    iget-object v11, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v11, v11, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v11, v0, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    iget-object v12, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;

    invoke-static {v12}, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->c(LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;)LCatalano/Imaging/Tools/IntegralImage;

    move-result-object v12

    invoke-virtual {v12, v8, v7, v1, v5}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMeanUnsafe(IIII)F

    move-result v5

    mul-float/2addr v5, v10

    float-to-int v5, v5

    if-ge v11, v5, :cond_3

    move v5, v4

    .line 165
    :goto_3
    iget-object v7, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v7, v7, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v7, v0, v3, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 164
    :cond_3
    const/16 v5, 0xff

    goto :goto_3

    .line 144
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_5
    return-void

    :cond_6
    move v8, v3

    goto :goto_1
.end method
