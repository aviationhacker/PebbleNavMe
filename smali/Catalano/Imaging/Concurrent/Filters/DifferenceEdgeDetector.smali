.class public LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;)LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;->a:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 62
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    .line 63
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;->a:LCatalano/Imaging/FastBitmap;

    .line 65
    new-array v10, v9, [Ljava/lang/Thread;

    .line 66
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    div-int/2addr v0, v9

    .line 67
    add-int/lit8 v11, v9, -0x1

    .line 68
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    move v8, v7

    move v2, v3

    .line 71
    :goto_0
    if-ge v8, v9, :cond_0

    .line 72
    if-ne v8, v11, :cond_2

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    .line 73
    :goto_1
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;

    new-instance v0, LCatalano/Imaging/Concurrent/Share;

    add-int v5, v2, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;IIII)V

    invoke-direct {v13, p0, v0}, LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector$a;-><init>(LCatalano/Imaging/Concurrent/Filters/DifferenceEdgeDetector;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v12, v10, v8

    .line 74
    aget-object v0, v10, v8

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    add-int/2addr v2, v6

    .line 71
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v7

    .line 80
    :goto_2
    if-ge v0, v9, :cond_1

    .line 81
    :try_start_0
    aget-object v1, v10, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 87
    :cond_1
    return-void

    :cond_2
    move v6, v0

    goto :goto_1
.end method
