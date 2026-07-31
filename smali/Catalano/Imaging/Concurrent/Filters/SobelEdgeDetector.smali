.class public LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->b:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->c:Z

    .line 76
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->b:I

    return p1
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->a:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->b:I

    return v0
.end method

.method static synthetic c(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->c:Z

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 80
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    .line 81
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->a:LCatalano/Imaging/FastBitmap;

    .line 83
    new-array v10, v9, [Ljava/lang/Thread;

    .line 84
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    div-int/2addr v0, v9

    .line 85
    add-int/lit8 v11, v9, -0x1

    .line 86
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    move v8, v7

    move v2, v3

    .line 89
    :goto_0
    if-ge v8, v9, :cond_0

    .line 90
    if-ne v8, v11, :cond_2

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    .line 91
    :goto_1
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;

    new-instance v0, LCatalano/Imaging/Concurrent/Share;

    add-int v5, v2, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;IIII)V

    invoke-direct {v13, p0, v0}, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector$a;-><init>(LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v12, v10, v8

    .line 92
    aget-object v0, v10, v8

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    add-int/2addr v2, v6

    .line 89
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v7

    .line 98
    :goto_2
    if-ge v0, v9, :cond_1

    .line 99
    :try_start_0
    aget-object v1, v10, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 105
    :cond_1
    return-void

    :cond_2
    move v6, v0

    goto :goto_1
.end method

.method public isScaleIntensity()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->c:Z

    return v0
.end method

.method public setScaleIntensity(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, LCatalano/Imaging/Concurrent/Filters/SobelEdgeDetector;->c:Z

    .line 71
    return-void
.end method
