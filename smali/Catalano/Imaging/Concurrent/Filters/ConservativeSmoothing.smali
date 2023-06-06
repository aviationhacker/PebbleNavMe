.class public LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:LCatalano/Imaging/FastBitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->a:I

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->a:I

    .line 70
    invoke-virtual {p0, p1}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->setRadius(I)V

    .line 71
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->a:I

    return v0
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 75
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b:LCatalano/Imaging/FastBitmap;

    .line 76
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    .line 78
    new-array v6, v5, [Ljava/lang/Thread;

    .line 79
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    div-int v7, v0, v5

    .line 80
    add-int/lit8 v8, v5, -0x1

    move v2, v1

    move v3, v1

    move v0, v1

    .line 84
    :goto_0
    if-ge v2, v5, :cond_1

    .line 85
    if-ne v2, v8, :cond_0

    const/4 v0, 0x1

    .line 86
    :cond_0
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;

    new-instance v11, LCatalano/Imaging/Concurrent/Share;

    add-int v4, v3, v7

    invoke-direct {v11, p1, v3, v4, v0}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;IIZ)V

    invoke-direct {v10, p0, v11}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;-><init>(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v9, v6, v2

    .line 87
    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 84
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    move v0, v1

    .line 92
    :goto_1
    if-ge v0, v5, :cond_2

    .line 93
    :try_start_0
    aget-object v1, v6, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 99
    :cond_2
    return-void
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->a:I

    return v0
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->a:I

    .line 58
    return-void
.end method
