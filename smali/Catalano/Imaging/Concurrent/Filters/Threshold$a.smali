.class LCatalano/Imaging/Concurrent/Filters/Threshold$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Threshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Threshold;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Threshold;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Threshold$a;->a:LCatalano/Imaging/Concurrent/Filters/Threshold;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Threshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 106
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Threshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Threshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_2

    move v1, v2

    .line 112
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Threshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 114
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Threshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    .line 115
    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/Threshold$a;->a:LCatalano/Imaging/Concurrent/Filters/Threshold;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/Threshold;->a(LCatalano/Imaging/Concurrent/Filters/Threshold;)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 116
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Threshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 112
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 119
    :cond_0
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Threshold$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    const/16 v4, 0xff

    invoke-virtual {v3, v0, v1, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    goto :goto_2

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_2
    return-void
.end method
