.class public LCatalano/Imaging/Concurrent/Filters/Desaturation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/Desaturation$a;
    }
.end annotation


# instance fields
.field private a:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation;->a:D

    .line 55
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation;->a:D

    .line 62
    invoke-virtual {p0, p1, p2}, LCatalano/Imaging/Concurrent/Filters/Desaturation;->setSaturationFactor(D)V

    .line 63
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/Desaturation;)D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation;->a:D

    return-wide v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 79
    new-array v4, v3, [Ljava/lang/Thread;

    .line 80
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    div-int v5, v1, v3

    move v1, v0

    move v2, v0

    .line 83
    :goto_0
    if-ge v1, v3, :cond_0

    .line 84
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;

    new-instance v8, LCatalano/Imaging/Concurrent/Share;

    add-int v9, v2, v5

    invoke-direct {v8, p1, v2, v9}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;II)V

    invoke-direct {v7, p0, v8}, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;-><init>(LCatalano/Imaging/Concurrent/Filters/Desaturation;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v6, v4, v1

    .line 85
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 86
    add-int/2addr v2, v5

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    .line 92
    :try_start_0
    aget-object v1, v4, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 98
    :cond_1
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/Desaturation;->a(LCatalano/Imaging/FastBitmap;)V

    .line 74
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Desaturation only works in RGB space color."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSaturationFactor()D
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation;->a:D

    return-wide v0
.end method

.method public setSaturationFactor(D)V
    .locals 5

    .prologue
    .line 49
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation;->a:D

    .line 50
    return-void
.end method
