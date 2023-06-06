.class LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 131
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 136
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_3

    .line 137
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->startY:I

    :goto_1
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->endWidth:I

    if-ge v1, v2, :cond_2

    .line 138
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;

    iget v3, v3, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    if-ge v2, v3, :cond_0

    .line 139
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;

    iget v3, v3, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->a:I

    if-ge v2, v3, :cond_1

    .line 141
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v1, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 137
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_1
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v0, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;

    iget v3, v3, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v3, v1, 0x1

    .line 147
    invoke-virtual {v2, v0, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;

    iget v3, v3, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v1, -0x1

    .line 148
    invoke-virtual {v2, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;

    iget v3, v3, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v3, v0, -0x1

    .line 149
    invoke-virtual {v2, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;

    iget v3, v3, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v1, 0x1

    .line 150
    invoke-virtual {v2, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;

    iget v3, v3, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, -0x1

    .line 151
    invoke-virtual {v2, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;

    iget v3, v3, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v3, v0, 0x1

    .line 152
    invoke-virtual {v2, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;

    iget v3, v3, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 153
    invoke-virtual {v2, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->a:LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;

    iget v3, v3, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    if-ge v2, v3, :cond_0

    .line 155
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v1, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    goto/16 :goto_2

    .line 136
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 161
    :cond_3
    return-void
.end method
