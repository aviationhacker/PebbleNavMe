.class public LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->a:I

    .line 39
    const/16 v0, 0x64

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    .line 76
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->a:I

    .line 39
    const/16 v0, 0x64

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    .line 84
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->a:I

    .line 85
    iput p2, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    .line 86
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 101
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    .line 103
    new-array v10, v9, [Ljava/lang/Thread;

    .line 104
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    div-int/2addr v0, v9

    .line 105
    add-int/lit8 v11, v9, -0x1

    move v8, v7

    move v2, v3

    .line 108
    :goto_0
    if-ge v8, v9, :cond_0

    .line 109
    if-ne v11, v8, :cond_2

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    .line 110
    :goto_1
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;

    new-instance v0, LCatalano/Imaging/Concurrent/Share;

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    add-int v5, v2, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;IIII)V

    invoke-direct {v13, p0, v0}, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold$a;-><init>(LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v12, v10, v8

    .line 111
    aget-object v0, v10, v8

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    add-int/2addr v2, v6

    .line 108
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v7

    .line 116
    :goto_2
    if-ge v0, v9, :cond_1

    .line 117
    :try_start_0
    aget-object v1, v10, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 123
    :cond_1
    return-void

    :cond_2
    move v6, v0

    goto :goto_1
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->a(LCatalano/Imaging/FastBitmap;)V

    .line 97
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hysteresis Threshold only works with grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHighThreshold()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    return v0
.end method

.method public getLowThreshold()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->a:I

    return v0
.end method

.method public setHighThreshold(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->b:I

    .line 71
    return-void
.end method

.method public setLowThreshold(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/HysteresisThreshold;->a:I

    .line 55
    return-void
.end method
