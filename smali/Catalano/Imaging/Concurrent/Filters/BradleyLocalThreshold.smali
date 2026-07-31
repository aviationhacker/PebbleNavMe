.class public LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:LCatalano/Imaging/Tools/IntegralImage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x29

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->a:I

    .line 37
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->b:F

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x29

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->a:I

    .line 37
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->b:F

    .line 50
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->a:I

    .line 51
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x29

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->a:I

    .line 37
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->b:F

    .line 59
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->a:I

    .line 60
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->a:I

    return v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-static {p1}, LCatalano/Imaging/Tools/IntegralImage;->FromFastBitmap(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/IntegralImage;

    move-result-object v1

    iput-object v1, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->c:LCatalano/Imaging/Tools/IntegralImage;

    .line 103
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 105
    new-array v4, v3, [Ljava/lang/Thread;

    .line 106
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    div-int v5, v1, v3

    move v1, v0

    move v2, v0

    .line 109
    :goto_0
    if-ge v1, v3, :cond_0

    .line 110
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;

    new-instance v8, LCatalano/Imaging/Concurrent/Share;

    add-int v9, v2, v5

    invoke-direct {v8, p1, v2, v9}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;II)V

    invoke-direct {v7, p0, v8}, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold$a;-><init>(LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v6, v4, v1

    .line 111
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 112
    add-int/2addr v2, v5

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    .line 118
    :try_start_0
    aget-object v1, v4, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 124
    :cond_1
    return-void
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;)F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->b:F

    return v0
.end method

.method static synthetic c(LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;)LCatalano/Imaging/Tools/IntegralImage;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->c:LCatalano/Imaging/Tools/IntegralImage;

    return-object v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->a(LCatalano/Imaging/FastBitmap;)V

    .line 97
    return-void
.end method

.method public getPixelBrightnessDifferenceLimit()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->b:F

    return v0
.end method

.method public getWindowSize()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->a:I

    return v0
.end method

.method public setPixelBrightnessDifferenceLimit(F)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->b:F

    .line 92
    return-void
.end method

.method public setWindowSize(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/BradleyLocalThreshold;->a:I

    .line 76
    return-void
.end method
