.class LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/ImageNormalization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/ImageNormalization;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/ImageNormalization;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->a:LCatalano/Imaging/Concurrent/Filters/ImageNormalization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 133
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v4, 0xff

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_4

    move v1, v2

    .line 139
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 141
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    .line 142
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->a:LCatalano/Imaging/Concurrent/Filters/ImageNormalization;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->a(LCatalano/Imaging/Concurrent/Filters/ImageNormalization;)F

    move-result v5

    int-to-float v6, v3

    iget-object v7, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->a:LCatalano/Imaging/Concurrent/Filters/ImageNormalization;

    invoke-static {v7}, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->b(LCatalano/Imaging/Concurrent/Filters/ImageNormalization;)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->a:LCatalano/Imaging/Concurrent/Filters/ImageNormalization;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->c(LCatalano/Imaging/Concurrent/Filters/ImageNormalization;)F

    move-result v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 144
    int-to-float v3, v3

    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->a:LCatalano/Imaging/Concurrent/Filters/ImageNormalization;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->b(LCatalano/Imaging/Concurrent/Filters/ImageNormalization;)F

    move-result v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    .line 145
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->a:LCatalano/Imaging/Concurrent/Filters/ImageNormalization;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->d(LCatalano/Imaging/Concurrent/Filters/ImageNormalization;)F

    move-result v3

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 151
    :goto_2
    if-le v3, v4, :cond_0

    move v3, v4

    .line 152
    :cond_0
    if-gez v3, :cond_1

    move v3, v2

    .line 154
    :cond_1
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v5, v5, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0, v1, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :cond_2
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;->a:LCatalano/Imaging/Concurrent/Filters/ImageNormalization;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->d(LCatalano/Imaging/Concurrent/Filters/ImageNormalization;)F

    move-result v3

    sub-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_2

    .line 138
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_4
    return-void
.end method
