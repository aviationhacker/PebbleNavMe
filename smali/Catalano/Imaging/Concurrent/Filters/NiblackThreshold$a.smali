.class LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 209
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_2

    move v1, v2

    .line 214
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 215
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    int-to-float v3, v3

    .line 216
    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->a(LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;)LCatalano/Imaging/FastBitmap;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-float v4, v4

    .line 217
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b(LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;)LCatalano/Imaging/FastBitmap;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    int-to-float v5, v5

    .line 218
    float-to-double v6, v3

    float-to-double v8, v4

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->c(LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;)D

    move-result-wide v10

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->d(LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;)D

    move-result-wide v8

    sub-double/2addr v4, v8

    cmpl-double v3, v6, v4

    if-lez v3, :cond_0

    const/16 v3, 0xff

    .line 220
    :goto_2
    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0, v1, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v3, v2

    .line 218
    goto :goto_2

    .line 213
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_2
    return-void
.end method
