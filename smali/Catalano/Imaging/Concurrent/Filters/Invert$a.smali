.class LCatalano/Imaging/Concurrent/Filters/Invert$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Invert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Invert;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Invert;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->a:LCatalano/Imaging/Concurrent/Filters/Invert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 74
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 79
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_3

    move v1, v6

    .line 81
    :goto_1
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 82
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    rsub-int v2, v2, 0xff

    .line 83
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_2
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v1, v0, :cond_3

    move v2, v6

    .line 89
    :goto_3
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 90
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    rsub-int v3, v0, 0xff

    .line 91
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v0

    rsub-int v4, v0, 0xff

    .line 92
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v0

    rsub-int v5, v0, 0xff

    .line 93
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Invert$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 88
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 97
    :cond_3
    return-void
.end method
