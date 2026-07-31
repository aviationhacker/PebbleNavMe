.class public LCatalano/Imaging/Concurrent/Filters/Threshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/Threshold$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x80

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/Threshold;->a:I

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x80

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/Threshold;->a:I

    .line 63
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/Threshold;->a:I

    .line 64
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/Threshold;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/Threshold;->a:I

    return v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 81
    new-array v4, v3, [Ljava/lang/Thread;

    .line 82
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    div-int v5, v1, v3

    move v1, v0

    move v2, v0

    .line 85
    :goto_0
    if-ge v1, v3, :cond_0

    .line 86
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, LCatalano/Imaging/Concurrent/Filters/Threshold$a;

    new-instance v8, LCatalano/Imaging/Concurrent/Share;

    add-int v9, v2, v5

    invoke-direct {v8, p1, v2, v9}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;II)V

    invoke-direct {v7, p0, v8}, LCatalano/Imaging/Concurrent/Filters/Threshold$a;-><init>(LCatalano/Imaging/Concurrent/Filters/Threshold;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v6, v4, v1

    .line 87
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 88
    add-int/2addr v2, v5

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    .line 93
    :try_start_0
    aget-object v1, v4, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
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
    .line 69
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/Threshold;->a(LCatalano/Imaging/FastBitmap;)V

    .line 75
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/Threshold;->a:I

    return v0
.end method

.method public setValue(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/Threshold;->a:I

    .line 51
    return-void
.end method
